; Overworld weather particles (M4). Phase 1: graphics only -- the particle
; engine, spawners and OAM arbitration land in Phase 2.

; Two OB tiles, taken from the top of the map-object sprite arena.
;
; GetSpriteVTile allocates 12 tiles per object struct, so structs 0-7 fill
; exactly $00-$5f of VRAM bank 0 and nothing below FIRST_VRAM1_OBJECT_STRUCT
; can reach past it. Deriving the base from that expression rather than a
; literal keeps the reservation correct if the struct split ever changes.
DEF WEATHER_TILE_1 EQU FIRST_VRAM1_OBJECT_STRUCT * 12
DEF WEATHER_TILE_2 EQU WEATHER_TILE_1 + 1

DEF RAINDROP_TILE   EQU WEATHER_TILE_1
DEF RAINSPLASH_TILE EQU WEATHER_TILE_2
DEF SNOWFLAKE_TILE  EQU WEATHER_TILE_1
DEF SANDSTORM_TILE  EQU WEATHER_TILE_1
DEF CHERRYLEAF_TILE EQU WEATHER_TILE_1

; SpawnRandomWeatherCoords.rain derives the tile id branchlessly from this
; adjacency, so the two must stay consecutive.
	assert RAINDROP_TILE + 1 == RAINSPLASH_TILE, \
		"the raindrop and splash tiles must be adjacent"
; The arena above is only free because the object structs stop short of it.
	assert WEATHER_TILE_2 < $80, \
		"the weather tiles must fit in the vTiles0 object arena"

LoadWeatherGraphics::
	ld a, [wCurWeather]
	assert OW_WEATHER_NONE == 0
	and a
	ret z ; no weather, nothing to load

	; hl = WeatherGraphics + 3 * (wCurWeather - 1)
	ld hl, WeatherGraphics - 3
	ld d, 0
	ld e, a
	add hl, de
	add hl, de
	add hl, de

	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a ; de = gfx pointer
	ld c, [hl] ; c = tile count
	ld b, BANK("Overworld Weather Graphics")
	ld hl, vTiles0 tile WEATHER_TILE_1
	; Get2bpp defers to Request2bpp while the LCD is on, so this is safe mid-map.
	jmp Get2bpp

INCLUDE "data/sprites/weather.asm"
