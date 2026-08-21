; Four tables, one per season -- but the data is written ONCE, in column form,
; in season_grass_data.asm. SEASON_COLUMN selects which column each pass emits.
;
; Changing this file is almost never what you want; edit season_grass_data.asm.

	REDEF SEASON_COLUMN = SPRING_F
SpringGrassWildMons:
INCLUDE "data/wild/season_grass_data.asm"
	db -1 ; end

	REDEF SEASON_COLUMN = SUMMER_F
SummerGrassWildMons:
INCLUDE "data/wild/season_grass_data.asm"
	db -1 ; end

	REDEF SEASON_COLUMN = AUTUMN_F
AutumnGrassWildMons:
INCLUDE "data/wild/season_grass_data.asm"
	db -1 ; end

	REDEF SEASON_COLUMN = WINTER_F
WinterGrassWildMons:
INCLUDE "data/wild/season_grass_data.asm"
	db -1 ; end
