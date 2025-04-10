GetFirstPokemonHappiness:
	ld hl, wPartyMon1Happiness
	ld bc, PARTYMON_STRUCT_LENGTH
	ld de, wPartySpecies
.loop
	ld a, [de]
	cp EGG
	jr nz, .done
	inc de
	add hl, bc
	jr .loop

.done
	ld [wNamedObjectIndex], a
	ld a, [hl]
	ld [wScriptVar], a
	call GetPokemonName
	jmp CopyPokemonName_Buffer1_Buffer3

CheckFirstMonIsEgg:
	ld a, [wPartySpecies]
	ld [wNamedObjectIndex], a
	cp EGG
	ld a, TRUE
	jr z, .egg
	xor a

.egg
	ld [wScriptVar], a
	call GetPokemonName
	jmp CopyPokemonName_Buffer1_Buffer3

ChangeHappiness:
; Perform happiness action c on wCurPartyMon

	ld a, [wCurPartyMon]
	inc a
	ld e, a
	ld d, 0
	ld hl, wPartySpecies - 1
	add hl, de
	ld a, [hl]
	cp EGG
	ret z

	push bc
	ld hl, wPartyMon1Happiness
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	rst AddNTimes
	pop bc

	ld d, h
	ld e, l

	push de
	ld a, [de]
	cp HAPPINESS_THRESHOLD_1
	ld e, 0
	jr c, .ok
	inc e
	cp HAPPINESS_THRESHOLD_2
	jr c, .ok
	inc e

.ok
	dec c
	ld b, 0
	ld hl, HappinessChanges
	add hl, bc
	add hl, bc
	add hl, bc
	ld d, 0
	add hl, de
	ld a, [hl]
	cp $64 ; why not $80?
	pop de

	ld a, [de]
	jr nc, .negative
	add [hl]
	jr nc, .done
	ld a, -1
	jr .done

.negative
	add [hl]
	jr c, .done
	xor a

.done
	ld [de], a
	ld a, [wBattleMode]
	and a
	ret z
	ld a, [wCurPartyMon]
	ld b, a
	ld a, [wPartyMenuCursor]
	cp b
	ret nz
	ld a, [de]
	ld [wBattleMonHappiness], a
	ret

INCLUDE "data/events/happiness_changes.asm"

StepHappiness::
; Raise the party's happiness by HAPPINESS_STEP point every other step cycle.
	ld a, [wPartyCount]
.loop
	and a
	ret z
	dec a
	ld [wCurPartyMon], a
	ld c, HAPPINESS_STEP
	call ChangeHappiness
	ld a, [wCurPartyMon]
	jr .loop

DayCareStep::
; Raise the experience of Day-Care Pokémon every step cycle.

	ld a, [wDayCareMan]
	bit DAYCAREMAN_HAS_MON_F, a
	jr z, .day_care_lady

	ld a, [wDayCareMon1Level] ; level
	cp MAX_LEVEL
	jr nc, .day_care_lady
	ld hl, wDayCareMon1Exp + 2 ; exp
	inc [hl]
	jr nz, .day_care_lady
	dec hl
	inc [hl]
	jr nz, .day_care_lady
	dec hl
	inc [hl]
	ld a, [hl]
	cp HIGH(MAX_DAY_CARE_EXP >> 8)
	jr c, .day_care_lady
	ld [hl], HIGH(MAX_DAY_CARE_EXP >> 8)

.day_care_lady
	ld a, [wDayCareLady]
	bit DAYCARELADY_HAS_MON_F, a
	jr z, .done

	ld a, [wDayCareMon2Level] ; level
	cp MAX_LEVEL
	jr nc, .done
	ld hl, wDayCareMon2Exp + 2 ; exp
	inc [hl]
	jr nz, .done
	dec hl
	inc [hl]
	jr nz, .done
	dec hl
	inc [hl]
	ld a, [hl]
	cp HIGH(MAX_DAY_CARE_EXP >> 8)
	jr c, .done
	ld [hl], HIGH(MAX_DAY_CARE_EXP >> 8)

.done
	ret
