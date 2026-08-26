#!/usr/bin/env python3
"""Convert a Town Map page PNG into its .bin tilemap, allocating new tiles.

    python3 utils/townmap_png.py docs/townmap/orange.png            # report only
    python3 utils/townmap_png.py docs/townmap/orange.png --write    # apply

The art is a 160x144 RGB PNG using the real Town Map palette colours (see
docs/orange_town_map_art_spec.md). Every 8x8 cell becomes one byte of the
tilemap. A cell whose pixels match an existing tile reuses its id; anything new
is appended to gfx/pokegear/town_map.png and given a palette row.

Palette is assigned PER TILE ID, not per screen position, so two cells that look
identical but want different colours are two different tiles. That is why this
tool matches on (pixel pattern, palette) rather than pixels alone.
"""

import argparse
import re
import sys

from PIL import Image

PAL_FILE = "gfx/pokegear/pokegear.pal"
TILESET = "gfx/pokegear/town_map.png"
PALMAP = "gfx/pokegear/town_map_palette_map.asm"
PAL_NAMES = ["BORDER", "EARTH", "MOUNTAIN", "CITY", "POI", "POI_MTN"]
SHADES = [255, 170, 85, 0]  # colour index 0..3 as written in town_map.png
FIRST_POKEGEAR_TILE = 0x50  # PokegearGFX starts here; the town map owns $00-$4f


def load_palettes():
    """The six Town Map palettes, as lists of four (r, g, b)."""
    nums = [
        tuple(int(v) for v in m.groups())
        for m in re.finditer(r"RGB\s+(\d+),\s*(\d+),\s*(\d+)", open(PAL_FILE).read())
    ]
    def to8(c):
        return tuple(round(v * 255 / 31) for v in c)
    return [[to8(c) for c in nums[i * 4:i * 4 + 4]] for i in range(len(PAL_NAMES))]


def load_palette_map():
    """Existing per-tile palette assignments, in tile order."""
    out = []
    for line in open(PALMAP):
        m = re.match(r"\s*townmappals\s+(.*)", line)
        if m:
            out += [n.strip() for n in m.group(1).split(",")]
    return out


def tiles_of(im, cols, rows):
    px = im.load()
    for ty in range(rows):
        for tx in range(cols):
            yield tx, ty, [[px[tx * 8 + x, ty * 8 + y] for x in range(8)] for y in range(8)]


def classify(cell, palettes):
    """Return (candidate palette indices, 8x8 grid of colour indices) for a cell.

    A cell using only colours common to several palettes -- cream and black, say
    -- is genuinely ambiguous, and every candidate renders identically. Returning
    all of them lets the caller prefer an existing tile over burning a new slot.
    The grid is the same whichever candidate wins, because the shared colours sit
    at the same index in each palette.
    """
    used = {p for row in cell for p in row}
    cands = [pi for pi, pal in enumerate(palettes) if used <= set(pal)]
    if not cands:
        return [], sorted(used)
    pal = palettes[cands[0]]
    return cands, [[pal.index(p) for p in row] for row in cell]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("art")
    ap.add_argument("out", nargs="?", default="gfx/pokegear/orange.bin")
    ap.add_argument("--write", action="store_true",
                    help="apply changes; without it, only report")
    args = ap.parse_args()

    palettes = load_palettes()
    palmap = load_palette_map()

    ts = Image.open(TILESET).convert("L")
    ts_cols, ts_rows = ts.size[0] // 8, ts.size[1] // 8
    capacity = ts_cols * ts_rows
    existing = {}
    for tx, ty, cell in tiles_of(ts, ts_cols, ts_rows):
        tid = ty * ts_cols + tx
        key = (tuple(tuple(SHADES.index(v) for v in row) for row in cell),
               palmap[tid] if tid < len(palmap) else None)
        existing.setdefault(key, tid)

    art = Image.open(args.art).convert("RGB")
    if art.size != (160, 144):
        sys.exit(f"{args.art}: expected 160x144, got {art.size[0]}x{art.size[1]}")

    # highest id actually used by existing art, so we append after it
    next_id = max(
        [tid for tid in existing.values()] + [-1]
    ) + 1
    next_id = max(next_id, 0)

    tilemap, new_tiles, errors = [], [], []
    for tx, ty, cell in tiles_of(art, 20, 18):
        cands, grid = classify(cell, palettes)
        if not cands:
            errors.append((tx, ty, grid))
            tilemap.append(0)
            continue
        pattern = tuple(tuple(r) for r in grid)
        hit = next((existing[(pattern, PAL_NAMES[pi])]
                    for pi in cands if (pattern, PAL_NAMES[pi]) in existing), None)
        if hit is not None:
            tilemap.append(hit)
        else:
            pi = cands[0]
            if next_id >= FIRST_POKEGEAR_TILE:
                errors.append((tx, ty, "out of tile slots"))
                tilemap.append(0)
                continue
            existing[(pattern, PAL_NAMES[pi])] = next_id
            new_tiles.append((next_id, grid, PAL_NAMES[pi]))
            tilemap.append(next_id)
            next_id += 1

    if errors:
        print(f"{len(errors)} problem cell(s):")
        for tx, ty, info in errors[:10]:
            if info == "out of tile slots":
                print(f"  ({tx},{ty}): no free tile ids left")
            else:
                print(f"  ({tx},{ty}): colours match no single palette: {info}")
        sys.exit(1)

    free = FIRST_POKEGEAR_TILE - next_id
    print(f"{args.art}: {len(new_tiles)} new tile(s); "
          f"next free id ${next_id:02x}, {free} slot(s) left before PokegearGFX")
    for tid, _, pal in new_tiles:
        print(f"    ${tid:02x}  {pal}")

    if not args.write:
        print("\n(report only -- pass --write to apply)")
        return

    if next_id > capacity:
        sys.exit(f"{TILESET} holds {capacity} tiles; need {next_id}. Grow the PNG first.")

    for tid, grid, _ in new_tiles:
        ox, oy = (tid % ts_cols) * 8, (tid // ts_cols) * 8
        for y in range(8):
            for x in range(8):
                ts.putpixel((ox + x, oy + y), SHADES[grid[y][x]])
    ts.save(TILESET)

    for tid, _, pal in new_tiles:
        while len(palmap) <= tid:
            palmap.append("EARTH")
        palmap[tid] = pal
    src = open(PALMAP).read()
    rows = "".join(
        "\ttownmappals " + ", ".join(f"{n:<8}" for n in palmap[i:i + 8]).rstrip() + "\n"
        for i in range(0, len(palmap), 8)
    )
    head = src[:src.index("; gfx/pokegear/town_map.png")]
    open(PALMAP, "w").write(head + "; gfx/pokegear/town_map.png (rows past $2f written by utils/townmap_png.py)\n" + rows)

    with open(args.out, "wb") as f:
        f.write(bytes(tilemap) + b"\xff")
    print(f"wrote {args.out} ({len(tilemap) + 1} bytes), "
          f"{TILESET} and {PALMAP} updated")


if __name__ == "__main__":
    main()
