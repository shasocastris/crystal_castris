SECTION "Evolutions and Attacks 2", ROMX

EvosAttacksPointers2::
	dw ChikoritaEvosAttacks
	dw BayleefEvosAttacks
	dw MeganiumEvosAttacks
	dw CyndaquilEvosAttacks
	dw QuilavaEvosAttacks
	dw TyphlosionEvosAttacks
	dw TotodileEvosAttacks
	dw CroconawEvosAttacks
	dw FeraligatrEvosAttacks
	dw SentretEvosAttacks
	dw FurretEvosAttacks
	dw HoothootEvosAttacks
	dw NoctowlEvosAttacks
	dw LedybaEvosAttacks
	dw LedianEvosAttacks
	dw SpinarakEvosAttacks
	dw AriadosEvosAttacks
	dw CrobatEvosAttacks
	dw ChinchouEvosAttacks
	dw LanturnEvosAttacks
	dw PichuEvosAttacks
	dw CleffaEvosAttacks
	dw IgglybuffEvosAttacks
	dw TogepiEvosAttacks
	dw TogeticEvosAttacks
	dw NatuEvosAttacks
	dw XatuEvosAttacks
	dw MareepEvosAttacks
	dw FlaaffyEvosAttacks
	dw AmpharosEvosAttacks
	dw BellossomEvosAttacks
	dw MarillEvosAttacks
	dw AzumarillEvosAttacks
	dw SudowoodoEvosAttacks
	dw PolitoedEvosAttacks
	dw HoppipEvosAttacks
	dw SkiploomEvosAttacks
	dw JumpluffEvosAttacks
	dw AipomEvosAttacks
	dw SunkernEvosAttacks
	dw SunfloraEvosAttacks
	dw YanmaEvosAttacks
	dw WooperEvosAttacks
	dw QuagsireEvosAttacks
	dw EspeonEvosAttacks
	dw UmbreonEvosAttacks
	dw MurkrowEvosAttacks
	dw SlowkingEvosAttacks
	dw MisdreavusEvosAttacks
	dw UnownEvosAttacks
	dw WobbuffetEvosAttacks
	dw GirafarigEvosAttacks
	dw PinecoEvosAttacks
	dw ForretressEvosAttacks
	dw DunsparceEvosAttacks
	dw GligarEvosAttacks
	dw SteelixEvosAttacks
	dw SnubbullEvosAttacks
	dw GranbullEvosAttacks
	dw QwilfishEvosAttacks
	dw ScizorEvosAttacks
	dw ShuckleEvosAttacks
	dw HeracrossEvosAttacks
	dw SneaselEvosAttacks
	dw TeddiursaEvosAttacks
	dw UrsaringEvosAttacks
	dw SlugmaEvosAttacks
	dw MagcargoEvosAttacks
	dw SwinubEvosAttacks
	dw PiloswineEvosAttacks
	dw CorsolaEvosAttacks
	dw RemoraidEvosAttacks
	dw OctilleryEvosAttacks
	dw DelibirdEvosAttacks
	dw MantineEvosAttacks
	dw SkarmoryEvosAttacks
	dw HoundourEvosAttacks
	dw HoundoomEvosAttacks
	dw KingdraEvosAttacks
	dw PhanpyEvosAttacks
	dw DonphanEvosAttacks
	dw Porygon2EvosAttacks
	dw StantlerEvosAttacks
	dw SmeargleEvosAttacks
	dw TyrogueEvosAttacks
	dw HitmontopEvosAttacks
	dw SmoochumEvosAttacks
	dw ElekidEvosAttacks
	dw MagbyEvosAttacks
	dw MiltankEvosAttacks
	dw BlisseyEvosAttacks
	dw RaikouEvosAttacks
	dw EnteiEvosAttacks
	dw SuicuneEvosAttacks
	dw LarvitarEvosAttacks
	dw PupitarEvosAttacks
	dw TyranitarEvosAttacks
	dw LugiaEvosAttacks
	dw HoOhEvosAttacks
	dw CelebiEvosAttacks
.IndirectEnd::

ChikoritaEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 8, RAZOR_LEAF
	dbw 12, REFLECT
	dbw 15, POISONPOWDER
	dbw 18, FLAIL
	dbw 22, SYNTHESIS
	dbw 26, LEECH_SEED
	dbw 29, BODY_SLAM
	dbw 33, COUNTER
	dbw 36, LIGHT_SCREEN
	dbw 40, ANCIENTPOWER
	dbw 43, SAFEGUARD
	dbw 46, SWORDS_DANCE
	dbw 50, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 8, RAZOR_LEAF
	dbw 12, REFLECT
	dbw 15, POISONPOWDER
	dbw 19, FLAIL
	dbw 23, SYNTHESIS
	dbw 27, LEECH_SEED
	dbw 31, BODY_SLAM
	dbw 35, COUNTER
	dbw 39, LIGHT_SCREEN
	dbw 44, ANCIENTPOWER
	dbw 47, SAFEGUARD
	dbw 51, SWORDS_DANCE
	dbw 55, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 8, RAZOR_LEAF
	dbw 12, REFLECT
	dbw 15, POISONPOWDER
	dbw 19, FLAIL
	dbw 23, SYNTHESIS
	dbw 27, LEECH_SEED
	dbw 31, BODY_SLAM
	dbw 36, COUNTER
	dbw 41, LIGHT_SCREEN
	dbw 46, ANCIENTPOWER
	dbw 51, SAFEGUARD
	dbw 56, SWORDS_DANCE
	dbw 61, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 6, SMOKESCREEN
	dbw 9, FURY_SWIPES
	dbw 12, EMBER
	dbw 16, REVERSAL
	dbw 19, QUICK_ATTACK
	dbw 23, FORESIGHT
	dbw 27, FLAME_WHEEL
	dbw 31, THRASH
	dbw 36, SWIFT
	dbw 41, SUBMISSION
	dbw 46, FLAMETHROWER
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 6, SMOKESCREEN
	dbw 9, FURY_SWIPES
	dbw 12, EMBER
	dbw 17, REVERSAL
	dbw 21, QUICK_ATTACK
	dbw 26, FORESIGHT
	dbw 31, FLAME_WHEEL
	dbw 37, THRASH
	dbw 42, SWIFT
	dbw 48, SUBMISSION
	dbw 54, FLAMETHROWER
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 6, SMOKESCREEN
	dbw 9, FURY_SWIPES
	dbw 12, EMBER
	dbw 17, REVERSAL
	dbw 21, QUICK_ATTACK
	dbw 26, FORESIGHT
	dbw 31, FLAME_WHEEL
	dbw 38, THRASH
	dbw 45, SWIFT
	dbw 53, SUBMISSION
	dbw 60, FLAMETHROWER
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 7, RAGE
	dbw 10, RAZOR_WIND
	dbw 13, WATER_GUN
	dbw 17, ANCIENTPOWER
	dbw 20, BITE
	dbw 23, THRASH
	dbw 27, SCARY_FACE
	dbw 31, CRUNCH
	dbw 35, SLASH
	dbw 39, ROCK_SLIDE
	dbw 43, SCREECH
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 7, RAGE
	dbw 10, RAZOR_WIND
	dbw 13, WATER_GUN
	dbw 17, ANCIENTPOWER
	dbw 21, BITE
	dbw 24, THRASH
	dbw 28, SCARY_FACE
	dbw 32, CRUNCH
	dbw 37, SLASH
	dbw 41, ROCK_SLIDE
	dbw 45, SCREECH
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 7, RAGE
	dbw 10, RAZOR_WIND
	dbw 13, WATER_GUN
	dbw 17, ANCIENTPOWER
	dbw 21, BITE
	dbw 24, THRASH
	dbw 28, SCARY_FACE
	dbw 32, CRUNCH
	dbw 38, SLASH
	dbw 42, ROCK_SLIDE
	dbw 47, SCREECH
	dbw 58, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, DEFENSE_CURL
	dbw 8, PURSUIT
	dbw 11, QUICK_ATTACK
	dbw 14, REVERSAL
	dbw 17, FURY_SWIPES
	dbw 21, FOCUS_ENERGY
	dbw 25, SLAM
	dbw 29, SLASH
	dbw 33, REST
	dbw 37, DOUBLE_EDGE
	dbw 41, AMNESIA
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 5, DEFENSE_CURL
	dbw 8, PURSUIT
	dbw 11, QUICK_ATTACK
	dbw 14, REVERSAL
	dbw 14, AGILITY
	dbw 18, FURY_SWIPES
	dbw 23, FOCUS_ENERGY
	dbw 28, SLAM
	dbw 33, SLASH
	dbw 38, REST
	dbw 43, DOUBLE_EDGE
	dbw 48, AMNESIA
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, FORESIGHT
	dbw 8, SUPERSONIC
	dbw 11, PECK
	dbw 14, WHIRLWIND
	dbw 16, HYPNOSIS
	dbw 19, WING_ATTACK
	dbw 22, REFLECT
	dbw 25, MIRROR_MOVE
	dbw 28, TAKE_DOWN
	dbw 31, FAINT_ATTACK
	dbw 34, CONFUSION
	dbw 41, SKY_ATTACK
	dbw 48, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 6, FORESIGHT
	dbw 8, SUPERSONIC
	dbw 11, PECK
	dbw 14, WHIRLWIND
	dbw 16, HYPNOSIS
	dbw 19, WING_ATTACK
	dbw 25, REFLECT
	dbw 29, MIRROR_MOVE
	dbw 33, TAKE_DOWN
	dbw 37, FAINT_ATTACK
	dbw 41, CONFUSION
	dbw 49, SKY_ATTACK
	dbw 57, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 8, SUPERSONIC
	dbw 11, LEECH_LIFE
	dbw 15, COMET_PUNCH
	dbw 18, BIDE
	dbw 22, LIGHT_SCREEN
	dbw 22, REFLECT
	dbw 22, SAFEGUARD
	dbw 25, PLAY_ROUGH
	dbw 29, BATON_PASS
	dbw 33, PSYBEAM
	dbw 36, SWIFT
	dbw 39, LIGHT_SCREEN
	dbw 43, AGILITY
	dbw 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 8, SUPERSONIC
	dbw 11, LEECH_LIFE
	dbw 15, COMET_PUNCH
	dbw 18, BIDE
	dbw 24, LIGHT_SCREEN
	dbw 24, REFLECT
	dbw 24, SAFEGUARD
	dbw 27, PLAY_ROUGH
	dbw 33, BATON_PASS
	dbw 38, PSYBEAM
	dbw 42, SWIFT
	dbw 46, LIGHT_SCREEN
	dbw 51, AGILITY
	dbw 60, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 6, SCARY_FACE
	dbw 9, DISABLE
	dbw 11, CONSTRICT
	dbw 14, PURSUIT
	dbw 17, NIGHT_SHADE
	dbw 20, SONICBOOM
	dbw 23, LEECH_LIFE
	dbw 27, BATON_PASS
	dbw 30, FURY_SWIPES
	dbw 33, PSYBEAM
	dbw 37, SPIDER_WEB
	dbw 41, TWINEEDLE
	dbw 45, AGILITY
	dbw 53, PSYCHIC_M
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 6, SCARY_FACE
	dbw 9, DISABLE
	dbw 11, CONSTRICT
	dbw 14, PURSUIT
	dbw 17, NIGHT_SHADE
	dbw 20, SONICBOOM
	dbw 21, DIG
	dbw 25, LEECH_LIFE
	dbw 28, BATON_PASS
	dbw 34, FURY_SWIPES
	dbw 37, PSYBEAM
	dbw 43, SPIDER_WEB
	dbw 48, TWINEEDLE
	dbw 53, AGILITY
	dbw 63, PSYCHIC_M
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 6, SUPERSONIC
	dbw 9, GUST
	dbw 12, BITE
	dbw 15, QUICK_ATTACK
	dbw 19, CONFUSE_RAY
	dbw 25, WHIRLWIND
	dbw 30, WING_ATTACK
	dbw 36, PURSUIT
	dbw 42, MEAN_LOOK
	dbw 48, SCREECH
	dbw 55, HAZE
	dbw 60, FAINT_ATTACK
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, THUNDER_WAVE
	dbw 5, SUPERSONIC
	dbw 13, FLAIL
	dbw 17, WATER_GUN
	dbw 25, SPARK
	dbw 28, MUD_SLAP
	dbw 31, CONFUSE_RAY
	dbw 33, SCREECH
	dbw 37, TAKE_DOWN
	dbw 41, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, THUNDER_WAVE
	dbw 1, SUPERSONIC
	dbw 5, SUPERSONIC
	dbw 13, FLAIL
	dbw 17, WATER_GUN
	dbw 25, SPARK
	dbw 30, MUD_SLAP
	dbw 33, CONFUSE_RAY
	dbw 39, SCREECH
	dbw 45, TAKE_DOWN
	dbw 53, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, CHARM
	dbw 6, TAIL_WHIP
	dbw 8, THUNDER_WAVE
	dbw 11, SWEET_KISS
	dbw 16, THUNDERPUNCH
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, CHARM
	dbw 4, ENCORE
	dbw 8, SING
	dbw 13, SWEET_KISS
	dbw 18, MEGA_PUNCH
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, CHARM
	dbw 4, DEFENSE_CURL
	dbw 9, POUND
	dbw 14, SWEET_KISS
	dbw 18, MEGA_PUNCH
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CHARM
	dbw 7, METRONOME
	dbw 18, SWEET_KISS
	dbw 25, ENCORE
	dbw 31, SAFEGUARD
	dbw 38, PLAY_ROUGH
	dbw 45, MOONBLAST
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, CHARM
	dbw 7, METRONOME
	dbw 18, SWEET_KISS
	dbw 25, ENCORE
	dbw 31, SAFEGUARD
	dbw 38, PLAY_ROUGH
	dbw 45, MOONBLAST
	db 0 ; no more level-up moves

NatuEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 5, QUICK_ATTACK
	dbw 10, NIGHT_SHADE
	dbw 15, FAINT_ATTACK
	dbw 20, TELEPORT
	dbw 25, HAZE
	dbw 30, FUTURE_SIGHT
	dbw 35, STEEL_WING
	dbw 40, CONFUSE_RAY
	dbw 45, DRILL_PECK
	dbw 50, PSYCHIC_M
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 5, QUICK_ATTACK
	dbw 10, NIGHT_SHADE
	dbw 15, FAINT_ATTACK
	dbw 20, TELEPORT
	dbw 25, HAZE
	dbw 35, FUTURE_SIGHT
	dbw 42, STEEL_WING
	dbw 50, CONFUSE_RAY
	dbw 58, DRILL_PECK
	dbw 65, PSYCHIC_M
	db 0 ; no more level-up moves

MareepEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 9, THUNDERSHOCK
	dbw 13, SCREECH
	dbw 16, THUNDER_WAVE
	dbw 20, SAFEGUARD
	dbw 23, COTTON_SPORE
	dbw 27, BODY_SLAM
	dbw 30, LIGHT_SCREEN
	dbw 34, THUNDERBOLT
	dbw 37, THUNDER
	dbw 41, REFLECT
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 9, THUNDERSHOCK
	dbw 13, SCREECH
	dbw 18, THUNDER_WAVE
	dbw 22, SAFEGUARD
	dbw 27, COTTON_SPORE
	dbw 32, BODY_SLAM
	dbw 36, LIGHT_SCREEN
	dbw 40, THUNDERBOLT
	dbw 45, THUNDER
	dbw 51, REFLECT
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 9, THUNDERSHOCK
	dbw 13, SCREECH
	dbw 18, THUNDER_WAVE
	dbw 22, SAFEGUARD
	dbw 27, COTTON_SPORE
	dbw 29, THUNDERPUNCH
	dbw 36, BODY_SLAM
	dbw 42, LIGHT_SCREEN
	dbw 49, THUNDERBOLT
	dbw 57, THUNDER
	dbw 65, REFLECT
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, SWEET_SCENT
	dbw 1, STUN_SPORE
	dbw 1, PETAL_DANCE
	dbw 20, GROWTH
	dbw 30, SYNTHESIS
	dbw 40, MOONBLAST
	dbw 50, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 3, DEFENSE_CURL
	dbw 6, TAIL_WHIP
	dbw 8, PRESENT
	dbw 10, WATER_GUN
	dbw 13, AMNESIA
	dbw 15, ROLLOUT
	dbw 17, BELLY_DRUM
	dbw 21, BUBBLEBEAM
	dbw 25, PERISH_SONG
	dbw 28, PLAY_ROUGH
	dbw 32, FUTURE_SIGHT
	dbw 36, RAIN_DANCE
	dbw 40, LIGHT_SCREEN
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 3, DEFENSE_CURL
	dbw 6, TAIL_WHIP
	dbw 8, PRESENT
	dbw 10, WATER_GUN
	dbw 13, AMNESIA
	dbw 15, ROLLOUT
	dbw 17, BELLY_DRUM
	dbw 25, BUBBLEBEAM
	dbw 30, PERISH_SONG
	dbw 36, PLAY_ROUGH
	dbw 42, FUTURE_SIGHT
	dbw 48, RAIN_DANCE
	dbw 53, LIGHT_SCREEN
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROCK_THROW
	dbw 1, MIMIC
	dbw 10, FLAIL
	dbw 19, LOW_KICK
	dbw 28, ROCK_SLIDE
	dbw 37, FAINT_ATTACK
	dbw 46, SLAM
	dbw 50, SELFDESTRUCT
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 21, BUBBLEBEAM
	dbw 31, HYPNOSIS
	dbw 41, PERISH_SONG
	dbw 51, SWAGGER
	dbw 61, HYDRO_PUMP
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, ABSORB
	dbw 5, SYNTHESIS
	dbw 5, TAIL_WHIP
	dbw 8, ENCORE
	dbw 10, TACKLE
	dbw 13, POISONPOWDER
	dbw 13, STUN_SPORE
	dbw 13, SPORE
	dbw 17, CONFUSION
	dbw 20, LEECH_SEED
	dbw 22, PAY_DAY
	dbw 25, COTTON_SPORE
	dbw 30, GIGA_DRAIN
	dbw 34, REFLECT
	dbw 37, AMNESIA
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	dbbw EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, ABSORB
	dbw 5, SYNTHESIS
	dbw 5, TAIL_WHIP
	dbw 8, ENCORE
	dbw 10, TACKLE
	dbw 13, POISONPOWDER
	dbw 13, STUN_SPORE
	dbw 13, SPORE
	dbw 17, CONFUSION
	dbw 22, LEECH_SEED
	dbw 26, PAY_DAY
	dbw 29, COTTON_SPORE
	dbw 36, GIGA_DRAIN
	dbw 41, REFLECT
	dbw 47, AMNESIA
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 1, ABSORB
	dbw 5, SYNTHESIS
	dbw 5, TAIL_WHIP
	dbw 8, ENCORE
	dbw 10, TACKLE
	dbw 13, POISONPOWDER
	dbw 13, STUN_SPORE
	dbw 13, SPORE
	dbw 17, CONFUSION
	dbw 22, LEECH_SEED
	dbw 26, PAY_DAY
	dbw 33, COTTON_SPORE
	dbw 40, GIGA_DRAIN
	dbw 44, REFLECT
	dbw 49, AMNESIA
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, TAIL_WHIP
	dbw 3, SCREECH
	dbw 6, SAND_ATTACK
	dbw 9, COUNTER
	dbw 12, BATON_PASS
	dbw 16, PURSUIT
	dbw 19, FURY_SWIPES
	dbw 23, SLAM
	dbw 27, SWIFT
	dbw 31, SPITE
	dbw 36, SCREECH
	dbw 41, DOUBLESLAP
	dbw 46, AGILITY
	dbw 50, BEAT_UP
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	dbww EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 4, GROWTH
	dbw 10, MEGA_DRAIN
	dbw 19, SUNNY_DAY
	dbw 25, EMBER
	dbw 31, SYNTHESIS
	dbw 38, FIRE_SPIN
	dbw 46, GIGA_DRAIN
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, POUND
	dbw 4, GROWTH
	dbw 10, RAZOR_LEAF
	dbw 19, SUNNY_DAY
	dbw 25, FLAME_WHEEL
	dbw 31, PETAL_DANCE
	dbw 38, FIRE_PUNCH
	dbw 46, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, FORESIGHT
	dbw 7, QUICK_ATTACK
	dbw 10, LEECH_LIFE
	dbw 13, DOUBLE_TEAM
	dbw 16, WHIRLWIND
	dbw 19, SONICBOOM
	dbw 22, REVERSAL
	dbw 25, DETECT
	dbw 28, ANCIENTPOWER
	dbw 31, SUPERSONIC
	dbw 37, WING_ATTACK
	dbw 43, SCREECH
	db 0 ; no more level-up moves

WooperEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 11, SLAM
	dbw 16, SAFEGUARD
	dbw 21, AMNESIA
	dbw 26, BODY_SLAM
	dbw 31, EARTHQUAKE
	dbw 36, ANCIENTPOWER
	dbw 41, RAIN_DANCE
	dbw 51, MIST
	dbw 51, HAZE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, TAIL_WHIP
	dbw 11, SLAM
	dbw 16, SAFEGUARD
	dbw 23, AMNESIA
	dbw 29, BODY_SLAM
	dbw 35, EARTHQUAKE
	dbw 41, ANCIENTPOWER
	dbw 47, RAIN_DANCE
	dbw 59, MIST
	dbw 59, HAZE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, CONFUSION
	dbw 20, FLAIL
	dbw 23, QUICK_ATTACK
	dbw 27, CHARM
	dbw 30, SWIFT
	dbw 33, TRI_ATTACK
	dbw 36, PSYBEAM
	dbw 42, PSYCH_UP
	dbw 47, PSYCHIC_M
	dbw 52, MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, PURSUIT
	dbw 20, FLAIL
	dbw 23, QUICK_ATTACK
	dbw 27, CHARM
	dbw 30, CONFUSE_RAY
	dbw 33, MOONBLAST
	dbw 36, FAINT_ATTACK
	dbw 42, MEAN_LOOK
	dbw 47, SCREECH
	dbw 52, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 6, QUICK_ATTACK
	dbw 11, PURSUIT
	dbw 16, HAZE
	dbw 21, WING_ATTACK
	dbw 26, NIGHT_SHADE
	dbw 31, FAINT_ATTACK
	dbw 36, DRILL_PECK
	dbw 41, THIEF
	dbw 46, MIRROR_MOVE
	dbw 51, SKY_ATTACK
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, TACKLE
	dbw 6, GROWL
	dbw 10, STOMP
	dbw 15, WATER_GUN
	dbw 18, SAFEGUARD
	dbw 20, CONFUSION
	dbw 25, FUTURE_SIGHT
	dbw 29, DISABLE
	dbw 32, BELLY_DRUM
	dbw 34, HEADBUTT
	dbw 43, AMNESIA
	dbw 43, SWAGGER
	dbw 48, PSYCHIC_M
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, PSYWAVE
	dbw 6, SPITE
	dbw 12, CONFUSE_RAY
	dbw 16, SCREECH
	dbw 19, MEAN_LOOK
	dbw 23, DESTINY_BOND
	dbw 27, PSYBEAM
	dbw 31, SHADOW_BALL
	dbw 36, PAIN_SPLIT
	dbw 46, PERISH_SONG
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COUNTER
	dbw 1, MIRROR_COAT
	dbw 1, SAFEGUARD
	dbw 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 7, CONFUSION
	dbw 10, AMNESIA
	dbw 13, STOMP
	dbw 17, FORESIGHT
	dbw 20, AGILITY
	dbw 25, TAKE_DOWN
	dbw 30, BATON_PASS
	dbw 35, FUTURE_SIGHT
	dbw 41, PSYBEAM
	dbw 48, BEAT_UP
	dbw 54, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 8, SELFDESTRUCT
	dbw 11, PIN_MISSILE
	dbw 15, TAKE_DOWN
	dbw 19, SWIFT
	dbw 22, RAPID_SPIN
	dbw 25, REFLECT
	dbw 29, BIDE
	dbw 33, FLAIL
	dbw 36, EXPLOSION
	dbw 43, SPIKES
	dbw 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, PROTECT
	dbw 8, SELFDESTRUCT
	dbw 11, PIN_MISSILE
	dbw 15, TAKE_DOWN
	dbw 19, SWIFT
	dbw 22, RAPID_SPIN
	dbw 25, REFLECT
	dbw 29, BIDE
	dbw 34, FLAIL
	dbw 39, EXPLOSION
	dbw 49, SPIKES
	dbw 59, DOUBLE_EDGE
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, RAGE
	dbw 5, DEFENSE_CURL
	dbw 9, RAGE
	dbw 13, GLARE
	dbw 15, BIDE
	dbw 18, SPITE
	dbw 22, ANCIENTPOWER
	dbw 26, PURSUIT
	dbw 28, BITE
	dbw 30, SCREECH
	dbw 34, ROCK_SLIDE
	dbw 38, TAKE_DOWN
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 6, SAND_ATTACK
	dbw 9, RAZOR_WIND
	dbw 13, HARDEN
	dbw 17, METAL_CLAW
	dbw 20, QUICK_ATTACK
	dbw 24, WING_ATTACK
	dbw 28, FAINT_ATTACK
	dbw 32, COUNTER
	dbw 36, SLASH
	dbw 44, SCREECH
	dbw 52, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCREECH
	dbw 10, BIND
	dbw 14, ROCK_THROW
	dbw 23, HARDEN
	dbw 25, FLAIL
	dbw 27, RAGE
	dbw 31, ROCK_SLIDE
	dbw 36, SANDSTORM
	dbw 40, BODY_SLAM
	dbw 45, SKULL_BASH
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	dbbw EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCARY_FACE
	dbw 1, LICK
	dbw 4, TAIL_WHIP
	dbw 6, FAINT_ATTACK
	dbw 8, CHARM
	dbw 10, HEAL_BELL
	dbw 13, BITE
	dbw 16, METRONOME
	dbw 19, LICK
	dbw 22, REFLECT
	dbw 26, ROAR
	dbw 30, CRUNCH
	dbw 34, PLAY_ROUGH
	dbw 39, PRESENT
	dbw 43, TAKE_DOWN
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCARY_FACE
	dbw 1, LICK
	dbw 4, TAIL_WHIP
	dbw 6, FAINT_ATTACK
	dbw 8, CHARM
	dbw 10, HEAL_BELL
	dbw 13, BITE
	dbw 16, METRONOME
	dbw 19, LICK
	dbw 22, REFLECT
	dbw 28, ROAR
	dbw 33, CRUNCH
	dbw 38, PLAY_ROUGH
	dbw 44, PRESENT
	dbw 51, TAKE_DOWN
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SPIKES
	dbw 1, TACKLE
	dbw 1, POISON_STING
	dbw 10, HARDEN
	dbw 10, MINIMIZE
	dbw 15, FLAIL
	dbw 19, WATER_GUN
	dbw 24, HAZE
	dbw 28, PIN_MISSILE
	dbw 32, BUBBLEBEAM
	dbw 37, TAKE_DOWN
	dbw 42, SUPERSONIC
	dbw 46, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 6, FOCUS_ENERGY
	dbw 9, REVERSAL
	dbw 12, PURSUIT
	dbw 15, TWINEEDLE
	dbw 18, FALSE_SWIPE
	dbw 21, RAZOR_WIND
	dbw 24, AGILITY
	dbw 27, COUNTER
	dbw 30, METAL_CLAW
	dbw 33, BATON_PASS
	dbw 36, SLASH
	dbw 39, LIGHT_SCREEN
	dbw 42, SWORDS_DANCE
	dbw 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 9, WRAP
	dbw 14, ENCORE
	dbw 23, SAFEGUARD
	dbw 28, BIDE
	dbw 37, REST
	dbw 50, SWEET_SCENT
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, LEER
	dbw 6, HORN_ATTACK
	dbw 12, ENDURE
	dbw 15, HARDEN
	dbw 19, FURY_ATTACK
	dbw 23, BIDE
	dbw 27, COUNTER
	dbw 31, FLAIL
	dbw 35, TAKE_DOWN
	dbw 40, STRENGTH
	dbw 44, REVERSAL
	dbw 49, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, QUICK_ATTACK
	dbw 13, BITE
	dbw 17, SCREECH
	dbw 21, COUNTER
	dbw 25, FAINT_ATTACK
	dbw 29, SPITE
	dbw 33, FURY_SWIPES
	dbw 37, FORESIGHT
	dbw 41, AGILITY
	dbw 45, REFLECT
	dbw 49, SLASH
	dbw 53, BEAT_UP
	dbw 57, METAL_CLAW
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 8, LICK
	dbw 12, FOCUS_ENERGY
	dbw 15, FURY_SWIPES
	dbw 19, SEISMIC_TOSS
	dbw 22, FAINT_ATTACK
	dbw 25, METAL_CLAW
	dbw 29, REST
	dbw 33, TAKE_DOWN
	dbw 36, SLASH
	dbw 40, COUNTER
	dbw 43, SNORE
	dbw 47, CRUNCH
	dbw 50, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 8, LICK
	dbw 12, FOCUS_ENERGY
	dbw 15, FURY_SWIPES
	dbw 19, SEISMIC_TOSS
	dbw 22, FAINT_ATTACK
	dbw 25, METAL_CLAW
	dbw 29, REST
	dbw 34, TAKE_DOWN
	dbw 39, SLASH
	dbw 44, COUNTER
	dbw 49, SNORE
	dbw 54, CRUNCH
	dbw 59, THRASH
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 8, EMBER
	dbw 15, ROCK_THROW
	dbw 22, HARDEN
	dbw 29, AMNESIA
	dbw 36, FLAMETHROWER
	dbw 43, ROCK_SLIDE
	dbw 50, BODY_SLAM
	dbw 56, ACID_ARMOR
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SMOG
	dbw 1, EMBER
	dbw 1, ROCK_THROW
	dbw 8, EMBER
	dbw 15, ROCK_THROW
	dbw 22, HARDEN
	dbw 29, AMNESIA
	dbw 36, FLAMETHROWER
	dbw 48, ROCK_SLIDE
	dbw 60, BODY_SLAM
	dbw 68, ACID_ARMOR
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 10, POWDER_SNOW
	dbw 14, ANCIENTPOWER
	dbw 19, ENDURE
	dbw 24, BITE
	dbw 28, TAKE_DOWN
	dbw 32, ROCK_SLIDE
	dbw 37, MIST
	dbw 41, EARTHQUAKE
	dbw 46, BLIZZARD
	dbw 50, BODY_SLAM
	dbw 55, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 10, POWDER_SNOW
	dbw 14, ANCIENTPOWER
	dbw 19, ENDURE
	dbw 24, BITE
	dbw 28, TAKE_DOWN
	dbw 32, ROCK_SLIDE
	dbw 32, FURY_ATTACK
	dbw 42, MIST
	dbw 49, EARTHQUAKE
	dbw 56, BLIZZARD
	dbw 63, BODY_SLAM
	dbw 70, AMNESIA
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 7, HARDEN
	dbw 10, SCREECH
	dbw 13, BUBBLE
	dbw 16, SAFEGUARD
	dbw 19, RECOVER
	dbw 22, AMNESIA
	dbw 25, BUBBLEBEAM
	dbw 28, ROCK_SLIDE
	dbw 31, SPIKE_CANNON
	dbw 34, MIST
	dbw 37, MIRROR_COAT
	dbw 43, ANCIENTPOWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 6, HAZE
	dbw 11, LOCK_ON
	dbw 17, SUPERSONIC
	dbw 22, PSYBEAM
	dbw 22, AURORA_BEAM
	dbw 22, BUBBLEBEAM
	dbw 28, SCREECH
	dbw 33, FOCUS_ENERGY
	dbw 44, ICE_BEAM
	dbw 55, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 6, HAZE
	dbw 11, CONSTRICT
	dbw 17, SUPERSONIC
	dbw 22, PSYBEAM
	dbw 22, AURORA_BEAM
	dbw 22, BUBBLEBEAM
	dbw 24, OCTAZOOKA
	dbw 31, SCREECH
	dbw 38, FOCUS_ENERGY
	dbw 46, FLAMETHROWER
	dbw 54, ICE_BEAM
	dbw 70, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PRESENT
	dbw 11, AURORA_BEAM
	dbw 21, QUICK_ATTACK
	dbw 31, FUTURE_SIGHT
	dbw 41, RAPID_SPIN
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, BUBBLE
	dbw 10, SUPERSONIC
	dbw 14, HAZE
	dbw 18, BUBBLEBEAM
	dbw 22, TWISTER
	dbw 25, TAKE_DOWN
	dbw 28, SLAM
	dbw 32, AGILITY
	dbw 36, HYDRO_PUMP
	dbw 40, WING_ATTACK
	dbw 49, CONFUSE_RAY
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, PECK
	dbw 13, SAND_ATTACK
	dbw 16, PURSUIT
	dbw 19, SWIFT
	dbw 11, DRILL_PECK
	dbw 25, AGILITY
	dbw 31, WHIRLWIND
	dbw 37, FURY_ATTACK
	dbw 43, SKY_ATTACK
	dbw 49, STEEL_WING
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, EMBER
	dbw 4, PURSUIT
	dbw 7, ROAR
	dbw 10, FIRE_SPIN
	dbw 13, SMOG
	dbw 16, RAGE
	dbw 20, BITE
	dbw 23, COUNTER
	dbw 27, FAINT_ATTACK
	dbw 31, SPITE
	dbw 35, FLAMETHROWER
	dbw 39, REVERSAL
	dbw 43, CRUNCH
	dbw 47, BEAT_UP
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, EMBER
	dbw 4, PURSUIT
	dbw 7, ROAR
	dbw 10, FIRE_SPIN
	dbw 13, SMOG
	dbw 16, RAGE
	dbw 20, BITE
	dbw 23, COUNTER
	dbw 30, FAINT_ATTACK
	dbw 35, SPITE
	dbw 41, FLAMETHROWER
	dbw 46, REVERSAL
	dbw 52, CRUNCH
	dbw 57, BEAT_UP
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 8, SMOKESCREEN
	dbw 12, FLAIL
	dbw 15, LEER
	dbw 18, AURORA_BEAM
	dbw 22, WATER_GUN
	dbw 26, DISABLE
	dbw 29, TWISTER
	dbw 36, OCTAZOOKA
	dbw 40, AGILITY
	dbw 45, DRAGON_RAGE
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 9, DEFENSE_CURL
	dbw 13, WATER_GUN
	dbw 17, FLAIL
	dbw 21, FOCUS_ENERGY
	dbw 25, TAKE_DOWN
	dbw 29, ANCIENTPOWER
	dbw 33, ROLLOUT
	dbw 37, BODY_SLAM
	dbw 41, ENDURE
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 9, DEFENSE_CURL
	dbw 13, WATER_GUN
	dbw 17, FLAIL
	dbw 21, FOCUS_ENERGY
	dbw 24, FURY_ATTACK
	dbw 28, HORN_ATTACK
	dbw 33, ROLLOUT
	dbw 37, BODY_SLAM
	dbw 41, RAPID_SPIN
	dbw 49, EARTHQUAKE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONVERSION2
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 9, AGILITY
	dbw 12, PSYBEAM
	dbw 20, RECOVER
	dbw 24, DEFENSE_CURL
	dbw 32, LOCK_ON
	dbw 36, TRI_ATTACK
	dbw 44, ZAP_CANNON
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 8, LEER
	dbw 11, BITE
	dbw 15, HYPNOSIS
	dbw 19, SPITE
	dbw 23, STOMP
	dbw 27, PSYBEAM
	dbw 31, SAND_ATTACK
	dbw 27, REFLECT
	dbw 35, LIGHT_SCREEN
	dbw 40, TAKE_DOWN
	dbw 44, DISABLE
	dbw 49, CONFUSE_RAY
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SKETCH
	dbw 11, SKETCH
	dbw 21, SKETCH
	dbw 31, SKETCH
	dbw 41, SKETCH
	dbw 51, SKETCH
	dbw 61, SKETCH
	dbw 71, SKETCH
	dbw 81, SKETCH
	dbw 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	dbbbw EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	dbbbw EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	dbbbw EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 50, RAPID_SPIN
	dbw 50, HI_JUMP_KICK
	dbw 50, MACH_PUNCH
	dbw 50, MIND_READER
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROLLING_KICK
	dbw 7, FOCUS_ENERGY
	dbw 13, PURSUIT
	dbw 10, RAPID_SPIN
	dbw 19, QUICK_ATTACK
	dbw 22, MACH_PUNCH
	dbw 25, RAPID_SPIN
	dbw 28, HI_JUMP_KICK
	dbw 31, COUNTER
	dbw 34, MIND_READER
	dbw 37, AGILITY
	dbw 43, DETECT
	dbw 49, TRIPLE_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LICK
	dbw 9, SWEET_KISS
	dbw 13, POWDER_SNOW
	dbw 21, CONFUSION
	dbw 25, SING
	dbw 33, MEAN_LOOK
	dbw 37, PSYCHIC_M
	dbw 45, PERISH_SONG
	dbw 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 9, THUNDERPUNCH
	dbw 17, LIGHT_SCREEN
	dbw 25, SWIFT
	dbw 33, SCREECH
	dbw 41, THUNDERBOLT
	dbw 49, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 7, LEER
	dbw 13, SMOG
	dbw 19, FIRE_PUNCH
	dbw 25, SMOKESCREEN
	dbw 31, SUNNY_DAY
	dbw 37, FLAMETHROWER
	dbw 43, CONFUSE_RAY
	dbw 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 8, DEFENSE_CURL
	dbw 13, STOMP
	dbw 19, MILK_DRINK
	dbw 22, SEISMIC_TOSS
	dbw 26, BIDE
	dbw 30, PRESENT
	dbw 34, ROLLOUT
	dbw 29, REVERSAL
	dbw 43, BODY_SLAM
	dbw 53, HEAL_BELL
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 5, GROWL
	dbw 9, TAIL_WHIP
	dbw 13, SOFTBOILED
	dbw 17, DOUBLESLAP
	dbw 23, MINIMIZE
	dbw 29, SING
	dbw 32, PRESENT
	dbw 35, EGG_BOMB
	dbw 38, METRONOME
	dbw 41, DEFENSE_CURL
	dbw 45, HEAL_BELL
	dbw 49, LIGHT_SCREEN
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, THUNDERSHOCK
	dbw 21, ROAR
	dbw 31, QUICK_ATTACK
	dbw 41, SPARK
	dbw 51, REFLECT
	dbw 61, CRUNCH
	dbw 71, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, EMBER
	dbw 21, ROAR
	dbw 31, FIRE_SPIN
	dbw 41, STOMP
	dbw 51, FLAMETHROWER
	dbw 61, SWAGGER
	dbw 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 11, BUBBLEBEAM
	dbw 21, RAIN_DANCE
	dbw 31, GUST
	dbw 41, AURORA_BEAM
	dbw 51, MIST
	dbw 61, MIRROR_COAT
	dbw 71, HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, SANDSTORM
	dbw 12, STOMP
	dbw 15, SCREECH
	dbw 19, FOCUS_ENERGY
	dbw 22, ROCK_SLIDE
	dbw 25, PURSUIT
	dbw 29, THRASH
	dbw 33, ANCIENTPOWER
	dbw 36, SCARY_FACE
	dbw 40, OUTRAGE
	dbw 43, CRUNCH
	dbw 50, EARTHQUAKE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, SANDSTORM
	dbw 12, STOMP
	dbw 15, SCREECH
	dbw 19, FOCUS_ENERGY
	dbw 22, ROCK_SLIDE
	dbw 25, PURSUIT
	dbw 29, THRASH
	dbw 34, ANCIENTPOWER
	dbw 38, SCARY_FACE
	dbw 42, OUTRAGE
	dbw 47, CRUNCH
	dbw 56, EARTHQUAKE
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 8, SANDSTORM
	dbw 12, STOMP
	dbw 15, SCREECH
	dbw 19, FOCUS_ENERGY
	dbw 22, ROCK_SLIDE
	dbw 25, PURSUIT
	dbw 29, THRASH
	dbw 34, ANCIENTPOWER
	dbw 38, SCARY_FACE
	dbw 42, OUTRAGE
	dbw 47, CRUNCH
	dbw 61, EARTHQUAKE
	dbw 75, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, AEROBLAST
	dbw 11, SAFEGUARD
	dbw 22, GUST
	dbw 33, RECOVER
	dbw 44, HYDRO_PUMP
	dbw 55, RAIN_DANCE
	dbw 66, SWIFT
	dbw 77, WHIRLWIND
	dbw 88, ANCIENTPOWER
	dbw 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SACRED_FIRE
	dbw 11, SAFEGUARD
	dbw 22, GUST
	dbw 33, RECOVER
	dbw 44, FIRE_BLAST
	dbw 55, SUNNY_DAY
	dbw 66, SWIFT
	dbw 77, WHIRLWIND
	dbw 88, ANCIENTPOWER
	dbw 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEECH_SEED
	dbw 1, CONFUSION
	dbw 1, RECOVER
	dbw 1, HEAL_BELL
	dbw 10, SAFEGUARD
	dbw 20, ANCIENTPOWER
	dbw 30, FUTURE_SIGHT
	dbw 40, BATON_PASS
	dbw 50, PERISH_SONG
	db 0 ; no more level-up moves

ENDSECTION
