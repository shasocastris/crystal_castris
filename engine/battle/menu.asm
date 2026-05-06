LoadBattleMenu:
	ld hl, BattleMenuHeader
	call LoadMenuHeader
.loop
	ld a, [wBattleMenuCursorPosition]
	ld [wMenuCursorPosition], a
	call InterpretBattleMenu
	jr nc, .selection_made
	; B pressed — move cursor to RUN and redisplay menu
	ld a, 4
	ld [wBattleMenuCursorPosition], a
	jr .loop
.selection_made
	ld a, [wMenuCursorPosition]
	ld [wBattleMenuCursorPosition], a
	jmp ExitMenu

ContestBattleMenu:
	ld hl, ContestBattleMenuHeader
	call LoadMenuHeader
; CommonBattleMenu:
	ld a, [wBattleMenuCursorPosition]
	ld [wMenuCursorPosition], a
	call _2DMenu
	ld a, [wMenuCursorPosition]
	ld [wBattleMenuCursorPosition], a
	jmp ExitMenu

BattleMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 2, 2 ; rows, columns
	db 6 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "FIGHT@"
	db "<PKMN>@"
	db "PACK@"
	db "RUN@"

ContestBattleMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 2, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	dn 2, 2 ; rows, columns
	db 12 ; spacing
	dba .Text
	dba .PrintParkBallsRemaining

.Text:
	db "FIGHT@"
	db "<PKMN>@"
	db "PARKBALL×  @"
	db "RUN@"

.PrintParkBallsRemaining:
	hlcoord 13, 16
	ld de, wParkBallsRemaining
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	jmp PrintNum
