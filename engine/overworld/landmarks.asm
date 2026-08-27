GetLandmarkCoords:
; Return coordinates (d, e) of landmark e.
	push hl
	ld l, e
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, Landmarks
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ret

GetLandmarkName::
; Copy the name of landmark e to wStringBuffer1.
	push hl
	push de
	push bc

	ld l, e
	ld h, 0
	add hl, hl
	add hl, hl
	ld de, Landmarks + 2
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld de, wStringBuffer1
	ld c, 18
.copy
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .copy

	jmp PopBCDEHL

INCLUDE "data/maps/landmarks.asm"

RegionCheck::
; Return the region the player is in, in e:
; JOHTO_REGION, KANTO_REGION or ORANGE_REGION.
;
; This is NOT the same rule as GetRegion, and the difference is deliberate. The
; Johto League and the border routes -- LANDMARK_VICTORY_ROAD upward -- sit
; inside the Kanto landmark block but belong to Johto for battle music and for
; regional evolutions. GetRegion cannot say the same, because those maps' wild
; data lives in KantoGrassWildMons, so the two answers must stay different.
	assert LANDMARK_FAST_SHIP >= LANDMARK_VICTORY_ROAD, \
		"the S.S.AQUA must sit in the Johto range for the Victory Road check to cover it"
	assert ORANGE_LANDMARK > LANDMARK_FAST_SHIP, \
		"the Orange block must be the highest landmark block"
	call GetPlayerLandmark

	cp ORANGE_LANDMARK
	jr nc, .orange

	cp KANTO_LANDMARK
	jr c, .johto

	cp LANDMARK_VICTORY_ROAD
	jr c, .kanto

.johto
	ld e, JOHTO_REGION
	ret

.kanto
	ld e, KANTO_REGION
	ret

.orange
	ld e, ORANGE_REGION
	ret
