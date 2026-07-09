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
	dw GlaceonEvosAttacks
	dw GliscorEvosAttacks
	dw MagnezoneEvosAttacks
	dw PorygonZEvosAttacks
	dw SirfetchdEvosAttacks
	dw TangrowthEvosAttacks
	dw WyrdeerEvosAttacks
	dw FarigirafEvosAttacks
	dw DudunsparceEvosAttacks
	dw UrsalunaEvosAttacks
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
	dbw 13, SLUDGE
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
	dbw 1, LEER
	dbw 10, FURY_STRIKES
	dbw 15, SCREECH
	dbw 22, SLAM
	dbw 38, AGILITY
	dbw 48, BATON_PASS
	dbw 57, SWIFT
	db 0 ; no more level-up moves

AnnihilapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, KARATE_CHOP
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
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, MUD_SLAP
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
	dbw 30, FURY_STRIKES
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
	dbw 1, LEER
	dbw 9, STOMP
	dbw 17, FURY_STRIKES
	dbw 25, SCARY_FACE
	dbw 33, ROCK_THROW
	dbw 41, STONE_EDGE
	dbw 49, ROCK_SLIDE
	dbw 57, EARTHQUAKE
	db 0 ; no more level-up moves

SylveonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, MUD_SLAP
	dbw 17, SWIFT
	dbw 25, QUICK_ATTACK
	dbw 33, PSYCH_UP
	dbw 41, PSYCHIC_M
	dbw 49, BARRIER
	dbw 57, MOONBLAST
	db 0 ; no more level-up moves

TogekissEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FURY_STRIKES
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
	dbw 49, SCREECH
	dbw 57, BLIZZARD
	db 0 ; no more level-up moves

YanmegaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, FORESIGHT
	dbw 9, QUICK_ATTACK
	dbw 17, WING_ATTACK
	dbw 25, PROTECT
	dbw 33, ANCIENTPOWER
	dbw 41, SCREECH
	dbw 49, SWIFT
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, ICY_WIND
	dbw 17, BITE
	dbw 25, AURORA_BEAM
	dbw 33, DOUBLE_TEAM
	dbw 41, ICE_BEAM
	dbw 49, BARRIER
	dbw 57, BLIZZARD
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, LEER
	dbw 9, MUD_SLAP
	dbw 17, FURY_CUTTER
	dbw 25, SLASH
	dbw 33, SCARY_FACE
	dbw 41, EARTHQUAKE
	dbw 49, SWORDS_DANCE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, THUNDERSHOCK
	dbw 9, THUNDER_WAVE
	dbw 17, SUPERSONIC
	dbw 25, THUNDERBOLT
	dbw 33, SCREECH
	dbw 40, IRON_HEAD
	dbw 48, THUNDER
	dbw 55, FLASH
	dbw 60, FLASH_CANNON
	dbw 70, WILD_CHARGE
	dbw 80, HYPER_BEAM
	db 0 ; no more level-up moves

PorygonZEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
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
	dbw 9, FURY_STRIKES
	dbw 17, AERIAL_ACE
	dbw 25, SLASH
	dbw 33, SWORDS_DANCE
	dbw 38, PROTECT
	dbw 43, NIGHT_SLASH
	dbw 50, IRON_HEAD
	dbw 55, CROSS_CHOP
	dbw 60, AGILITY
	dbw 65, FOCUS_BLAST
	dbw 72, HYPER_BEAM
	dbw 80, BRAVE_BIRD
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

WyrdeerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 9, PSYBEAM
	dbw 17, HYPNOSIS
	dbw 25, STOMP
	dbw 33, CONFUSION
	dbw 41, PSYCHIC_M
	dbw 49, AGILITY
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

FarigirafEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, CONFUSION
	dbw 1, BITE
	dbw 9, AMNESIA
	dbw 17, STOMP
	dbw 25, CRUNCH
	dbw 33, BATON_PASS
	dbw 41, FUTURE_SIGHT
	dbw 49, PSYCHIC_M
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

DudunsparceEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, RAGE
	dbw 1, DEFENSE_CURL
	dbw 9, MUD_SLAP
	dbw 17, GLARE
	dbw 25, BITE
	dbw 33, ANCIENTPOWER
	dbw 41, EARTHQUAKE
	dbw 49, COMET_PUNCH
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

UrsalunaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, SLASH
	dbw 17, REST
	dbw 25, EARTHQUAKE
	dbw 33, CRUNCH
	dbw 41, THRASH
	dbw 49, SWORDS_DANCE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

ENDSECTION
