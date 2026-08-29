SetCurrentWeather::
; Pick the weather for the map that was just loaded.
;
; A map that names its own weather always gets it, in every season and whatever
; the day rolled: Route 45's sandstorm, Silver Cave's snow and Lake of Rage's
; storm are authored set pieces, not weather. Only maps that ask for nothing are
; left to the season and the daily roll -- which is also why an indoor map with
; an authored weather still gets it, while GetOvercastWeather refuses indoors.
;
; The reverse precedence would read more like the roadmap's sketch of "snow
; across outdoor Johto in winter", but it would bury three deliberate set pieces
; under it for a quarter of the year.
;
; Everything after this is the transition, which drains the previous weather
; over WEATHER_TRANSITION_LENGTH frames instead of letting it pop.
	ld a, [wMapWeather]
	and a
	call z, GetOvercastWeather
	ld b, a

	ld a, [wWeatherFlags]
	bit OW_WEATHER_DO_FLY_F, a
	jr nz, .no_cooldown ; a Fly has already whited the screen out

	ld a, [wCurWeather]
	and a
	jr z, .no_cooldown ; nothing on screen to drain

	; Rain and thunderstorm share tiles and a palette, so there is nothing to
	; drain between them; only the lightning differs.
	ld c, a
	cp OW_WEATHER_RAIN
	jr nz, .not_rain
	ld a, b
	cp OW_WEATHER_THUNDERSTORM
	jr z, .no_cooldown
.not_rain
	ld a, c
	cp OW_WEATHER_THUNDERSTORM
	jr nz, .compare
	ld a, b
	cp OW_WEATHER_RAIN
	jr z, .no_cooldown
	ld a, c

.compare
	cp b
	jr nz, .cooldown

.no_cooldown
	ld a, b
	ld [wCurWeather], a
	farcall LoadWeatherPal
	call LoadWeatherGraphics
	xor a
	ld [wOverworldWeatherCooldown], a
	ret

.cooldown
	ld [wPrevWeather], a ; a is the weather being drained
	ld a, b
	ld [wCurWeather], a
	ld a, WEATHER_TRANSITION_LENGTH
	ld [wOverworldWeatherCooldown], a
	ret
