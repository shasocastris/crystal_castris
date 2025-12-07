DoTypeCompletionBoosts:
; Apply damage boost if player has caught all Pokémon of the move's type
; 12.5% boost (same as badge boost)

    ld a, [wLinkMode]
    and a
    ret nz

    ld a, [wInBattleTowerBattle]
    and a
    ret nz

    ldh a, [hBattleTurn]
    and a
    ret nz

    ; Check if all Pokémon of wCurType are caught
    ld a, [wCurType]
    call CheckAllOfTypeCaught
    jr nc, .no_boost

    ; Apply 12.5% boost
    ld a, [wCurDamage]
    ld h, a
    ld d, a
    ld a, [wCurDamage + 1]
    ld l, a
    ld e, a

    ; Divide by 8
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e

    ; Minimum boost of 1
    ld a, e
    or d
    jr nz, .add_boost
    ld e, 1

.add_boost:
    add hl, de
    jr nc, .update

    ; Cap at $ffff
    ld hl, $ffff

.update:
    ld a, h
    ld [wCurDamage], a
    ld a, l
    ld [wCurDamage + 1], a

.no_boost:
    ret


CheckAllOfTypeCaught:
; Check if all Pokémon of a given type have been caught
; Input: a = type constant (GHOST, FLYING, etc.)
; Output: carry flag set if all caught, clear if not
; Destroys: af, bc, de, hl

    push af

    ; Find the species list for this type
    ld hl, TypePokemonLists

.find_type:
    ld a, [hli]
    cp -1
    jr z, .type_not_found

    ld b, a
    pop af
    push af
    cp b
    jr z, .found_type

    ; Skip the pointer
    inc hl
    inc hl
    jr .find_type

.found_type:
    ; Load the species list pointer
    ld a, [hli]
    ld h, [hl]
    ld l, a

.check_loop:
    ; Get next species
    ld a, [hli]
    ld d, [hl]
    inc hl

    ; Check if BOTH bytes are $FF
    cp $FF
    jr nz, .check_this_species
    ld a, d
    cp $FF
    jr z, .all_caught
    ld a, $FF  ; Restore low byte

    ; Check if this species is caught
.check_this_species:
    push hl
    ld h, d
    ld l, a
    ld [wTempSpecies], a
    call CheckCaughtSpecies
    pop hl

    jr nz, .not_all_caught
    jr .check_loop

.all_caught:
    pop af
    scf  ; Set carry = all caught
    ret

.not_all_caught:
.type_not_found:
    pop af
    and a  ; Clear carry = not all caught
    ret

CheckCaughtSpecies:
; Check if species index in hl has been caught
; Returns: z flag set if caught, nz if not caught
; Preserves: de, bc
	push de
	push bc

    ; Save the ID returned by GetPokemonIDFromIndex
    call GetPokemonIDFromIndex
    ld b, a  ; Save original ID in b

    ; Calculate byte offset
    ld e, a
    ld d, 0
    srl e
    srl e
    srl e

    ld hl, wPokedexCaught  ; or wPokedexSeen
    add hl, de

    ; Calculate bit position using saved ID
    ld a, b  ; Get ID back
	and %111
	ld b, a
	ld a, 1
	jr z, .check_bit

.shift_loop:
	add a  ; Shift left
	dec b
	jr nz, .shift_loop

.check_bit:
	and [hl]  ; Test the bit

	pop bc
	pop de
	ret

INCLUDE "data/types/type_pokemon_lists.asm"
