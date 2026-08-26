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

FontInversed::
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
