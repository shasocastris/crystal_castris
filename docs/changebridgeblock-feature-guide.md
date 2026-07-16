# Porting the `changebridgeblock` bridge feature (pokecrystal-family disassembly)

This document is a self-contained context file for reproducing the **walk-over / walk-under
bridge** feature from Polished Crystal in another pokecrystal-based disassembly (e.g. a fresh
`pokecrystal` fork or another romhack).

It describes what the feature does, every engine/macro/WRAM dependency it relies on, and the
exact map-level pattern to replicate. Source references are to Polished Crystal; adapt paths to
the target repo (the two codebases share the same layout and naming conventions).

---

## 1. What the feature does

A "bridge" is an overworld structure the player can traverse **on top of** (overhead) or
**underneath** (underfoot). Because the Game Boy overworld has no sprite-vs-map depth sorting,
the illusion is produced by **swapping the map's metatile blocks** at runtime:

- When the player steps onto the bridge from a top-side approach, the bridge blocks are swapped
  to their *overhead* variants (bridge drawn under the player) and the map enters the
  **overhead scene**.
- When the player approaches from underneath, the blocks are swapped to their *underfoot*
  variants (bridge drawn over the player) and the map enters the **underfoot scene**.

Two supporting mechanisms make this work:

1. A tiny asm macro, **`changebridgeblock`**, that pokes a single metatile block ID directly
   into the live overworld block buffer (`wOverworldMapBlocks`).
2. The existing **scene** system (per-map `wXxxSceneID`) used to remember which state the bridge
   is in, so the correct blocks are redrawn whenever the map is (re)loaded, and so the correct
   set of coordinate-event triggers is active.

The player-position triggers are ordinary **`coord_event`s** whose `scene_id` field gates them:
overhead triggers are active only while in the underfoot scene and vice-versa, so stepping across
the boundary always fires the trigger that flips the state.

---

## 2. The macro (the actual "feature")

`macros/code.asm`:

```
MACRO changebridgeblock
	; lb de, \1 + 4, \2 + 4
	; call GetBlockLocation
	ld hl, wOverworldMapBlocks + (\2 / 2 + 3) * (\4_WIDTH + 6) + \1 / 2 + 3
	; hard-coding the above calculation for efficiency
	ld [hl], \3
ENDM
```

Parameters: `changebridgeblock x, y, block, MAP_CONSTANT`

- `\1 = x`, `\2 = y` — tile coordinates, **the same coordinate space `coord_event` uses**
  (0-based logical map tiles). They must be even for a block boundary; the macro divides by 2 to
  convert tiles→blocks.
- `\3 = block` — the metatile block ID (`$00`–`$ff`) to write into the map buffer at that spot.
- `\4 = MAP_CONSTANT` — the map's constant name (e.g. `ROUTE_47`), used only to reference the
  generated `\4_WIDTH` symbol.

**Why the hard-coded math:** it is an inlined, constant-folded equivalent of
`lb de, x+4, y+4` / `call GetBlockLocation`. `wOverworldMapBlocks` is a `(WIDTH+6) × (HEIGHT+6)`
grid (a 3-block border pads every side), so the byte offset of block `(x/2, y/2)` is
`(y/2 + 3) * (WIDTH + 6) + (x/2 + 3)`. Because every operand is a constant at assembly time, the
whole expression collapses to a single immediate `ld hl, ...`, which is why it is preferred over
the general `GetBlockLocation` call inside these hot per-tile loops.

This macro is the entire portable "feature." Everything else below is the surrounding
infrastructure it needs and the map-authoring pattern that uses it.

---

## 3. Dependencies to verify/port

All of these already exist in stock pokecrystal, but confirm they are present (and named the
same) in the target repo. The macro and pattern will not assemble/run without them.

### 3.1 Generated map-width symbol `\1_WIDTH`
`constants/map_constants.asm`, the `map_const` macro:

```
MACRO map_const
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH  EQU \2
	DEF \1_HEIGHT EQU \3
ENDM
```

