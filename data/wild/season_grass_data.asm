; Seasonal grass encounters -- ONE column per season.
;
; INCLUDEd four times by season_grass.asm, once per season, with SEASON_COLUMN
; selecting which column is emitted. The ROM layout is four separate tables.
;
; SUMMER is the base game. Its column is the sentinel "-, -" and the map is
; simply omitted from SummerGrassWildMons, so the lookup misses and falls
; through to the Johto/Kanto table. The trailing comment shows what that is.
;
; Those comments are checked by utils/check_season_comments.py -- run it after
; touching a base table, or it will quietly start lying.
;
; A map absent from this file entirely uses the base table in every season,
; which is how every cave and indoor map is handled.

	def_season_grass ROUTE_30, ANYSEASON & ~SUMMER
	;          SPRING        SUMMER  AUTUMN        WINTER        ; SUMMER = base
	seasonrate 10,           -,      10,           6             ; 10
	; morn
	seasonmon  3, HOPPIP,    -, -,   5, SENTRET,   4, RATTATA    ; 3, LEDYBA
	seasonmon  3, HOPPIP,    -, -,   6, SENTRET,   5, RATTATA    ; 3, MARILL
	seasonmon  4, LEDYBA,    -, -,   5, PIDGEY,    5, PIDGEY     ; 4, HOPPIP
	seasonmon  4, CATERPIE,  -, -,   5, CATERPIE,  4, SENTRET    ; 4, CATERPIE
	seasonmon  3, WEEDLE,    -, -,   5, WEEDLE,    5, SENTRET    ; 3, WEEDLE
	seasonmon  4, PIDGEY,    -, -,   6, MARILL,    5, PIDGEY     ; 4, PIDGEY
	seasonmon  4, MARILL,    -, -,   6, FURRET,    6, FURRET     ; 4, PIDGEY
	; day
	seasonmon  3, HOPPIP,    -, -,   5, SENTRET,   4, RATTATA    ; 3, LEDYBA
	seasonmon  3, HOPPIP,    -, -,   6, SENTRET,   5, RATTATA    ; 3, MARILL
	seasonmon  4, SKIPLOOM,  -, -,   5, PIDGEY,    5, PIDGEY     ; 4, HOPPIP
	seasonmon  4, CATERPIE,  -, -,   6, SKIPLOOM,  4, SENTRET    ; 4, CATERPIE
	seasonmon  3, WEEDLE,    -, -,   5, WEEDLE,    5, SENTRET    ; 3, WEEDLE
	seasonmon  4, PIDGEY,    -, -,   6, MARILL,    5, PIDGEY     ; 4, PIDGEY
	seasonmon  4, MARILL,    -, -,   6, FURRET,    6, FURRET     ; 4, PIDGEY
	; nite
	seasonmon  3, SPINARAK,  -, -,   5, HOOTHOOT,  5, HOOTHOOT   ; 3, SPINARAK
	seasonmon  3, HOOTHOOT,  -, -,   6, HOOTHOOT,  5, RATTATA    ; 3, HOOTHOOT
	seasonmon  4, POLIWAG,   -, -,   5, RATTATA,   6, HOOTHOOT   ; 4, POLIWAG
	seasonmon  4, RATTATA,   -, -,   6, SENTRET,   5, ZUBAT      ; 4, RATTATA
	seasonmon  3, ZUBAT,     -, -,   5, ZUBAT,     6, ZUBAT      ; 3, ZUBAT
	seasonmon  4, ODDISH,    -, -,   6, ODDISH,    6, NOCTOWL    ; 4, ODDISH
	seasonmon  4, HOPPIP,    -, -,   6, NOCTOWL,   6, NOCTOWL    ; 4, ODDISH
	end_season_grass

	def_season_grass ROUTE_45, ANYSEASON & ~SUMMER
	;          SPRING         SUMMER  AUTUMN          WINTER          ; SUMMER = base
	seasonrate 15,            -,      15,             9               ; 15
	; morn
	seasonmon  31, GEODUDE,   -, -,   35, GRAVELER,   33, SWINUB      ; 33, GRAVELER
	seasonmon  32, GEODUDE,   -, -,   36, GRAVELER,   34, SWINUB      ; 33, GLIGAR
	seasonmon  33, GRAVELER,  -, -,   35, GLIGAR,     34, GRAVELER    ; 34, MAGCARGO
	seasonmon  33, GLIGAR,    -, -,   36, MAGCARGO,   35, PILOSWINE   ; 35, DONPHAN
	seasonmon  31, SKARMORY,  -, -,   33, SKARMORY,   33, SNEASEL     ; 31, SKARMORY
	seasonmon  41, RHYDON,    -, -,   44, RHYDON,     42, GOLEM       ; 42, RHYDON
	seasonmon  42, RHYDON,    -, -,   45, RHYDON,     43, GOLEM       ; 43, RHYDON
	; day
	seasonmon  31, GEODUDE,   -, -,   35, GRAVELER,   33, SWINUB      ; 33, GRAVELER
	seasonmon  32, GEODUDE,   -, -,   36, GRAVELER,   34, SWINUB      ; 33, GLIGAR
	seasonmon  33, GRAVELER,  -, -,   35, GLIGAR,     34, GRAVELER    ; 34, MAGCARGO
	seasonmon  33, GLIGAR,    -, -,   36, MAGCARGO,   35, PILOSWINE   ; 35, DONPHAN
	seasonmon  31, SKARMORY,  -, -,   37, DONPHAN,    33, SNEASEL     ; 31, SKARMORY
	seasonmon  41, RHYDON,    -, -,   44, RHYDON,     42, GOLEM       ; 42, RHYDON
	seasonmon  42, RHYDON,    -, -,   45, RHYDON,     43, GOLEM       ; 43, RHYDON
	; nite
	seasonmon  31, GEODUDE,   -, -,   35, GRAVELER,   33, SWINUB      ; 33, GRAVELER
	seasonmon  33, GRAVELER,  -, -,   36, GRAVELER,   34, SNEASEL     ; 33, GLIGAR
	seasonmon  33, GLIGAR,    -, -,   36, PILOSWINE,  35, SNEASEL     ; 34, PILOSWINE
	seasonmon  35, SKARMORY,  -, -,   37, SKARMORY,   35, PILOSWINE   ; 35, SKARMORY
	seasonmon  37, PRIMEAPE,  -, -,   39, PRIMEAPE,   34, DELIBIRD    ; 37, PRIMEAPE
	seasonmon  41, GOLEM,     -, -,   44, GOLEM,      42, GOLEM       ; 42, GOLEM
	seasonmon  42, GOLEM,     -, -,   45, GOLEM,      43, GOLEM       ; 43, GOLEM
	end_season_grass

