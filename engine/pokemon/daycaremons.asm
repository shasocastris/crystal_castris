DayCareMon1:
	ld hl, LeftWithDayCareManText
	call PrintText
	ld a, [wDayCareMon1Species]
	call PlayMonCry
	ld a, [wDayCareLady]
	bit DAYCARELADY_HAS_MON_F, a
	jr z, DayCareMonCursor
	call PromptButton

	call Random
	cp 25 percent
	jr c, .happy
	cp 50 percent
	jr c, .playing
	cp 75 percent
	jr c, .strong

	ld hl, BrimmingWithEnergyText
	jmp PrintText

.happy
	ld hl, VeryHappyText
	jmp PrintText

.playing
	ld hl, PlayingAroundText
	jmp PrintText

.strong
	ld hl, GrowingStrongText
	jmp PrintText


DayCareMon2:
	ld hl, LeftWithDayCareLadyText
	call PrintText
	ld a, [wDayCareMon2Species]
	call PlayMonCry
	ld a, [wDayCareMan]
	bit DAYCAREMAN_HAS_MON_F, a
	jr z, DayCareMonCursor
	call PromptButton

	call Random
	cp 25 percent
	jr c, .happy
	cp 50 percent
	jr c, .playing
	cp 75 percent
	jr c, .strong

	ld hl, BrimmingWithEnergyText
	jmp PrintText

.happy
	ld hl, VeryHappyText
	jmp PrintText

.playing
	ld hl, PlayingAroundText
	jmp PrintText

.strong
	ld hl, GrowingStrongText
	jmp PrintText


DayCareMonCursor:
	jmp WaitPressAorB_BlinkCursor


LeftWithDayCareLadyText:
	text_far _LeftWithDayCareLadyText
	text_end

LeftWithDayCareManText:
	text_far _LeftWithDayCareManText
	text_end

BrimmingWithEnergyText:
	text_far _BrimmingWithEnergyText
	text_end

VeryHappyText:
	text_far _VeryHappyText
	text_end

PlayingAroundText:
	text_far _PlayingAroundText
	text_end

GrowingStrongText:
	text_far _GrowingStrongText
	text_end
