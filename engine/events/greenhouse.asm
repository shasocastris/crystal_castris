PlantableBerries:
	dw BERRY
	dw GOLD_BERRY
	dw MYSTERYBERRY
	dw MIRACLEBERRY
	dw PSNCUREBERRY
	dw PRZCUREBERRY
	dw BURNT_BERRY
	dw ICE_BERRY
	dw BITTER_BERRY
	dw MINT_BERRY
	dw ATK_UP_BERRY
	dw DEF_UP_BERRY
	dw SPD_UP_BERRY
	dw SPA_UP_BERRY
	dw SPF_UP_BERRY
	dw ACC_UP_BERRY
	dw EVN_UP_BERRY
	dw -1 ; terminator


FindPlantableBerriesInBag:
; Checks the bag for plantable berries (not apricorns).
; Mirrors FindApricornsInBag exactly, just with a different table.
	ld hl, wKurtApricornCount
	xor a
	ld [hli], a
	assert wKurtApricornCount + 1 == wKurtApricornItems
	dec a
	ld bc, 10
	rst ByteFill

	ld hl, PlantableBerries
.loop
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	cphl16 $ffff
	jr z, .done
	call GetItemIDFromIndex
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	pop hl
	inc hl
	inc hl
	call c, .addtobuffer
	jr .loop

.done
	pop hl
	farcall ItemTableGarbageCollection
	ld a, [wKurtApricornCount]
	and a
	ret nz
	scf
	ret

.addtobuffer:
	push hl
	ld hl, wKurtApricornCount
	inc [hl]
	ld e, [hl]
	ld d, 0
	add hl, de
	ld a, [wCurItem]
	ld [hl], a
	pop hl
	ret

SelectBerryForGreenhouse:
; Called as a special from the greenhouse map script.
; Opens a scrolling menu of plantable berries.
; On selection: consumes 1 berry, sets wScriptVar = item ID.
; On cancel: sets wScriptVar = 0.

	call FindPlantableBerriesInBag
	jr c, .no_berries

	call LoadStandardMenuHeader
	xor a
	ld [wMenuScrollPosition], a

.menu_loop:
	ld hl, .WhichBerryText
	call PrintText

	ld a, 1
	ld [wMenuSelection], a

	call .ShowBerryMenu
	ld a, c
	and a
	jr z, .cancelled

	; c = selected item ID (8-bit, from buffer)
	ld [wCurItem], a
	; Find this item's position in the berry pocket
	ld hl, wNumBerries
	call CheckItem       ; sets wCurItemQuantity to the slot index
	ld a, 1
	ld [wItemQuantityChange], a
	ld hl, wNumBerries
	call TossItem

	ld a, [wCurItem]
	ld [wScriptVar], a
	call ExitMenu
	ret

.cancelled:
	xor a
	ld [wScriptVar], a
	call ExitMenu
	ret

.no_berries:
	xor a
	ld [wScriptVar], a
	ret

.ShowBerryMenu:
	ld a, [wKurtApricornCount]
	and a
	jr z, .nope

	ld hl, .MenuHeader
	call CopyMenuHeader
	ld a, [wMenuSelection]
	ld [wMenuCursorPosition], a
	xor a
	ldh [hBGMapMode], a
	call InitScrollingMenu
	call UpdateSprites
	call ScrollingMenu
	ld a, [wMenuJoypad]
	cp PAD_B
	jr z, .nope
	ld a, [wMenuSelection]
	cp -1
	jr nz, .got_selection

.nope:
	xor a
.got_selection:
	ld c, a
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 1, 1, 13, 10
	dw .MenuData
	db 1 ; default option
	db 0

.MenuData:
	db SCROLLINGMENU_DISPLAY_ARROWS ; flags
	db 4, 7 ; rows, columns
	db SCROLLINGMENU_ITEMS_NORMAL ; item format
	dbw 0, wKurtApricornCount
	dba .PlaceName
	dba .PlaceQuantity
	dba NULL

.PlaceName:
	ld a, [wMenuSelection]
	and a
	ret z
	farjp PlaceMenuItemName

.PlaceQuantity:
	ld a, [wMenuSelection]
	ld [wCurItem], a
	call .GetBerryQuantity
	ret z
	ld a, [wItemQuantityChange]
	ld [wMenuSelectionQuantity], a
	farjp PlaceMenuItemQuantity

.GetBerryQuantity:
; Counts quantity of [wCurItem] in the berry pocket.
; Inlined from Kurt_GetQuantityOfApricorn to avoid cross-bank call.
	push bc
	push de
	ld hl, wNumBerries
	ld a, [wCurItem]
	push hl
	call GetItemIndexFromID
	ld d, h
	ld e, l
	pop hl
	ld b, 0
.qty_loop
	inc hl
	ld a, [hli]
	cp -1
	jr z, .qty_done
	cp d
	ld a, [hli]
	jr nz, .qty_loop
	cp e
	jr nz, .qty_loop
	ld a, [hl]
	add b
	ld b, a
	jr nc, .qty_loop
	ld b, 99
.qty_done
	ld a, b
	ld [wItemQuantityChange], a
	and a
	pop de
	pop bc
	ret

.WhichBerryText:
	text_far _GreenhouseWhichBerryText
	text_end


ResetGreenhousePlots::
; Called during the daily reset.
; For each plot: if planted and not yet grown, promote to grown.
; WATERED flags are intentionally left alone here —
; they persist until the player harvests so the yield
; bonus is correctly applied. The map scripts clear
; both GROWN and WATERED on harvest.

	ld hl, wGreenhousePlot1
	ld de, EVENT_GREENHOUSE_PLOT1_GROWN
	call .ResetOnePlot

	ld hl, wGreenhousePlot2
	ld de, EVENT_GREENHOUSE_PLOT2_GROWN
	call .ResetOnePlot

	ld hl, wGreenhousePlot3
	ld de, EVENT_GREENHOUSE_PLOT3_GROWN
	call .ResetOnePlot

	ld hl, wGreenhousePlot4
	ld de, EVENT_GREENHOUSE_PLOT4_GROWN
	; fall through

.ResetOnePlot:
; hl = pointer to wGreenhousePlotN
; de = EVENT_GREENHOUSE_PLOTN_GROWN

	; Is anything planted?
	ld a, [hl]
	and a
	ret z

	; Already grown? (don't re-promote)
	push de
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	pop de
	and a
	ret nz

	; Planted and not yet grown — promote it
	ld b, SET_FLAG
	call EventFlagAction
	ret