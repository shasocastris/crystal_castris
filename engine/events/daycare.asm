; PrintDayCareText.TextTable indexes
	const_def
	const DAYCARETEXT_MAN_INTRO
	const DAYCARETEXT_MAN_INTRO_LUCKY_EGG
	const DAYCARETEXT_LADY_INTRO
	const DAYCARETEXT_LADY_INTRO_LUCKY_EGG
	const DAYCARETEXT_WHICH_ONE
	const DAYCARETEXT_DEPOSIT
	const DAYCARETEXT_CANT_BREED_EGG
	const DAYCARETEXT_LAST_MON
	const DAYCARETEXT_LAST_ALIVE_MON
	const DAYCARETEXT_COME_BACK_LATER
	const DAYCARETEXT_REMOVE_MAIL
	const DAYCARETEXT_GENIUSES
	const DAYCARETEXT_ASK_WITHDRAW
	const DAYCARETEXT_WITHDRAW
	const DAYCARETEXT_GOT_BACK
	const DAYCARETEXT_TOO_SOON
	const DAYCARETEXT_PARTY_FULL
	const DAYCARETEXT_NOT_ENOUGH_MONEY
	const DAYCARETEXT_OH_FINE
	const DAYCARETEXT_COME_AGAIN

DayCareMan:
	ld hl, wDayCareMan
	bit DAYCAREMAN_HAS_MON_F, [hl]
	jr nz, .AskWithdrawMon
	ld hl, wDayCareMan
	ld a, DAYCARETEXT_MAN_INTRO
	call DayCareManIntroText
	jr c, .cancel
	call DayCareAskDepositPokemon
	jr c, .print_text
	farcall DepositMonWithDayCareMan
	ld hl, wDayCareMan
	set DAYCAREMAN_HAS_MON_F, [hl]
	call DayCare_DepositPokemonText
	ret

.AskWithdrawMon:
	farcall GetDayCareMon1LevelGrowth
	ld hl, wDayCareMon1Nickname
	call GetPriceToRetrieveDaycaremon
	call DayCare_AskWithdrawDaycaremon
	jr c, .print_text
	farcall RetrieveMonFromDayCareMan
	call DayCare_GetBackMonForMoney
	ld hl, wDayCareMan
	res DAYCAREMAN_HAS_MON_F, [hl]
	res DAYCAREMAN_MONS_COMPATIBLE_F, [hl]
	jr .cancel

.print_text
	call PrintDayCareText

.cancel
	ld a, DAYCARETEXT_COME_AGAIN
	jmp PrintDayCareText

DayCareLady:
	ld hl, wDayCareLady
	bit DAYCARELADY_HAS_MON_F, [hl]
	jr nz, .AskWithdrawMon
	ld hl, wDayCareLady
	ld a, DAYCARETEXT_LADY_INTRO
	call DayCareLadyIntroText
	jr c, .cancel
	call DayCareAskDepositPokemon
	jr c, .print_text
	farcall DepositMonWithDayCareLady
	ld hl, wDayCareLady
	set DAYCARELADY_HAS_MON_F, [hl]
	call DayCare_DepositPokemonText
	ret

.AskWithdrawMon:
	farcall GetDayCareMon2LevelGrowth
	ld hl, wDayCareMon2Nickname
	call GetPriceToRetrieveDaycaremon
	call DayCare_AskWithdrawDaycaremon
	jr c, .print_text
	farcall RetrieveMonFromDayCareLady
	call DayCare_GetBackMonForMoney
	ld hl, wDayCareLady
	res DAYCARELADY_HAS_MON_F, [hl]
	ld hl, wDayCareMan
	res DAYCAREMAN_MONS_COMPATIBLE_F, [hl]
	jr .cancel

.print_text
	call PrintDayCareText

.cancel
	ld a, DAYCARETEXT_COME_AGAIN
	jmp PrintDayCareText

DayCareLadyIntroText:
	bit DAYCARELADY_ACTIVE_F, [hl]
	jr nz, .okay
	set DAYCARELADY_ACTIVE_F, [hl]
	inc a
.okay
	call PrintDayCareText
	jmp YesNoBox

DayCareManIntroText:
	set DAYCAREMAN_ACTIVE_F, [hl]
	call PrintDayCareText
	jmp YesNoBox

DayCareAskDepositPokemon:
	ld a, [wPartyCount]
	cp 2
	jr c, .OnlyOneMon
	ld a, DAYCARETEXT_WHICH_ONE
	call PrintDayCareText
	ld b, PARTYMENUACTION_GIVE_MON
	farcall SelectTradeOrDayCareMon
	jr c, .Declined
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .Egg
	farcall CheckCurPartyMonFainted
	jr c, .OutOfUsableMons
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	rst AddNTimes
	ld d, [hl]
	farcall ItemIsMail
	jr c, .HoldingMail
	ld hl, wPartyMonNicknames
	ld a, [wCurPartyMon]
	call GetNickname
	and a
	ret

.Declined:
	ld a, DAYCARETEXT_OH_FINE
	scf
	ret

.Egg:
	ld a, DAYCARETEXT_CANT_BREED_EGG
	scf
	ret

.OnlyOneMon:
	ld a, DAYCARETEXT_LAST_MON
	scf
	ret

.OutOfUsableMons:
	ld a, DAYCARETEXT_LAST_ALIVE_MON
	scf
	ret

