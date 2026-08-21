; Seasonal wild data is written ONCE, grouped by map with one column per season,
; and INCLUDEd four times. SEASON_COLUMN selects which column each pass emits;
; the other three are never expanded, so they are not even evaluated. That is why
; a skipped column can be written as a bare "-, -" placeholder.

MACRO def_season_grass
;\1: map id
;\2: the seasons this map defines. Any season NOT listed emits nothing, so the
;    map is absent from that season's table, the lookup misses, and the base
;    Johto/Kanto entry is used instead.
	REDEF _SEASON_ON = ((\2) >> SEASON_COLUMN) & 1
	IF _SEASON_ON
	def_grass_wildmons \1
	ENDC
ENDM

MACRO end_season_grass
	IF _SEASON_ON
	end_grass_wildmons
	ENDC
ENDM

MACRO def_season_water
	REDEF _SEASON_ON = ((\2) >> SEASON_COLUMN) & 1
	IF _SEASON_ON
	def_water_wildmons \1
	ENDC
ENDM

MACRO end_season_water
	IF _SEASON_ON
	end_water_wildmons
	ENDC
ENDM

MACRO seasonrate
;\1-\4: encounter rate for SPRING, SUMMER, AUTUMN, WINTER
	IF _SEASON_ON
	REDEF _SEASON_RATE = SEASON_COLUMN + 1
	db \<_SEASON_RATE> percent
	ENDC
ENDM

MACRO seasonmon
;\1-\8: level, species for SPRING, SUMMER, AUTUMN, WINTER
	IF _SEASON_ON
	REDEF _SEASON_LVL = SEASON_COLUMN * 2 + 1
	REDEF _SEASON_SPC = SEASON_COLUMN * 2 + 2
	dbw \<_SEASON_LVL>, \<_SEASON_SPC>
	ENDC
ENDM
