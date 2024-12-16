BattleCommand_StartRain:
; startrain

	ld a, [wBattleWeather]
	cp WEATHER_RAIN
	jr z, .failed

	ld a, WEATHER_RAIN
	ld [wBattleWeather], a

	push bc
	push de
	push hl
	call GetUserItem
	ld a, b
	cp HELD_PROLONG_RAIN
	pop hl
	pop de
	pop bc

	jr z, .prolong_rain
	ld a, 5
	jr .got_rain
.prolong_rain
	ld a, 8
.got_rain
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, DownpourText
	jmp StdBattleTextbox

.failed
	call AnimateFailedMove
	jmp PrintButItFailed
