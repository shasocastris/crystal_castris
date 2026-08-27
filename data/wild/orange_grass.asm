; Orange Islands Pokémon in grass
;
; Shamouti Cave is here rather than in water despite having no grass tiles:
; land encounters in caves run off the grass table on ordinary floor, the same
; way Union Cave and Ice Path do.
;
; No seasonal variants by design (M3: tropical) -- these base entries are the
; whole story, and no orange column exists in season_grass_data.

OrangeGrassWildMons:

	def_grass_wildmons SHAMOUTI_ISLAND
	db 10 percent ; encounter rate
	; morn
	dbw 22, PIDGEY
	dbw 22, ODDISH
	dbw 24, PIKACHU
	dbw 24, EXEGGCUTE
	dbw 26, TANGELA
	dbw 26, PIKACHU
	dbw 28, EXEGGCUTE
	; day
	dbw 22, PIDGEY
	dbw 22, ODDISH
	dbw 24, PIKACHU
	dbw 24, EXEGGCUTE
	dbw 26, TANGELA
	dbw 26, PIKACHU
	dbw 28, EXEGGCUTE
	; nite
	dbw 22, SPEAROW
	dbw 22, ODDISH
	dbw 24, PIKACHU
	dbw 24, ZUBAT
	dbw 26, TANGELA
	dbw 26, PIKACHU
	dbw 28, ODDISH
	end_grass_wildmons

	def_grass_wildmons SHAMOUTI_CAVE
	db 10 percent ; encounter rate
	; morn
	dbw 28, ZUBAT
	dbw 28, GEODUDE
	dbw 30, MACHOP
	dbw 30, GEODUDE
	dbw 32, SLOWPOKE
	dbw 32, ONIX
	dbw 34, MACHOP
	; day
	dbw 28, ZUBAT
	dbw 28, GEODUDE
	dbw 30, MACHOP
	dbw 30, GEODUDE
	dbw 32, SLOWPOKE
	dbw 32, ONIX
	dbw 34, MACHOP
	; nite
	dbw 28, ZUBAT
	dbw 28, GEODUDE
	dbw 30, ZUBAT
	dbw 30, GEODUDE
	dbw 32, SLOWPOKE
	dbw 32, ONIX
	dbw 34, ZUBAT
	end_grass_wildmons

	db -1 ; end
