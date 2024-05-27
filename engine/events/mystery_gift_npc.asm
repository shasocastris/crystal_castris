MysteryGiftNPC:
	ld hl, MysteryGiftItems

.loop
	ld a, [hl]
	inc a
	jr z, .end_of_table
	call Random
	sub [hl]
	jr c, .got_item
	inc hl
	inc hl
	inc hl
	jr .loop

.got_item
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a

.done
	call GetItemIDFromIndex
	ld [wScriptVar], a
	ret

.end_of_table
	ld hl, BRICK_PIECE
	jr .done

INCLUDE "data/items/mystery_gift_items.asm"