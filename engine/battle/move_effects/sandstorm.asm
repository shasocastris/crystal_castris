BattleCommand_StartSandstorm:
; startsandstorm

	ld a, [wBattleWeather]
	cp WEATHER_SANDSTORM
	jr z, .failed

	ld a, WEATHER_SANDSTORM
	ld [wBattleWeather], a

	push bc
	push de
	push hl
	call GetUserItem
	ld a, b
	cp HELD_PROLONG_SAND
	pop hl
	pop de
	pop bc

	jr z, .prolong_sand
	ld a, 5
	jr .got_sand
.prolong_sand
	ld a, 8
.got_sand
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, SandstormBrewedText
	jmp StdBattleTextbox

.failed
	call AnimateFailedMove
	jmp PrintButItFailed
