CheckSeason::
	ld a, [wSeason]
	ld hl, .SeasonTable
	ld de, 2
	call IsInArray
	inc hl
	ld c, [hl]
	ret c

	xor a
	ld c, a
	ret

.SeasonTable:
	db SPRING_F, SPRING
	db SUMMER_F, SUMMER
	db AUTUMN_F, AUTUMN
	db WINTER_F, WINTER
	db -1
