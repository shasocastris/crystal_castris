_DisappearUser:
	xor a
	ldh [hBGMapMode], a
	ldh a, [hBattleTurn]
	and a
	jr z, .player
	call GetEnemyFrontpicCoords
	jr .okay
.player
	call GetPlayerBackpicCoords
.okay
	call ClearBox
	jr FinishAppearDisappearUser

_AppearUserRaiseSub:
	farcall BattleCommand_RaiseSubNoAnim
	jr AppearUser

_AppearUserLowerSub:
	farcall BattleCommand_LowerSubNoAnim

AppearUser:
	xor a
	ldh [hBGMapMode], a
	ldh a, [hBattleTurn]
	and a
	jr z, .player
	call GetEnemyFrontpicCoords
	xor a
	jr .okay
.player
	call GetPlayerBackpicCoords
	ld a, $31
.okay
	ldh [hGraphicStartTile], a
	predef PlaceGraphic
FinishAppearDisappearUser:
	ld a, $1
	ldh [hBGMapMode], a
	ret

GetEnemyFrontpicCoords:
	hlcoord 12, 0
	lb bc, 7, 7
	ret

GetPlayerBackpicCoords:
	hlcoord 2, 6
	lb bc, 6, 6
	ret

DoWeatherModifiers:
	ld de, WeatherTypeModifiers
	ld a, [wBattleWeather]
	ld b, a
	ld a, [wCurType]
	ld c, a

.CheckWeatherType:
	ld a, [de]
	inc de
	cp -1
	jr z, .done_weather_types

	cp b
	jr nz, .NextWeatherType

	ld a, [de]
	cp c
	jr z, .ApplyModifier

.NextWeatherType:
	inc de
	inc de
	jr .CheckWeatherType

.done_weather_types
	ld de, WeatherMoveModifiers

	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	ld c, a

.CheckWeatherMove:
	ld a, [de]
	inc de
	cp -1
	ret z

	cp b
	jr nz, .NextWeatherMove

	ld a, [de]
	cp c
	jr z, .ApplyModifier

.NextWeatherMove:
	inc de
	inc de
	jr .CheckWeatherMove

.ApplyModifier:
	xor a
	ldh [hMultiplicand + 0], a
	ld hl, wCurDamage
	ld a, [hli]
	ldh [hMultiplicand + 1], a
	ld a, [hl]
	ldh [hMultiplicand + 2], a

	inc de
	ld a, [de]
	ldh [hMultiplier], a

	call Multiply

	ld a, 10
	ldh [hDivisor], a
	ld b, 4
	call Divide

	ldh a, [hQuotient + 1]
	and a
	ld bc, -1
	jr nz, .Update

	ldh a, [hQuotient + 2]
	ld b, a
	ldh a, [hQuotient + 3]
	ld c, a
	or b
	jr nz, .Update

	ld bc, 1

.Update:
	ld a, b
	ld [wCurDamage], a
	ld a, c
	ld [wCurDamage + 1], a
	ret

INCLUDE "data/battle/weather_modifiers.asm"

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

    push de
    push bc

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
    pop bc
    pop de
    ret