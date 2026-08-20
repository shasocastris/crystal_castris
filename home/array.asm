IsInArray::
; Find value a for every de bytes in array hl.
; Return index in b and carry if found.

	ld b, 0
	ld c, a
.loop
	ld a, [hl]
	cp -1
	jr z, .NotInArray
	cp c
	jr z, .InArray
	inc b
	add hl, de
	jr .loop

.NotInArray:
	and a
	ret

.InArray:
	scf
	ret

IsInWordArray_NextItem:
	add hl, de
IsInWordArray::
; Same as IsInArray, but for word values. The value is input in bc; index not returned.
	ld a, [hli]
	and [hl]
	inc a
	ret z
	ld a, [hld]
	cp b
	jr nz, IsInWordArray_NextItem
	ld a, [hl]
	cp c
	jr nz, IsInWordArray_NextItem
	scf
	ret

IsInFarWordArray::
; Same as IsInWordArray, but the array lives in another bank.
; in:  a = bank, bc = value, de = 2, hl = array
; out: carry set if found
; clobbers a and hl; preserves bc and de
;
; The carry is set after the bank is restored rather than carried across it,
; because pop af would clobber it.
	ldh [hTempBank], a
	ldh a, [hROMBank]
	push af
	ldh a, [hTempBank]
	rst Bankswitch
	call IsInWordArray
	jr c, .found
	pop af
	rst Bankswitch
	and a
	ret

.found
	pop af
	rst Bankswitch
	scf
	ret

SkipNames::
; Skip a names.
	ld bc, NAME_LENGTH
	and a
	ret z
.loop
	add hl, bc
	dec a
	jr nz, .loop
	ret

_AddNTimes::
; Add bc * a to hl.
; Preserves bc
	and a
	ret z

	push bc
.loop
	rra ; and a from below and above resets carry
	jr nc, .noadd
	add hl, bc
.noadd
	sla c
	rl b
	and a
	jr nz, .loop
.done
	pop bc
	ret
