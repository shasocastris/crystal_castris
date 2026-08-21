; Seasonal surfing encounters -- ONE column per season.
; See season_grass_data.asm. SUMMER is the base game and uses the sentinel.

	def_season_water LAKE_OF_RAGE, ANYSEASON & ~SUMMER
	;          SPRING         SUMMER  AUTUMN         WINTER         ; SUMMER = base
	seasonrate 25,            -,      18,            6              ; 20
	seasonmon  20, MAGIKARP,  -, -,   33, GYARADOS,  32, GYARADOS   ; 30, GYARADOS
	seasonmon  28, GYARADOS,  -, -,   36, GYARADOS,  26, MAGIKARP   ; 34, GYARADOS
	seasonmon  24, MAGIKARP,  -, -,   28, MAGIKARP,  30, SEEL       ; 25, MAGIKARP
	end_season_water

	def_season_water ROUTE_41, ANYSEASON & ~SUMMER
	;          SPRING          SUMMER  AUTUMN           WINTER           ; SUMMER = base
	seasonrate 15,             -,      15,              9                ; 15
	seasonmon  28, TENTACOOL,  -, -,   32, TENTACRUEL,  30, TENTACRUEL   ; 30, TENTACRUEL
	seasonmon  26, CHINCHOU,   -, -,   30, LANTURN,     31, SEEL         ; 27, LANTURN
	seasonmon  24, MANTINE,    -, -,   28, QWILFISH,    34, DEWGONG      ; 25, MANTINE
	end_season_water

