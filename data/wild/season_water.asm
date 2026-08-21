; Four tables, one per season -- but the data is written ONCE, in column form,
; in season_water_data.asm. SEASON_COLUMN selects which column each pass emits.
;
; Changing this file is almost never what you want; edit season_water_data.asm.

	REDEF SEASON_COLUMN = SPRING_F
SpringWaterWildMons:
INCLUDE "data/wild/season_water_data.asm"
	db -1 ; end

	REDEF SEASON_COLUMN = SUMMER_F
SummerWaterWildMons:
INCLUDE "data/wild/season_water_data.asm"
	db -1 ; end

	REDEF SEASON_COLUMN = AUTUMN_F
AutumnWaterWildMons:
INCLUDE "data/wild/season_water_data.asm"
	db -1 ; end

	REDEF SEASON_COLUMN = WINTER_F
WinterWaterWildMons:
INCLUDE "data/wild/season_water_data.asm"
	db -1 ; end
