; Seasonal grass encounters.
;
; Only maps that actually change need an entry -- LookUpWildmonsForMapDE returns
; no-carry on a miss and the caller falls through to the Johto/Kanto table.
;
; Encounter rate is a seasonal lever in its own right, not just the roster:
; summer days are busier, winter is sparse. That makes the season felt even where
; the species barely move.

SpringGrassWildMons:

	def_grass_wildmons ROUTE_30
	db 10 percent ; encounter rate
	; morn
	dbw 3, HOPPIP
	dbw 3, HOPPIP
	dbw 4, LEDYBA
	dbw 4, CATERPIE
	dbw 3, WEEDLE
	dbw 4, PIDGEY
	dbw 4, MARILL
	; day
	dbw 3, HOPPIP
	dbw 3, HOPPIP
	dbw 4, SKIPLOOM
	dbw 4, CATERPIE
	dbw 3, WEEDLE
	dbw 4, PIDGEY
	dbw 4, MARILL
	; nite
	dbw 3, SPINARAK
	dbw 3, HOOTHOOT
	dbw 4, POLIWAG
	dbw 4, RATTATA
	dbw 3, ZUBAT
	dbw 4, ODDISH
	dbw 4, HOPPIP
	end_grass_wildmons

	def_grass_wildmons ROUTE_45
	db 15 percent ; encounter rate
	; morn
	dbw 31, GEODUDE
	dbw 32, GEODUDE
	dbw 33, GRAVELER
	dbw 33, GLIGAR
	dbw 31, SKARMORY
	dbw 41, RHYDON
	dbw 42, RHYDON
	; day
	dbw 31, GEODUDE
	dbw 32, GEODUDE
	dbw 33, GRAVELER
	dbw 33, GLIGAR
	dbw 31, SKARMORY
	dbw 41, RHYDON
	dbw 42, RHYDON
	; nite
	dbw 31, GEODUDE
	dbw 33, GRAVELER
	dbw 33, GLIGAR
	dbw 35, SKARMORY
	dbw 37, PRIMEAPE
	dbw 41, GOLEM
	dbw 42, GOLEM
	end_grass_wildmons

	db -1 ; end

SummerGrassWildMons:

	def_grass_wildmons ROUTE_30
	db 12 percent ; encounter rate
	; morn
	dbw 4, LEDYBA
	dbw 4, LEDYBA
	dbw 5, CATERPIE
	dbw 5, WEEDLE
	dbw 4, HOPPIP
	dbw 5, PIDGEY
	dbw 5, MARILL
	; day
	dbw 4, LEDYBA
	dbw 5, LEDYBA
	dbw 6, LEDIAN
	dbw 5, CATERPIE
	dbw 4, WEEDLE
	dbw 5, PIDGEY
	dbw 5, MARILL
	; nite
	dbw 4, SPINARAK
	dbw 5, SPINARAK
	dbw 4, HOOTHOOT
	dbw 5, POLIWAG
	dbw 4, ZUBAT
	dbw 5, ODDISH
	dbw 5, ODDISH
	end_grass_wildmons

	def_grass_wildmons ROUTE_45
	db 15 percent ; encounter rate
	; morn
	dbw 33, GLIGAR
	dbw 34, GLIGAR
	dbw 33, GRAVELER
	dbw 34, MAGCARGO
	dbw 32, SKARMORY
	dbw 42, RHYDON
	dbw 43, RHYDON
	; day
	dbw 33, GLIGAR
	dbw 34, GLIGAR
	dbw 35, GLIGAR
	dbw 34, MAGCARGO
	dbw 35, DONPHAN
	dbw 42, RHYDON
	dbw 43, RHYDON
	; nite
	dbw 33, GLIGAR
	dbw 33, GRAVELER
	dbw 34, MAGCARGO
	dbw 35, SKARMORY
	dbw 37, PRIMEAPE
	dbw 42, GOLEM
	dbw 43, GOLEM
	end_grass_wildmons

	db -1 ; end

