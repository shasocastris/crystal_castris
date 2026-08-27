SECTION "Trainer Backpics", ROMX

ChrisBackpic::
INCBIN "gfx/player/chris_back.2bpp.lz"


SECTION "Shrink Pics", ROMX

Shrink1Pic::
INCBIN "gfx/new_game/shrink1.2bpp.lz"
Shrink2Pic::
INCBIN "gfx/new_game/shrink2.2bpp.lz"


SECTION "The End", ROMX

TheEndGFX::
INCBIN "gfx/credits/theend.2bpp"


SECTION "Font Inversed", ROMX

INCBIN "gfx/font/font_inversed.1bpp"


SECTION "Copyright", ROMX

CopyrightGFX::
INCBIN "gfx/splash/copyright.2bpp"


SECTION "Intro Logo", ROMX

GameFreakDittoGFX::
INCBIN "gfx/splash/ditto.2bpp.lz"


SECTION "Unown Font", ROMX

UnownFont::
INCBIN "gfx/font/unown_font.2bpp"


SECTION "Pokégear GFX", ROMX

; Moved out of bank $3E, which had 83 bytes free -- nowhere near enough for a
; town map tileset grown from 48 to 80 tiles.
TownMapGFX::
INCBIN "gfx/pokegear/town_map.2bpp.lz"

PokegearGFX::
INCBIN "gfx/pokegear/pokegear.2bpp.lz"


SECTION "Bill's PC Graphics", ROMX

BillsPC_TileGFX::   INCBIN "gfx/pc/pc.2bpp.lz"
BillsPC_ObjGFX::    INCBIN "gfx/pc/obj.2bpp.lz"
BillsPC_CursorGFX:: INCBIN "gfx/pc/cursor.2bpp"


SECTION "Overworld Weather Graphics", ROMX

; Uncompressed: LoadWeatherGraphics is a plain Get2bpp copy that runs mid-map,
; where there is no decompression buffer to spare.
RainGFX::          INCBIN "gfx/overworld/rain_splash.2bpp"
SnowGFX::          INCBIN "gfx/overworld/snow.2bpp"
SandGFX::          INCBIN "gfx/overworld/sand.2bpp"
CherryBlossomGFX:: INCBIN "gfx/overworld/cherry_blossom.2bpp"