Every map declared with `map_const NAME, width, height` gets a `NAME_WIDTH` symbol. The
`changebridgeblock` macro depends on this. Stock pokecrystal already defines `_WIDTH`/`_HEIGHT`
this way, so no change is normally needed.

### 3.2 The overworld block buffer
`ram/wram0.asm`: `wOverworldMapBlocks:: ds 1326` — the live, border-padded copy of the current
map's metatiles that the renderer reads from. `changebridgeblock` writes directly into it.

### 3.3 `BufferScreen`
`home/map.asm` (`BufferScreen::`). After changing blocks in `wOverworldMapBlocks`, the visible
screen cache (`wScreenSave`) must be refreshed or the swap won't appear until the next full
redraw. Every `..._OverheadBridgeAsm` / `..._UnderfootBridgeAsm` routine ends with
`jmp BufferScreen`. Present unchanged in stock pokecrystal.

### 3.4 `GenericFinishBridge`
`home/map.asm` (`GenericFinishBridge::`). After a live swap triggered by walking (not just a map
load), the player's movement-permission bits must be recomputed for the new tile the player is
standing on — otherwise collision is stale. `GenericFinishBridge` sets `wOverworldDelaySkip` and
falls through into `GetMovementPermissions`. The trigger routines end with `jmp GenericFinishBridge`.

> Note: stock pokecrystal already contains `GetMovementPermissions`. If `GenericFinishBridge`
> itself is missing in the target, add this small wrapper immediately above `GetMovementPermissions`:
> ```
> GenericFinishBridge::
> 	ld a, 1
> 	ld [wOverworldDelaySkip], a
> 	; fallthrough
> GetMovementPermissions::
> ```
> (`wOverworldDelaySkip` exists in stock pokecrystal.)

### 3.5 `wWalkingOnBridge` (optional)
`ram/wramx.asm`: `wWalkingOnBridge:: db`. In Polished Crystal this byte is **written but never
read** — it is effectively vestigial. You may keep the `ld [wWalkingOnBridge], a` lines for
parity, or drop them and the WRAM byte entirely with no behavioral change. It is *not* required
for the feature.

### 3.6 Scene system (already in stock pokecrystal)
- Per-map scene variable, e.g. `ram/wramx.asm`: `wRoute47SceneID:: db`.
- Registered in `data/maps/scenes.asm` via `scene_var MAP_NAME, wMapNameSceneID`.
- `coord_event`'s first stored byte is its `scene_id` (`macros/scripts/maps.asm`):
  ```
  MACRO coord_event
  	db \3 ; scene_id
  	db \2 ; y
  	db \1 ; x
  	dw \4 ; script
  ENDM
  ```
- The engine (`home/map.asm`, `CheckCurrentMapCoordEvents` → `.CoordEventCheck`) only fires a
  coord event whose `scene_id` equals the current active scene **or** is `-1` (always). This is
  the gate that makes overhead/underfoot triggers mutually exclusive.
- `checkscene` / `iftruefwd` script commands read the current scene in the tile callback.

### 3.7 Script macros used by the pattern
`callasm`, `changeblock` (unrelated script command — do not confuse with the macro),
`MAPCALLBACK_TILES`, and especially `callthisasm` (`macros/scripts/events.asm`):

```
MACRO callthisasm
	callasm .thisasm\@
	end
.thisasm\@
ENDM
```

`callthisasm` lets a script hand control to inline asm that then continues the enclosing routine.
All standard in pokecrystal.

---

## 4. The map-authoring pattern

Use **`maps/Route24.asm`** or **`maps/RuggedRoadSouth.asm`** as the canonical single-bridge
templates. `maps/Route47.asm` shows multiple bridges on one map (with `_FinishOverheadBridge` /
`_FinishUnderfootBridge` fallthrough helpers) if you need that.

Before the four concrete parts, understand the control flow they implement.

### Two paths, one shared state

