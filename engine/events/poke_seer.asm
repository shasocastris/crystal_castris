PokeSeer:
	ld hl, Text_PokeSeerQuestion
	call PrintText
	call YesNoBox
	jr c, .cancel

	ld hl, Text_PokeSeerWhichMon
	call PrintText
	call JoyWaitAorB

	farcall SelectMonFromParty
	jr c, .cancel

	call IsAPokemon
	jr nc, .no_mon

	ld a, [wCurPartyMon]
	ld hl, wPartyMon1DVs
	call GetPartyLocation
	ld b, h
	ld c, l
	farcall GetHiddenPowerType
	ld a, e
	ld [wNamedObjectIndex], a
	predef GetTypeName

	ld hl, Text_PokeSeerAnswer
	jp PrintText

.cancel
	ld hl, Text_PokeSeerCancel
	jp PrintText

.no_mon
	ld hl, Text_PokeSeerNoMon
	jp PrintText

Text_PokeSeerQuestion:
	text_far _PokeSeerQuestion
	text_end

Text_PokeSeerWhichMon:
	text_far _PokeSeerWhichMon
	text_end

Text_PokeSeerAnswer:
	text_far _PokeSeerAnswer
	text_end

Text_PokeSeerCancel:
	text_far _PokeSeerCancel
	text_end

Text_PokeSeerNoMon:
	text_far _PokeSeerNoMon
	text_end

GetCaughtGender:
	ld hl, MON_CAUGHTGENDER
	add hl, bc

	ld a, [hl]
	and CAUGHT_LOCATION_MASK
	jr z, .genderless
	cp LANDMARK_EVENT
	jr z, .genderless

	ld a, [hl]
	and CAUGHT_GENDER_MASK
	jr nz, .male
	ld c, CAUGHT_BY_GIRL
	ret

.male
	ld c, CAUGHT_BY_BOY
	ret

.genderless
	ld c, CAUGHT_BY_UNKNOWN
	ret
