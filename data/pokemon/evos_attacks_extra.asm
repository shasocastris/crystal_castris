SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw ElectivireEvosAttacks
	dw MagmortarEvosAttacks
	dw AmbipomEvosAttacks
	dw AnnihilapeEvosAttacks
	dw LeafeonEvosAttacks
	dw MamoswineEvosAttacks
	dw RhyperiorEvosAttacks
.IndirectEnd::

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 9, THUNDERPUNCH
	dbw 17, LIGHT_SCREEN
	dbw 25, SWIFT
	dbw 33, SCREECH
	dbw 41, THUNDERBOLT
	dbw 49, CROSS_CHOP
	dbw 57, THUNDER
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 7, LEER
	dbw 13, SMOG
	dbw 19, FIRE_PUNCH
	dbw 25, SMOKESCREEN
	dbw 33, SUNNY_DAY
	dbw 41, FLAMETHROWER
	dbw 49, CROSS_CHOP
	dbw 57, FIRE_BLAST
	db 0 ; no more level-up moves

AmbipomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 10, FURY_SWIPES
	dbw 15, SCREECH
	dbw 22, SLAM
	dbw 30, DOUBLESLAP
	dbw 38, AGILITY
	dbw 48, BATON_PASS
	dbw 57, SWIFT
	db 0 ; no more level-up moves

AnnihilapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, KARATE_CHOP
	dbw 17, LOW_KICK
	dbw 25, SEISMIC_TOSS
	dbw 33, RAGE
	dbw 41, CROSS_CHOP
	dbw 49, SUBMISSION
	dbw 57, NIGHT_SHADE
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 9, SAND_ATTACK
	dbw 17, RAZOR_LEAF
	dbw 25, SWIFT
	dbw 33, LEECH_SEED
	dbw 41, GIGA_DRAIN
	dbw 49, SYNTHESIS
	dbw 57, SOLARBEAM
	db 0 ; no more level-up moves

	db 0 ; no more level-up moves

ENDSECTION
