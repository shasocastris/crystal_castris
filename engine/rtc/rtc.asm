StopRTC: ; unreferenced
	ld a, RAMG_SRAM_ENABLE
	ld [rRAMG], a
	call LatchClock
	ld a, RAMB_RTC_DH
	ldh [hSRAMBank], a
	ld [rRAMB], a
	ld a, [rRTCREG]
	set B_RAMB_RTC_DH_HALT, a
	ld [rRTCREG], a
	jmp CloseSRAM

StartRTC:
	ld a, RAMG_SRAM_ENABLE
	ld [rRAMG], a
	call LatchClock
	ld a, RAMB_RTC_DH
	ldh [hSRAMBank], a
	ld [rRAMB], a
	ld a, [rRTCREG]
	res B_RAMB_RTC_DH_HALT, a
	ld [rRTCREG], a
	jmp CloseSRAM

StageRTCTimeForSave:
	call UpdateTime
	ld hl, wRTC
	ld a, [wCurDay]
	ld [hli], a
	ldh a, [hHours]
	ld [hli], a
	ldh a, [hMinutes]
	ld [hli], a
	ldh a, [hSeconds]
	ld [hli], a
	ret

SaveRTC:
	ld a, RAMG_SRAM_ENABLE
	ld [rRAMG], a
	call LatchClock
	ld hl, rRTCREG
	ld a, RAMB_RTC_DH
	ldh [hSRAMBank], a
	ld [rRAMB], a
	res B_RAMB_RTC_DH_CARRY, [hl]
	ld a, BANK(sRTCStatusFlags)
	ldh [hSRAMBank], a
	ld [rRAMB], a
	xor a
	ld [sRTCStatusFlags], a
	jmp CloseSRAM

StartClock::
	call GetClock
	call _FixDays
	call FixDays
	call c, RecordRTCStatus
	jr StartRTC

_FixDays:
	ld hl, hRTCDayHi
	bit B_RAMB_RTC_DH_CARRY, [hl]
	jr nz, .reset_rtc
	bit B_RAMB_RTC_DH_HALT, [hl]
	jr nz, .reset_rtc
	xor a
	ret

.reset_rtc
	ld a, RTC_RESET
	jmp RecordRTCStatus

ClockContinue:
	call CheckRTCStatus
	ld c, a
	and RTC_RESET | RTC_DAYS_EXCEED_255
	jr nz, .time_overflow

	ld a, c
	and RTC_DAYS_EXCEED_139
	jr z, .dont_update

	call UpdateTime
	ld a, [wRTC + 0]
	ld b, a
	ld a, [wCurDay]
	cp b
	jr c, .dont_update

.time_overflow
	farjp ClearDailyTimers

.dont_update
	xor a
	ret

_InitTime::
	call GetClock
	call FixDays
	ld hl, hRTCSeconds
	ld de, wStartSecond

	ld a, [wStringBuffer2 + 3]
	sub [hl]
	dec hl
	jr nc, .okay_secs
	add 60
.okay_secs
	ld [de], a
	dec de

	ld a, [wStringBuffer2 + 2]
	sbc [hl]
	dec hl
	jr nc, .okay_mins
	add 60
.okay_mins
	ld [de], a
	dec de

	ld a, [wStringBuffer2 + 1]
	sbc [hl]
	dec hl
	jr nc, .okay_hrs
	add 24
.okay_hrs
	ld [de], a
	dec de

	ld a, [wStringBuffer2]
	sbc [hl]
	dec hl
	jr nc, .okay_days
	add 140
	ld c, 7
	call SimpleDivide

.okay_days
	ld [de], a
	ret

GetTimeOfDay::
; get time of day based on the current hour
	ldh a, [hHours] ; hour
	call GetTimeOfDayForHour
	ld [wTimeOfDay], a
	ret

GetTimeOfDayForHour::
; Returns the time of day for the hour in a, using the current season's
; schedule. Anything that classifies an hour must come through here, or the
; Pokegear clock ends up disagreeing with the world.
	ld hl, SeasonTimesOfDay
	push af
	ld a, [wSeason]
	maskbits NUM_SEASONS ; wSeason is poked by hand when testing
	add a
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af

.check
; if we're within the given time period, take that entry's time of day
	cp [hl]
	jr c, .match
	inc hl
	inc hl
	jr .check

.match
	inc hl
	ld a, [hl]
	ret

SeasonTimesOfDay:
; entries correspond to SPRING_F, SUMMER_F, AUTUMN_F, WINTER_F
	dw SpringTimesOfDay
	dw SummerTimesOfDay
	dw AutumnTimesOfDay
	dw WinterTimesOfDay

; Daylight lengthens toward summer and collapses in winter. Each entry is an
; upper bound: the first row whose hour the current hour is BELOW wins.
;
;         morn     day      eve      nite     daylight
; spring  05-10    10-17    17-20    20-05      15h
; summer  04-10    10-18    18-21    21-04      17h
; autumn  05-10    10-16    16-20    20-05      15h
; winter  06-11    11-16    16-18    18-06      12h
;
; Autumn shortens the day but keeps the light late, giving it a four-hour
; evening -- the longest of any season.

SpringTimesOfDay:
	db  5, NITE_F
	db 10, MORN_F
	db 17, DAY_F
	db 20, EVE_F
	db MAX_HOUR, NITE_F
	db -1, MORN_F

SummerTimesOfDay:
	db  4, NITE_F
	db 10, MORN_F
	db 18, DAY_F
	db 21, EVE_F
	db MAX_HOUR, NITE_F
	db -1, MORN_F

AutumnTimesOfDay:
	db  5, NITE_F
	db 10, MORN_F
	db 16, DAY_F
	db 20, EVE_F
	db MAX_HOUR, NITE_F
	db -1, MORN_F

WinterTimesOfDay:
	db  6, NITE_F
	db 11, MORN_F
	db 16, DAY_F
	db 18, EVE_F
	db MAX_HOUR, NITE_F
	db -1, MORN_F
