FindPlantableBerriesInBag:
; Scans wNumBerries for berries that are NOT apricorns.
; Builds a list at wKurtApricornCount+1, count at wKurtApricornCount.
; Returns carry set if no plantable berries found.

	; Clear the output buffer
	xor a
	ld [wKurtApricornCount], a

	; Point to the berry pocket
	ld hl, wNumBerries
	ld a, [hl]
	and a
	jr z, .none  ; pocket empty

	; Walk entries: each is [id_hi, id_lo, qty]
	inc hl       ; skip count byte
	ld b, 0      ; b = number of unique berries found
	ld de, wKurtApricornCount + 1  ; de = write pointer

.loop:
	ld a, [hli]  ; item_id_hi
	cp -1
	jr z, .done  ; hit terminator
	; Save hi byte, read lo byte
	ld c, a
	ld a, [hli]  ; item_id_lo
	inc hl       ; skip quantity byte

	; Filter: must be a berry, not an apricorn
	; Apricorns start at LOW(WHT_APRICORN) = $11
	; Plantable berries are $00-$10
	push hl
	ld h, c      ; h = id_hi
	ld l, a      ; l = id_lo

	; Verify it's in the berry range (hi byte == HIGH(FIRST_BERRY_ITEM))
	ld a, h
	cp HIGH(FIRST_BERRY_ITEM)
	jr nz, .skip

	; Check it's not an apricorn (lo byte < LOW(WHT_APRICORN))
	ld a, l
	cp LOW(WHT_APRICORN)
	jr nc, .skip  ; >= WHT_APRICORN, it's an apricorn

	; Reconstruct the full item ID to store
	ld a, h
	ld [de], a
	inc de
	ld a, l
	ld [de], a
	inc de

	; Check if we've already listed this berry (dedup)
	; For simplicity: since the pocket shouldn't have
	; duplicate entries, we skip dedup. If your build
	; allows stacking duplicates, add a check here.

	inc b

.skip:
	pop hl
	jr .loop

.done:
	; Write the terminator
	ld a, -1
	ld [de], a

	; Store the count
	ld a, b
	ld [wKurtApricornCount], a
	and a
	jr z, .none

	; Success: carry clear
	and a
	ret

.none:
	scf
	ret


SelectBerryForGreenhouse:
; Called as a special from the greenhouse map script.
; Opens a scrolling menu of plantable berries.
; On selection: consumes 1 berry, sets wScriptVar = item ID.
; On cancel: sets wScriptVar = 0.

	; Build the list of plantable berries
	call FindPlantableBerriesInBag
	jr c, .no_berries

	; Set up the scrolling menu
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
	jr z, .cancelled  ; player pressed B

	; c = selected item ID
	; Store it and consume 1 from the bag
	ld [wCurItem], a
	ld a, 1
	ld [wItemQuantityChange], a
	ld hl, wNumBerries
	call TossItem

	; Write the item ID to wScriptVar
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
	xor a ; FALSE
.got_selection:
	ld c, a
	ret

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 1, 1, 13, 10
	dw .MenuData
	db 1 ; default option
	db 0 ; unused

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
	; Reuse Kurt's quantity-counting logic
	; but for the selected berry
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
.qty_loop:
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
.qty_done:
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