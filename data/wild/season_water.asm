; Seasonal surfing encounters. Same fall-through rule as season_grass.asm:
; a map with no entry for the current season uses the base table.
;
; LAKE_OF_RAGE freezes over -- its rate collapses in winter and peaks in spring.
; ROUTE_41 is open sea, so it swings the other way: calm and busy in summer.

SpringWaterWildMons:

	def_water_wildmons LAKE_OF_RAGE
	db 25 percent ; encounter rate
	dbw 20, MAGIKARP
	dbw 28, GYARADOS
	dbw 24, MAGIKARP
	end_water_wildmons

	def_water_wildmons ROUTE_41
	db 15 percent ; encounter rate
	dbw 28, TENTACOOL
	dbw 26, CHINCHOU
	dbw 24, MANTINE
	end_water_wildmons

	db -1 ; end

SummerWaterWildMons:

	def_water_wildmons LAKE_OF_RAGE
	db 20 percent ; encounter rate
	dbw 30, GYARADOS
	dbw 34, GYARADOS
	dbw 25, MAGIKARP
	end_water_wildmons

	def_water_wildmons ROUTE_41
	db 20 percent ; encounter rate
	dbw 30, TENTACRUEL
	dbw 28, LANTURN
	dbw 27, MANTINE
	end_water_wildmons

	db -1 ; end

AutumnWaterWildMons:

	def_water_wildmons LAKE_OF_RAGE
	db 18 percent ; encounter rate
	dbw 33, GYARADOS
	dbw 36, GYARADOS
	dbw 28, MAGIKARP
	end_water_wildmons

	def_water_wildmons ROUTE_41
	db 15 percent ; encounter rate
	dbw 32, TENTACRUEL
	dbw 30, LANTURN
	dbw 28, QWILFISH
	end_water_wildmons

	db -1 ; end

WinterWaterWildMons:

	def_water_wildmons LAKE_OF_RAGE
	db 6 percent ; encounter rate
	dbw 32, GYARADOS
	dbw 26, MAGIKARP
	dbw 30, SEEL
	end_water_wildmons

	def_water_wildmons ROUTE_41
	db 9 percent ; encounter rate
	dbw 30, TENTACRUEL
	dbw 31, SEEL
	dbw 34, DEWGONG
	end_water_wildmons

	db -1 ; end
