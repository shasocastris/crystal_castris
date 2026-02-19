MoveTutor:
	call FadeToMenu
	call ClearBGPalettes
	call ClearScreen
	call DelayFrame
	ld b, SCGB_PACKPALS
	call GetSGBLayout
	xor a
	ld [wItemAttributeValue], a
	call .GetMoveTutorMove
	ld [wNamedObjectIndex], a
	ld [wPutativeTMHMMove], a
	call GetMoveName
	call CopyName1
	farcall ChooseMonToLearnTMHM
	jr c, .cancel
	jr .enter_loop

.loop
	farcall ChooseMonToLearnTMHM_NoRefresh
	jr c, .cancel
.enter_loop
	call CheckCanLearnMoveTutorMove
	jr nc, .loop
	xor a ; FALSE
	ld [wScriptVar], a
	jr .quit

.cancel
	ld a, -1
	ld [wScriptVar], a
.quit
	jmp CloseSubmenu

.GetMoveTutorMove:
	ld a, [wScriptVar]
	ret

CheckCanLearnMoveTutorMove:
	ld hl, .MenuHeader
	call LoadMenuHeader

	predef CanLearnTMHMMove

	push bc
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNickname
	pop bc

	ld a, c
	and a
	jr nz, .can_learn
	push de
	ld de, SFX_WRONG
	call PlaySFX
	pop de
	ld a, BANK(TMHMNotCompatibleText)
	ld hl, TMHMNotCompatibleText
	call FarPrintText
	jr .didnt_learn

.can_learn
	farcall KnowsMove
	jr c, .didnt_learn

	predef LearnMove
	ld a, b
	and a
	jr z, .didnt_learn

	ld c, HAPPINESS_LEARNMOVE
	farcall ChangeHappiness
	jr .learned

.didnt_learn
	call ExitMenu
	and a
	ret

.learned
	call ExitMenu
	scf
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1


MoveTutorNoCheck:
; Like MoveTutor but skips compatibility checking.
; Reads move from wScriptVar, teaches to chosen mon.
	call FadeToMenu
	call ClearBGPalettes
	call ClearScreen
	call DelayFrame
	ld b, SCGB_PACKPALS
	call GetSGBLayout
	xor a
	ld [wItemAttributeValue], a
	ld a, [wScriptVar]
	ld [wNamedObjectIndex], a
	ld [wPutativeTMHMMove], a
	call GetMoveName
	call CopyName1
	farcall ChooseMonToLearnTMHM
	jr c, .cancel

.enter_loop:
	; Skip CanLearnTMHMMove — go straight to learning
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNickname

	farcall KnowsMove
	jr c, .already_knows

	predef LearnMove
	ld a, b
	and a
	jr z, .didnt_learn

	ld c, HAPPINESS_LEARNMOVE
	farcall ChangeHappiness
	xor a ; FALSE = success
	ld [wScriptVar], a
	jr .quit

.already_knows:
.didnt_learn:
	farcall ChooseMonToLearnTMHM_NoRefresh
	jr c, .cancel
	jr .enter_loop

.cancel:
	ld a, -1
	ld [wScriptVar], a
.quit:
	jmp CloseSubmenu