.HoldingMail:
	ld a, DAYCARETEXT_REMOVE_MAIL
	scf
	ret

DayCare_DepositPokemonText:
	ld a, DAYCARETEXT_DEPOSIT
	call PrintDayCareText
	ld a, [wCurPartySpecies]
	call PlayMonCry
	ld a, DAYCARETEXT_COME_BACK_LATER
	jmp PrintDayCareText

DayCare_AskWithdrawDaycaremon:
	ld a, [wStringBuffer2 + 1]
	and a
	jr nz, .grew_at_least_one_level
	ld a, DAYCARETEXT_TOO_SOON
	call PrintDayCareText
	call YesNoBox
	jr c, .refused
	jr .check_money

.grew_at_least_one_level
	ld a, DAYCARETEXT_GENIUSES
	call PrintDayCareText
	call YesNoBox
	jr c, .refused
	ld a, DAYCARETEXT_ASK_WITHDRAW
	call PrintDayCareText
	call YesNoBox
	jr c, .refused

.check_money
	ld de, wMoney
	ld bc, wStringBuffer2 + 2
	call CompareMoney
	jr c, .not_enough_money
	ld a, [wPartyCount]
	cp PARTY_LENGTH
	jr nc, .party_full
	and a
	ret

.refused
	ld a, DAYCARETEXT_OH_FINE
	scf
	ret

.not_enough_money
	ld a, DAYCARETEXT_NOT_ENOUGH_MONEY
	scf
	ret

.party_full
	ld a, DAYCARETEXT_PARTY_FULL
	scf
	ret

DayCare_GetBackMonForMoney:
	ld bc, wStringBuffer2 + 2
	ld de, wMoney
	call TakeMoney
	ld a, DAYCARETEXT_WITHDRAW
	call PrintDayCareText
	ld a, [wCurPartySpecies]
	call PlayMonCry
	ld a, DAYCARETEXT_GOT_BACK
	jr PrintDayCareText

GetPriceToRetrieveDaycaremon:
	ld a, b
	ld [wStringBuffer2], a
	ld a, d
	ld [wStringBuffer2 + 1], a
	ld de, wStringBuffer1
	ld bc, NAME_LENGTH
	rst CopyBytes
	ld hl, 0
	ld bc, 100
	ld a, [wStringBuffer2 + 1]
	rst AddNTimes
	ld de, 100
	add hl, de
	xor a
	ld [wStringBuffer2 + 2], a
	ld a, h
	ld [wStringBuffer2 + 3], a
	ld a, l
	ld [wStringBuffer2 + 4], a
	ret

PrintDayCareText:
	ld e, a
	ld d, 0
	ld hl, .TextTable
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jmp PrintText

.TextTable:
; entries correspond to DAYCARETEXT_* constants
	dw .DayCareManIntroText ; 00
	dw .DayCareManIntroLuckyEggText ; 01
	dw .DayCareLadyIntroText ; 02
	dw .DayCareLadyIntroLuckyEggText ; 03
	dw .WhatShouldIRaiseText ; 04
	dw .IllRaiseYourMonText ; 05
	dw .CantAcceptEggText ; 06
	dw .OnlyOneMonText ; 07
	dw .LastHealthyMonText ; 08
	dw .ComeBackLaterText ; 09
	dw .RemoveMailText ; 0a
	dw .AreWeGeniusesText ; 0b
	dw .YourMonHasGrownText ; 0c
	dw .PerfectHeresYourMonText ; 0d
	dw .GotBackMonText ; 0e
	dw .BackAlreadyText ; 0f
	dw .HaveNoRoomText ; 10
	dw .NotEnoughMoneyText ; 11
	dw .OhFineThenText ; 12
	dw .ComeAgainText ; 13

.DayCareManIntroText:
	text_far _DayCareManIntroText
	text_end

.DayCareManIntroLuckyEggText:
	text_far _DayCareManIntroLuckyEggText
	text_end

.DayCareLadyIntroText:
	text_far _DayCareLadyIntroText
	text_end

.DayCareLadyIntroLuckyEggText:
	text_far _DayCareLadyIntroLuckyEggText
	text_end

.WhatShouldIRaiseText:
	text_far _WhatShouldIRaiseText
	text_end

.OnlyOneMonText:
	text_far _OnlyOneMonText
	text_end

.CantAcceptEggText:
	text_far _CantAcceptEggText
	text_end

.RemoveMailText:
	text_far _RemoveMailText
	text_end

.LastHealthyMonText:
	text_far _LastHealthyMonText
	text_end

.IllRaiseYourMonText:
	text_far _IllRaiseYourMonText
	text_end

.ComeBackLaterText:
	text_far _ComeBackLaterText
	text_end

.AreWeGeniusesText:
	text_far _AreWeGeniusesText
	text_end

.YourMonHasGrownText:
	text_far _YourMonHasGrownText
	text_end

.PerfectHeresYourMonText:
	text_far _PerfectHeresYourMonText
	text_end

.GotBackMonText:
	text_far _GotBackMonText
	text_end

.BackAlreadyText:
	text_far _BackAlreadyText
	text_end

.HaveNoRoomText:
	text_far _HaveNoRoomText
	text_end

.NotEnoughMoneyText:
	text_far _NotEnoughMoneyText
	text_end

.OhFineThenText:
	text_far _OhFineThenText
	text_end

.ComeAgainText:
	text_far _ComeAgainText
	text_end
