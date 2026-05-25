SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw ElectivireEvosAttacks
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

ENDSECTION
