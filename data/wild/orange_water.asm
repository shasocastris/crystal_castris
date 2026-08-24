; Orange Islands Pokémon in water
;
; The islands have no seasonal variants by design (M3: tropical), so these base
; entries are the whole story -- there is no orange column in season_water_data.

OrangeWaterWildMons:

	def_water_wildmons VALENCIA_PORT
	db 20 percent ; encounter rate
	dbw 20, TENTACOOL
	dbw 25, TENTACOOL
	dbw 30, TENTACRUEL
	end_water_wildmons

	def_water_wildmons VALENCIA_ISLAND
	db 15 percent ; encounter rate
	dbw 20, TENTACOOL
	dbw 22, CHINCHOU
	dbw 30, TENTACRUEL
	end_water_wildmons

	def_water_wildmons SHAMOUTI_PASSAGE
	db 20 percent ; encounter rate
	dbw 25, TENTACOOL
	dbw 25, HORSEA
	dbw 35, TENTACRUEL
	end_water_wildmons

	def_water_wildmons SHAMOUTI_ISLAND
	db 20 percent ; encounter rate
	dbw 25, TENTACOOL
	dbw 25, STARYU
	dbw 35, CORSOLA
	end_water_wildmons

	def_water_wildmons SHAMOUTI_CAVE
	db 25 percent ; encounter rate
	dbw 30, TENTACOOL
	dbw 30, CHINCHOU
	dbw 35, LANTURN
	end_water_wildmons

	db -1 ; end
