; Seasonal wild data is written ONCE, grouped by map with one column per season,
; and INCLUDEd four times. SEASON_COLUMN selects which column each pass emits;
; the other three are never expanded, so they are not even evaluated.

MACRO seasonrate
;\1-\4: encounter rate for SPRING, SUMMER, AUTUMN, WINTER
	REDEF _SEASON_RATE = SEASON_COLUMN + 1
	db \<_SEASON_RATE> percent
ENDM

MACRO seasonmon
;\1-\8: level, species for SPRING, SUMMER, AUTUMN, WINTER
	REDEF _SEASON_LVL = SEASON_COLUMN * 2 + 1
	REDEF _SEASON_SPC = SEASON_COLUMN * 2 + 2
	dbw \<_SEASON_LVL>, \<_SEASON_SPC>
ENDM
