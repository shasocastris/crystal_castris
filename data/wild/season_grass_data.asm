; Seasonal grass encounters -- ONE column per season.
;
; This file is INCLUDEd four times by season_grass.asm, once per season, with
; SEASON_COLUMN selecting which column is emitted. The ROM layout is unchanged:
; four separate tables, exactly as before.
;
; Only maps that actually change need an entry. A map absent here falls through
; to the Johto/Kanto table, which is how every cave and indoor map is handled.

	def_grass_wildmons ROUTE_30
	;          SPRING        SUMMER        AUTUMN        WINTER      
	seasonrate 10,           12,           10,           6
	; morn
	seasonmon  3, HOPPIP,    4, LEDYBA,    5, SENTRET,   4, RATTATA
	seasonmon  3, HOPPIP,    4, LEDYBA,    6, SENTRET,   5, RATTATA
	seasonmon  4, LEDYBA,    5, CATERPIE,  5, PIDGEY,    5, PIDGEY
	seasonmon  4, CATERPIE,  5, WEEDLE,    5, CATERPIE,  4, SENTRET
	seasonmon  3, WEEDLE,    4, HOPPIP,    5, WEEDLE,    5, SENTRET
	seasonmon  4, PIDGEY,    5, PIDGEY,    6, MARILL,    5, PIDGEY
	seasonmon  4, MARILL,    5, MARILL,    6, FURRET,    6, FURRET
	; day
	seasonmon  3, HOPPIP,    4, LEDYBA,    5, SENTRET,   4, RATTATA
	seasonmon  3, HOPPIP,    5, LEDYBA,    6, SENTRET,   5, RATTATA
	seasonmon  4, SKIPLOOM,  6, LEDIAN,    5, PIDGEY,    5, PIDGEY
	seasonmon  4, CATERPIE,  5, CATERPIE,  6, SKIPLOOM,  4, SENTRET
	seasonmon  3, WEEDLE,    4, WEEDLE,    5, WEEDLE,    5, SENTRET
	seasonmon  4, PIDGEY,    5, PIDGEY,    6, MARILL,    5, PIDGEY
	seasonmon  4, MARILL,    5, MARILL,    6, FURRET,    6, FURRET
	; nite
	seasonmon  3, SPINARAK,  4, SPINARAK,  5, HOOTHOOT,  5, HOOTHOOT
	seasonmon  3, HOOTHOOT,  5, SPINARAK,  6, HOOTHOOT,  5, RATTATA
	seasonmon  4, POLIWAG,   4, HOOTHOOT,  5, RATTATA,   6, HOOTHOOT
	seasonmon  4, RATTATA,   5, POLIWAG,   6, SENTRET,   5, ZUBAT
	seasonmon  3, ZUBAT,     4, ZUBAT,     5, ZUBAT,     6, ZUBAT
	seasonmon  4, ODDISH,    5, ODDISH,    6, ODDISH,    6, NOCTOWL
	seasonmon  4, HOPPIP,    5, ODDISH,    6, NOCTOWL,   6, NOCTOWL
	end_grass_wildmons

	def_grass_wildmons ROUTE_45
	;          SPRING         SUMMER         AUTUMN          WINTER        
	seasonrate 15,            15,            15,             9
	; morn
	seasonmon  31, GEODUDE,   33, GLIGAR,    35, GRAVELER,   33, SWINUB
	seasonmon  32, GEODUDE,   34, GLIGAR,    36, GRAVELER,   34, SWINUB
	seasonmon  33, GRAVELER,  33, GRAVELER,  35, GLIGAR,     34, GRAVELER
	seasonmon  33, GLIGAR,    34, MAGCARGO,  36, MAGCARGO,   35, PILOSWINE
	seasonmon  31, SKARMORY,  32, SKARMORY,  33, SKARMORY,   33, SNEASEL
	seasonmon  41, RHYDON,    42, RHYDON,    44, RHYDON,     42, GOLEM
	seasonmon  42, RHYDON,    43, RHYDON,    45, RHYDON,     43, GOLEM
	; day
	seasonmon  31, GEODUDE,   33, GLIGAR,    35, GRAVELER,   33, SWINUB
	seasonmon  32, GEODUDE,   34, GLIGAR,    36, GRAVELER,   34, SWINUB
	seasonmon  33, GRAVELER,  35, GLIGAR,    35, GLIGAR,     34, GRAVELER
	seasonmon  33, GLIGAR,    34, MAGCARGO,  36, MAGCARGO,   35, PILOSWINE
	seasonmon  31, SKARMORY,  35, DONPHAN,   37, DONPHAN,    33, SNEASEL
	seasonmon  41, RHYDON,    42, RHYDON,    44, RHYDON,     42, GOLEM
	seasonmon  42, RHYDON,    43, RHYDON,    45, RHYDON,     43, GOLEM
	; nite
	seasonmon  31, GEODUDE,   33, GLIGAR,    35, GRAVELER,   33, SWINUB
	seasonmon  33, GRAVELER,  33, GRAVELER,  36, GRAVELER,   34, SNEASEL
	seasonmon  33, GLIGAR,    34, MAGCARGO,  36, PILOSWINE,  35, SNEASEL
	seasonmon  35, SKARMORY,  35, SKARMORY,  37, SKARMORY,   35, PILOSWINE
	seasonmon  37, PRIMEAPE,  37, PRIMEAPE,  39, PRIMEAPE,   34, DELIBIRD
	seasonmon  41, GOLEM,     42, GOLEM,     44, GOLEM,      42, GOLEM
	seasonmon  42, GOLEM,     43, GOLEM,     45, GOLEM,      43, GOLEM
	end_grass_wildmons

