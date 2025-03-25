GetDayCareMon1LevelGrowth:
	ld hl, wDayCareMon1
	ld de, wTempMon
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes
	farcall CalcLevel
	ld a, [wDayCareMon1Level]
	ld b, a
	ld a, d
	ld e, a
	sub b
	ld d, a
	ret

GetDayCareMon2LevelGrowth:
	ld hl, wDayCareMon2
	ld de, wTempMon
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes
	farcall CalcLevel
	ld a, [wDayCareMon2Level]
	ld b, a
	ld a, d
	ld e, a
	sub b
	ld d, a
	ret
