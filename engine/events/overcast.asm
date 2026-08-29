GetOvercastWeather::
; Today's weather for the map that was just loaded, in a, or OW_WEATHER_NONE.
;
; The source stores four chosen (intensity, group, map) triples, a day, and a
; live intensity -- fourteen saved bytes. M0 reserved six. So rather than store
; *which* maps are wet, we store one byte of daily seed and hash it against a
; map's own id when asked. That keeps the properties that matter: an answer that
; is stable for the whole day, identical after a reload, and independent between
; maps -- and it needs no per-map table at all, which suits a project that spent
; M3 and M4 getting away from hardcoded map ids.
	ld a, [wEnvironment]
	call CheckOutdoorMap
	jr nz, .none

	; As in the source, no weather before the player has any context for it.
	ld de, EVENT_AZALEA_TOWN_SLOWPOKES
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr z, .none

	call .ReseedIfNewDay

	; Winter is snow, and reliably rather than occasionally. This is the seasonal
	; payoff M4 was sequenced after M2 for: it stands in for the winter tileset
	; that M2 deferred, and a one-day-in-five flurry would not stand in for
	; anything. Johto only -- the Orange Islands are tropical.
	ld a, [wCurRegion]
	cp JOHTO_REGION
	jr nz, .roll
	ld a, [wSeason]
	maskbits NUM_SEASONS
	cp WINTER_F
	ld a, OW_WEATHER_SNOW
	ret z

.roll
	call .HashForThisMap
	ld b, a

	; The season decides how much of the hash range counts as wet.
	ld a, [wSeason]
	maskbits NUM_SEASONS
	ld e, a
	ld d, 0
	ld hl, .SeasonWetness
	add hl, de
	ld a, b
	cp [hl]
	jr nc, .none

	; Severity comes from the same hash, so a map that is stormy today stays
	; stormy rather than flickering between the two every time it is re-entered.
	cp OVERCAST_THUNDER_LEVEL
	ld a, OW_WEATHER_THUNDERSTORM
	ret c
	ld a, OW_WEATHER_RAIN
	ret

.none
	xor a ; OW_WEATHER_NONE
	ret

.ReseedIfNewDay
; Rolled lazily here rather than from the daily reset, so that it is also right
; immediately after loading a save that was made on a different day.
	ld a, [wCurDay]
	ld hl, wOvercastRandomDay
	cp [hl]
	ret z
	ld [hl], a
	call Random
	ld [wOvercastSeed], a
	ret

.HashForThisMap
; Mix the day's seed with the map's identity. The group is tripled so that a
; group and map number swapping places do not land on the same answer, and the
; swap-and-xor gives the low bits -- all the comparisons look at -- some
; avalanche, so neighbouring maps do not come out alike.
	ld a, [wMapGroup]
	ld b, a
	add a
	add b ; group * 3
	ld hl, wMapNumber
	add [hl]
	ld b, a
	ld a, [wOvercastSeed]
	xor b
	ld b, a
	swap a
	xor b
	ret

.SeasonWetness
; How much of the hash range is wet, per season. Winter only reaches this table
; outside Johto, where it rains like anywhere else rather than snowing.
	table_width 1
	db 20 percent ; SPRING
	db 10 percent ; SUMMER -- the clear-weather bias
	db 35 percent ; AUTUMN -- the wettest
	db 20 percent ; WINTER -- outside Johto only
	assert_table_length NUM_SEASONS
