BattleCommand_StartHail:
; starthail

	ld a, [wBattleWeather]
	cp WEATHER_HAIL
	jr z, .failed

	ld a, WEATHER_HAIL
	ld [wBattleWeather], a

	push bc
	push de
	push hl
	call GetUserItem
	ld a, b
	cp HELD_PROLONG_HAIL
	pop hl
	pop de
	pop bc

	jr z, .prolong_hail
	ld a, 5
	jr .got_hail
.prolong_hail
	ld a, 8
.got_hail
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, ItStartedToHailText
	jp StdBattleTextbox

.failed
	call AnimateFailedMove
	jp PrintButItFailed
