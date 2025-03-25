DayCareMon1:
	ld hl, LeftWithDayCareManText
	call PrintText
	ld a, [wDayCareMon1Species]
	call PlayMonCry
	ld a, [wDayCareLady]
	bit DAYCARELADY_HAS_MON_F, a
	jr z, DayCareMonCursor
	call PromptButton
	ld hl, BrimmingWithEnergyText
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
	ld hl, BrimmingWithEnergyText
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
