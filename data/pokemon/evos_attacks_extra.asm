SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw ElectivireEvosAttacks
	dw MagmortarEvosAttacks
	dw AmbipomEvosAttacks
	dw AnnihilapeEvosAttacks
	dw HonchkrowEvosAttacks
	dw LeafeonEvosAttacks
	dw LickilickyEvosAttacks
	dw MamoswineEvosAttacks
	dw MismagiusEvosAttacks
	dw RhyperiorEvosAttacks
	dw SylveonEvosAttacks
	dw TogekissEvosAttacks
	dw WeavileEvosAttacks
	dw YanmegaEvosAttacks
	dw GliscorEvosAttacks
	dw PorygonZEvosAttacks
	dw SirfetchdEvosAttacks
	dw TangrowthEvosAttacks
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

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 9, WING_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, SWAGGER
	dbw 33, MEAN_LOOK
	dbw 41, PURSUIT
	dbw 49, BEAT_UP
	dbw 57, HYPER_BEAM
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

LickilickyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 7, SUPERSONIC
	dbw 15, STOMP
	dbw 22, DISABLE
	dbw 29, WRAP
	dbw 36, SCREECH
	dbw 44, ROLLOUT
	dbw 52, SLAM
	dbw 58, BODY_SLAM
	db 0 ; no more level-up moves

MamoswineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, POWDER_SNOW
	dbw 10, MIST
	dbw 20, ICY_WIND
	dbw 30, FURY_ATTACK
	dbw 40, TAKE_DOWN
	dbw 50, EARTHQUAKE
	dbw 60, BLIZZARD
	db 0 ; no more level-up moves

MismagiusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, PSYWAVE
	dbw 9, SPITE
	dbw 17, CONFUSION
	dbw 25, MEAN_LOOK
	dbw 33, SCREECH
	dbw 41, PERISH_SONG
	dbw 49, DESTINY_BOND
	dbw 57, SHADOW_BALL
	db 0 ; no more level-up moves

RhyperiorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 9, STOMP
	dbw 17, FURY_ATTACK
	dbw 25, SCARY_FACE
	dbw 33, ROCK_THROW
	dbw 41, HORN_DRILL
	dbw 49, ROCK_SLIDE
	dbw 57, EARTHQUAKE
	db 0 ; no more level-up moves

SylveonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 9, SAND_ATTACK
	dbw 17, SWIFT
	dbw 25, QUICK_ATTACK
	dbw 33, PSYCH_UP
	dbw 41, PSYCHIC_M
	dbw 49, BARRIER
	dbw 57, MOONBLAST
	db 0 ; no more level-up moves

TogekissEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DOUBLESLAP
	dbw 1, GROWL
	dbw 9, ENCORE
	dbw 17, SAFEGUARD
	dbw 25, ANCIENTPOWER
	dbw 33, SWIFT
	dbw 41, WING_ATTACK
	dbw 49, EXTREMESPEED
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, QUICK_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, ICY_WIND
	dbw 33, SLASH
	dbw 41, BEAT_UP
	dbw 49, SCREECH
	dbw 57, BLIZZARD
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, FORESIGHT
	dbw 9, QUICK_ATTACK
	dbw 17, WING_ATTACK
	dbw 25, DETECT
	dbw 33, ANCIENTPOWER
	dbw 41, SCREECH
	dbw 49, SWIFT
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, LEER
	dbw 9, SAND_ATTACK
	dbw 17, FURY_CUTTER
	dbw 25, SLASH
	dbw 33, SCARY_FACE
	dbw 41, EARTHQUAKE
	dbw 49, SWORDS_DANCE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

PorygonZEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PSYBEAM
	dbw 9, AGILITY
	dbw 17, TRI_ATTACK
	dbw 25, RECOVER
	dbw 33, THUNDER
	dbw 41, PSYCHIC_M
	dbw 49, DOUBLE_TEAM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

SirfetchdEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 9, FURY_ATTACK
	dbw 17, SLASH
	dbw 25, SWORDS_DANCE
	dbw 33, DETECT
	dbw 41, CROSS_CHOP
	dbw 49, AGILITY
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BIND
	dbw 1, GROWTH
	dbw 9, MEGA_DRAIN
	dbw 17, SLAM
	dbw 25, SLEEP_POWDER
	dbw 33, STUN_SPORE
	dbw 41, GIGA_DRAIN
	dbw 49, LEECH_SEED
	dbw 57, SOLARBEAM
	db 0 ; no more level-up moves

ENDSECTION
