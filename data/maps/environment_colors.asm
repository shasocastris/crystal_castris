EnvironmentColorsPointers:
; entries correspond to environment constants (see constants/map_data_constants.asm)
	table_width 2
	dw .OutdoorColors ; unused
	dw .OutdoorColors ; TOWN
	dw .OutdoorColors ; ROUTE
	dw .IndoorColors  ; INDOOR
	dw .DungeonColors ; CAVE
	dw .Env5Colors    ; ENVIRONMENT_5
	dw .IndoorColors  ; GATE
	dw .DungeonColors ; DUNGEON
	assert_table_length NUM_ENVIRONMENTS + 1

; Valid indices: $00 - $37 (see gfx/tilesets/bg_tiles.pal)
;
; OUTDOOR ONLY: four blocks of four rows, one block per season, in SPRING,
; SUMMER, AUTUMN, WINTER order. LoadMapPals adds season * 32 before the
; time-of-day offset, and only for TOWN and ROUTE -- indoor, cave and dungeon
; palettes have no season axis, which is also why they are still four rows.
;
; Only the GREEN slot differs between seasons. Everything else in a row is the
; summer value: BROWN and YELLOW measured identical in both reference hacks,
; and ROOF is overwritten from RoofPals further down anyway.
.OutdoorColors:
; spring
	db $00, $01, $2c, $28, $04, $05, $06, $07 ; morn
	db $08, $09, $2d, $29, $0c, $0d, $0e, $0f ; day
	db $10, $11, $2e, $2a, $14, $15, $16, $17 ; nite
	db $18, $19, $2f, $2b, $1c, $1d, $1e, $1f ; eve
; summer -- the base game
	db $00, $01, $02, $28, $04, $05, $06, $07 ; morn
	db $08, $09, $0a, $29, $0c, $0d, $0e, $0f ; day
	db $10, $11, $12, $2a, $14, $15, $16, $17 ; nite
	db $18, $19, $1a, $2b, $1c, $1d, $1e, $1f ; eve
; autumn
	db $00, $01, $30, $28, $04, $05, $06, $07 ; morn
	db $08, $09, $31, $29, $0c, $0d, $0e, $0f ; day
	db $10, $11, $32, $2a, $14, $15, $16, $17 ; nite
	db $18, $19, $33, $2b, $1c, $1d, $1e, $1f ; eve
; winter
	db $00, $01, $34, $28, $04, $05, $06, $07 ; morn
	db $08, $09, $35, $29, $0c, $0d, $0e, $0f ; day
	db $10, $11, $36, $2a, $14, $15, $16, $17 ; nite
	db $18, $19, $37, $2b, $1c, $1d, $1e, $1f ; eve

.IndoorColors:
	db $20, $21, $22, $23, $24, $25, $26, $07 ; morn
	db $20, $21, $22, $23, $24, $25, $26, $07 ; day
	db $10, $11, $12, $13, $14, $15, $16, $07 ; nite
	db $18, $19, $1a, $1b, $1c, $1d, $1e, $07 ; eve

.DungeonColors:
	db $00, $01, $02, $03, $04, $05, $06, $07 ; morn
	db $08, $09, $0a, $0b, $0c, $0d, $0e, $0f ; day
	db $10, $11, $12, $13, $14, $15, $16, $17 ; nite
	db $18, $19, $1a, $1b, $1c, $1d, $1e, $1f ; eve

.Env5Colors:
	db $00, $01, $02, $03, $04, $05, $06, $07 ; morn
	db $08, $09, $0a, $0b, $0c, $0d, $0e, $0f ; day
	db $10, $11, $12, $13, $14, $15, $16, $17 ; nite
	db $18, $19, $1a, $1b, $1c, $1d, $1e, $1f ; eve
