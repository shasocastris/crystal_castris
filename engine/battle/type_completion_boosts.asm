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
;    srl d
;    rr e
;    srl d
;    rr e
;    srl d
;    rr e

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
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ; HL now points to species list

.check_loop:
    ; Get next species word
    ld a, [hli]     ; Load low byte, advance
    ld e, a         ; Save in E
    ld a, [hli]     ; Load high byte, advance
    ld d, a         ; Save in D
    ; DE = species, HL = next position in list

    ; Check terminator
    ld a, e
    cp $FF
    jr nz, .not_terminator
    ld a, d
    cp $FF
    jr z, .all_caught    ; Both $FF = done!

.not_terminator:
    ; DE = species, HL = list pointer
    push hl         ; Save list pointer
    push de         ; Save species

    ; Move species to HL for CheckCaughtSpecies
    ld h, d
    ld l, e

    call CheckCaughtSpecies

    pop de          ; Restore species
    pop hl          ; Restore list pointer

    jr z, .not_all_caught    ; Jump if Z (not caught)
    jr .check_loop

.all_caught:
    pop af
    scf
    ret

.not_all_caught:
    pop af
    and a
    ret

.type_not_found:
    pop af
    and a
    ret


CheckCaughtSpecies:
; Check if species index in hl has been caught
; Input: hl = 16-bit species index
; Returns: z flag set if NOT caught, nz if caught
; Destroys: de
    push bc
    push hl

    ; Convert species index to Pokédex ID, then to flag index
    call GetPokemonIDFromIndex     ; HL → A (Pokédex ID)
    call GetPokemonIndexFromID     ; A → HL (index)
    ld d, h
    ld e, l                        ; DE = index

    ; Check the caught flag
    ld hl, wPokedexCaught
    ld b, CHECK_FLAG
    dec de                         ; Convert 1-based to 0-based
    call FlagAction

    ; Set Z flag based on result in C
    ld a, c
    and a

    pop hl
    pop bc
    ret

INCLUDE "data/types/type_pokemon_lists.asm"