BattleCommand_StartSun:
; startsun

	ld a, [wBattleWeather]
	cp WEATHER_SUN
	jr z, .failed

	ld a, WEATHER_SUN
	ld [wBattleWeather], a

	push bc
	push de
	push hl
	call GetUserItem
	ld a, b
	cp HELD_PROLONG_SUN
	pop hl
	pop de
	pop bc

	jr z, .prolong_sun
	ld a, 5
	jr .got_sun
.prolong_sun
	ld a, 8
.got_sun
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, SunGotBrightText
	jmp StdBattleTextbox

.failed
	call AnimateFailedMove
	jmp PrintButItFailed