The bridge is a single state machine whose only persistent variable is the map's scene
(`wXxxSceneID`: `0` = overhead, `1` = underfoot). Two independent code paths touch the same
`changebridgeblock` block lists, and it is important not to read them as redundant — they run at
different times and do different amounts of work:

- **Writer path — the coord_event triggers (§4.2, §4.4).** Fire in real time as the player
  physically steps across the overhead/underfoot boundary. They swap the blocks **and** write the
  new scene (`ld [wXxxSceneID], a`) **and** recompute the player's collision for the tile just
  stepped onto (`jmp GenericFinishBridge`). This is the only path that *changes* the state.
- **Restore path — the tile callback (§4.1, §4.3).** Runs on every map setup (warping in, walking
  in from a connection, returning from a battle/menu). On those events `wOverworldMapBlocks` is
  rebuilt from the map's *default* block data, wiping any live swap, so this path *reads* the
  persisted scene (`checkscene`) and simply repaints the bridge to match. It does **not** write
  the scene and does **not** rerun collision — it only paints (`jmp BufferScreen`).

Neither path alone is sufficient: the triggers only fire on a specific step (so they can't fix a
map that was just reloaded in the middle of the bridge), and the callback only runs at map setup
(so it can't react to the player walking across the boundary). The scene is the handoff between
them: the writer path sets it, the restore path honors it.

A complete single-bridge map has four parts, mapped to those two paths below.

### 4.1 Register the tile callback — *restore path* (map script header)
```
Route24_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route24TileScript
	...
```

### 4.2 Place the gated coord-event triggers — *writer path, part 1*
Overhead triggers use `scene_id = 1` (fire while underfoot); underfoot triggers use
`scene_id = 0` (fire while overhead). Put them on the boundary tiles the player crosses:
```
	def_coord_events
	coord_event 19, 15, 1, Route24BridgeOverheadTrigger   ; scene_id 1 -> active when underfoot
	coord_event 20, 15, 0, Route24BridgeUnderfootTrigger  ; scene_id 0 -> active when overhead
	...
```

### 4.3 Tile callback body — *restore path*: repaint from the persisted scene
```
Route24TileScript:
	checkscene
	iftruefwd .underfoot        ; scene 1 => underfoot
	callasm Route24_OverheadBridgeAsm
	endcallback

.underfoot:
	callasm Route24_UnderfootBridgeAsm
	endcallback
```

### 4.4 The two block-swap routines + the two triggers — *writer path, part 2*

The `..._BridgeAsm` routines are shared by both paths (the callback `callasm`s them to *paint*;
the triggers `callasm` them to *swap*). What makes these trigger routines the writer path is the
tail — `ld [wXxxSceneID], a` (persist state) and `jmp GenericFinishBridge` (recompute collision) —
which the callback deliberately omits.
```
Route24_OverheadBridgeAsm:
	changebridgeblock 20, 16, $ee, ROUTE_24
	changebridgeblock 20, 18, $ec, ROUTE_24
	...
	changebridgeblock 20, 38, $ed, ROUTE_24
	jmp BufferScreen

Route24_UnderfootBridgeAsm:
	changebridgeblock 20, 16, $d2, ROUTE_24
	...
	changebridgeblock 20, 38, $b1, ROUTE_24
	jmp BufferScreen

Route24BridgeOverheadTrigger:
	callasm Route24_OverheadBridgeAsm
	callthisasm
	xor a                       ; a = 0 -> overhead scene
	jr Route24_FinishBridge

Route24BridgeUnderfootTrigger:
	callasm Route24_UnderfootBridgeAsm
	callthisasm
	ld a, $1                    ; a = 1 -> underfoot scene
Route24_FinishBridge:
	ld [wWalkingOnBridge], a    ; optional / vestigial
	ld [wRoute24SceneID], a     ; setscene a  -- remember state
	jmp GenericFinishBridge     ; recompute movement permissions
```

**Convention recap** (must stay consistent):
| State      | scene value | set by            | coord_event scene_id that fires |
|------------|-------------|-------------------|---------------------------------|
| Overhead   | `0`         | `xor a`           | `0` (the Underfoot triggers)    |
| Underfoot  | `1`         | `ld a, $1`        | `1` (the Overhead triggers)     |

The two block lists are the same tiles with different metatile IDs: the *overhead* IDs draw the
bridge deck below the player; the *underfoot* IDs draw the bridge railings/deck above the player.

---

## 5. Art / data you must supply per target repo

The `$xx` values are **tileset-specific metatile block IDs**, not portable constants. To port a
bridge you need, in the target map's tileset:

1. A set of **overhead** bridge metatiles (deck the player walks on; collision = walkable floor).
2. A matching set of **underfoot** bridge metatiles (same footprint, drawn as an overpass with
   the walkable path *below/through*; collision must let the player pass under).

Pick the block IDs from the target tileset's metatile list and substitute them for the `$xx`
values in the two `..._BridgeAsm` routines. The overhead/underfoot lists must cover exactly the
same `(x, y)` tiles, in the same order, differing only in block ID. If the target tileset has no
bridge metatiles yet, they must be authored first (blocks + collision + the underlying tiles/GFX)
— that art work is outside the scope of the `changebridgeblock` mechanism itself.

---

## 6. Porting checklist

1. [ ] Copy the `changebridgeblock` macro into the target's `macros/code.asm`.
2. [ ] Confirm `map_const` generates `NAME_WIDTH` (stock: yes).
3. [ ] Confirm `wOverworldMapBlocks`, `BufferScreen`, `GetBlockLocation` exist (stock: yes).
4. [ ] Confirm/add `GenericFinishBridge` above `GetMovementPermissions` in `home/map.asm`.
5. [ ] (Optional) Add `wWalkingOnBridge:: db` to `ram/wramx.asm`, or omit and drop the writes.
6. [ ] Ensure the bridge map has a `wXxxSceneID` and a `scene_var` entry in `data/maps/scenes.asm`.
7. [ ] Author overhead + underfoot bridge metatiles in the map's tileset; note their block IDs.
8. [ ] In the map file, add: `MAPCALLBACK_TILES` callback, gated `coord_event`s, the
       `TileScript` scene branch, the two `..._BridgeAsm` routines (ending `jmp BufferScreen`),
       and the two trigger routines (ending `jmp GenericFinishBridge`), following §4.
9. [ ] Build and test: walk on from the top (should render over the bridge) and from the
       bottom (should render under it); leave and re-enter the map to confirm the scene persists
       the correct block set.

---

## 7. Reference file map (Polished Crystal)

| Concern                         | File / symbol |
|---------------------------------|---------------|
| The macro                       | `macros/code.asm` → `changebridgeblock` |
| Block buffer                    | `ram/wram0.asm` → `wOverworldMapBlocks` |
| Screen refresh                  | `home/map.asm` → `BufferScreen` |
| Movement perms after swap       | `home/map.asm` → `GenericFinishBridge` / `GetMovementPermissions` |
| General block lookup (inlined)  | `home/map.asm` → `GetBlockLocation` |
| Width symbol generator          | `constants/map_constants.asm` → `map_const` |
| Coord-event scene gating        | `home/map.asm` → `CheckCurrentMapCoordEvents`; `macros/scripts/maps.asm` → `coord_event` |
| Scene variable registry         | `data/maps/scenes.asm`; `ram/wramx.asm` → `wXxxSceneID` |
| Inline-asm-from-script helper   | `macros/scripts/events.asm` → `callthisasm` |
| Simple single-bridge examples   | `maps/Route24.asm`, `maps/RuggedRoadSouth.asm` |
| Multi-bridge example            | `maps/Route47.asm` |
| Cave variant                    | `maps/CeruleanCave1F.asm`, `maps/YellowForest.asm`, `maps/RuggedRoadNorth.asm` |
