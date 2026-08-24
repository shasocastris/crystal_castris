GetPlayerLandmark::
; Return the landmark the player is in, in a. A map with no landmark of its own
; (LANDMARK_SPECIAL) reports the landmark of the map that led into it.
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation

	cp LANDMARK_SPECIAL
	ret nz

	ld a, [wBackupMapGroup]
	ld b, a
	ld a, [wBackupMapNumber]
	ld c, a
	jmp GetWorldMapLocation

GetRegion::
; Return the region whose data tables own the current map, in a:
; JOHTO_REGION, KANTO_REGION or ORANGE_REGION.
;
; RegionCheck answers a deliberately different question -- see the note there.
	assert ORANGE_LANDMARK > LANDMARK_FAST_SHIP, \
		"the Orange block must be the highest landmark block"
	call GetPlayerLandmark

	cp ORANGE_LANDMARK
	jr nc, .orange

	cp LANDMARK_FAST_SHIP
	jr z, .johto

	cp KANTO_LANDMARK
	jr nc, .kanto

.johto
	xor a ; JOHTO_REGION
	ret

.kanto
	ld a, KANTO_REGION
	ret

.orange
	ld a, ORANGE_REGION
	ret
