RestaurantHappiness:
; Increase happiness of every non-egg Pokémon in the party.
; Returns wScriptVar = 1 on success, 0 if party is empty.
	ld a, [wPartyCount]
	and a
	jr z, .empty
.loop
	dec a
	ld [wCurPartyMon], a
	push af
	ld c, HAPPINESS_RESTAURANT
	call ChangeHappiness
	pop af
	and a
	jr nz, .loop
	ld a, 1
	ld [wScriptVar], a
	ret

.empty
	xor a
	ld [wScriptVar], a
	ret