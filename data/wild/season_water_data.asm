; Seasonal surfing encounters -- ONE column per season.
; See season_grass_data.asm for how the four-pass include works.

	def_water_wildmons LAKE_OF_RAGE
	;          SPRING         SUMMER         AUTUMN         WINTER       
	seasonrate 25,            20,            18,            6
	seasonmon  20, MAGIKARP,  30, GYARADOS,  33, GYARADOS,  32, GYARADOS
	seasonmon  28, GYARADOS,  34, GYARADOS,  36, GYARADOS,  26, MAGIKARP
	seasonmon  24, MAGIKARP,  25, MAGIKARP,  28, MAGIKARP,  30, SEEL
	end_water_wildmons

	def_water_wildmons ROUTE_41
	;          SPRING          SUMMER           AUTUMN           WINTER         
	seasonrate 15,             20,              15,              9
	seasonmon  28, TENTACOOL,  30, TENTACRUEL,  32, TENTACRUEL,  30, TENTACRUEL
	seasonmon  26, CHINCHOU,   28, LANTURN,     30, LANTURN,     31, SEEL
	seasonmon  24, MANTINE,    27, MANTINE,     28, QWILFISH,    34, DEWGONG
	end_water_wildmons