AutumnGrassWildMons:

; Levels drift up -- a year's growth before winter.

	def_grass_wildmons ROUTE_30
	db 10 percent ; encounter rate
	; morn
	dbw 5, SENTRET
	dbw 6, SENTRET
	dbw 5, PIDGEY
	dbw 5, CATERPIE
	dbw 5, WEEDLE
	dbw 6, MARILL
	dbw 6, FURRET
	; day
	dbw 5, SENTRET
	dbw 6, SENTRET
	dbw 5, PIDGEY
	dbw 6, SKIPLOOM
	dbw 5, WEEDLE
	dbw 6, MARILL
	dbw 6, FURRET
	; nite
	dbw 5, HOOTHOOT
	dbw 6, HOOTHOOT
	dbw 5, RATTATA
	dbw 6, SENTRET
	dbw 5, ZUBAT
	dbw 6, ODDISH
	dbw 6, NOCTOWL
	end_grass_wildmons

	def_grass_wildmons ROUTE_45
	db 15 percent ; encounter rate
	; morn
	dbw 35, GRAVELER
	dbw 36, GRAVELER
	dbw 35, GLIGAR
	dbw 36, MAGCARGO
	dbw 33, SKARMORY
	dbw 44, RHYDON
	dbw 45, RHYDON
	; day
	dbw 35, GRAVELER
	dbw 36, GRAVELER
	dbw 35, GLIGAR
	dbw 36, MAGCARGO
	dbw 37, DONPHAN
	dbw 44, RHYDON
	dbw 45, RHYDON
	; nite
	dbw 35, GRAVELER
	dbw 36, GRAVELER
	dbw 36, PILOSWINE
	dbw 37, SKARMORY
	dbw 39, PRIMEAPE
	dbw 44, GOLEM
	dbw 45, GOLEM
	end_grass_wildmons

	db -1 ; end

WinterGrassWildMons:

; Sparse, and the reward for being out in a bad season: SNEASEL and SWINUB come
; down the mountain on Route 45 well before they are otherwise available.

	def_grass_wildmons ROUTE_30
	db 6 percent ; encounter rate
	; morn
	dbw 4, RATTATA
	dbw 5, RATTATA
	dbw 5, PIDGEY
	dbw 4, SENTRET
	dbw 5, SENTRET
	dbw 5, PIDGEY
	dbw 6, FURRET
	; day
	dbw 4, RATTATA
	dbw 5, RATTATA
	dbw 5, PIDGEY
	dbw 4, SENTRET
	dbw 5, SENTRET
	dbw 5, PIDGEY
	dbw 6, FURRET
	; nite
	dbw 5, HOOTHOOT
	dbw 5, RATTATA
	dbw 6, HOOTHOOT
	dbw 5, ZUBAT
	dbw 6, ZUBAT
	dbw 6, NOCTOWL
	dbw 6, NOCTOWL
	end_grass_wildmons

	def_grass_wildmons ROUTE_45
	db 9 percent ; encounter rate
	; morn
	dbw 33, SWINUB
	dbw 34, SWINUB
	dbw 34, GRAVELER
	dbw 35, PILOSWINE
	dbw 33, SNEASEL
	dbw 42, GOLEM
	dbw 43, GOLEM
	; day
	dbw 33, SWINUB
	dbw 34, SWINUB
	dbw 34, GRAVELER
	dbw 35, PILOSWINE
	dbw 33, SNEASEL
	dbw 42, GOLEM
	dbw 43, GOLEM
	; nite
	dbw 33, SWINUB
	dbw 34, SNEASEL
	dbw 35, SNEASEL
	dbw 35, PILOSWINE
	dbw 34, DELIBIRD
	dbw 42, GOLEM
	dbw 43, GOLEM
	end_grass_wildmons

	db -1 ; end
