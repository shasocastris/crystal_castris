; Overworld weather. Pulled forward from M4 (roadmap §6.2a) so that every map
; carries a weather value from the moment it is authored, rather than three
; regions being retrofitted once the particle engine lands.
;
; Nothing reads these yet -- SetCurrentWeather does not exist. The map attributes
; struct stores one per map and CopyMapAttributes caches it in wMapWeather.

	const_def
	const OW_WEATHER_NONE            ; 0
	const OW_WEATHER_RAIN            ; 1
	const OW_WEATHER_SNOW            ; 2
	const OW_WEATHER_THUNDERSTORM    ; 3
	const OW_WEATHER_SANDSTORM       ; 4
	const OW_WEATHER_CHERRY_BLOSSOMS ; 5
DEF NUM_OW_WEATHERS EQU const_value

; The engine tests this with `and a`, so nothing may be inserted before it.
	assert OW_WEATHER_NONE == 0, "OW_WEATHER_NONE must be zero"
