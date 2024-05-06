SECTION "Evolutions and Attacks 1", ROMX

EvosAttacksPointers1::
	dw BulbasaurEvosAttacks
	dw IvysaurEvosAttacks
	dw VenusaurEvosAttacks
	dw CharmanderEvosAttacks
	dw CharmeleonEvosAttacks
	dw CharizardEvosAttacks
	dw SquirtleEvosAttacks
	dw WartortleEvosAttacks
	dw BlastoiseEvosAttacks
	dw CaterpieEvosAttacks
	dw MetapodEvosAttacks
	dw ButterfreeEvosAttacks
	dw WeedleEvosAttacks
	dw KakunaEvosAttacks
	dw BeedrillEvosAttacks
	dw PidgeyEvosAttacks
	dw PidgeottoEvosAttacks
	dw PidgeotEvosAttacks
	dw RattataEvosAttacks
	dw RaticateEvosAttacks
	dw SpearowEvosAttacks
	dw FearowEvosAttacks
	dw EkansEvosAttacks
	dw ArbokEvosAttacks
	dw PikachuEvosAttacks
	dw RaichuEvosAttacks
	dw SandshrewEvosAttacks
	dw SandslashEvosAttacks
	dw NidoranFEvosAttacks
	dw NidorinaEvosAttacks
	dw NidoqueenEvosAttacks
	dw NidoranMEvosAttacks
	dw NidorinoEvosAttacks
	dw NidokingEvosAttacks
	dw ClefairyEvosAttacks
	dw ClefableEvosAttacks
	dw VulpixEvosAttacks
	dw NinetalesEvosAttacks
	dw JigglypuffEvosAttacks
	dw WigglytuffEvosAttacks
	dw ZubatEvosAttacks
	dw GolbatEvosAttacks
	dw OddishEvosAttacks
	dw GloomEvosAttacks
	dw VileplumeEvosAttacks
	dw ParasEvosAttacks
	dw ParasectEvosAttacks
	dw VenonatEvosAttacks
	dw VenomothEvosAttacks
	dw DiglettEvosAttacks
	dw DugtrioEvosAttacks
	dw MeowthEvosAttacks
	dw PersianEvosAttacks
	dw PsyduckEvosAttacks
	dw GolduckEvosAttacks
	dw MankeyEvosAttacks
	dw PrimeapeEvosAttacks
	dw GrowlitheEvosAttacks
	dw ArcanineEvosAttacks
	dw PoliwagEvosAttacks
	dw PoliwhirlEvosAttacks
	dw PoliwrathEvosAttacks
	dw AbraEvosAttacks
	dw KadabraEvosAttacks
	dw AlakazamEvosAttacks
	dw MachopEvosAttacks
	dw MachokeEvosAttacks
	dw MachampEvosAttacks
	dw BellsproutEvosAttacks
	dw WeepinbellEvosAttacks
	dw VictreebelEvosAttacks
	dw TentacoolEvosAttacks
	dw TentacruelEvosAttacks
	dw GeodudeEvosAttacks
	dw GravelerEvosAttacks
	dw GolemEvosAttacks
	dw PonytaEvosAttacks
	dw RapidashEvosAttacks
	dw SlowpokeEvosAttacks
	dw SlowbroEvosAttacks
	dw MagnemiteEvosAttacks
	dw MagnetonEvosAttacks
	dw FarfetchDEvosAttacks
	dw DoduoEvosAttacks
	dw DodrioEvosAttacks
	dw SeelEvosAttacks
	dw DewgongEvosAttacks
	dw GrimerEvosAttacks
	dw MukEvosAttacks
	dw ShellderEvosAttacks
	dw CloysterEvosAttacks
	dw GastlyEvosAttacks
	dw HaunterEvosAttacks
	dw GengarEvosAttacks
	dw OnixEvosAttacks
	dw DrowzeeEvosAttacks
	dw HypnoEvosAttacks
	dw KrabbyEvosAttacks
	dw KinglerEvosAttacks
	dw VoltorbEvosAttacks
	dw ElectrodeEvosAttacks
	dw ExeggcuteEvosAttacks
	dw ExeggutorEvosAttacks
	dw CuboneEvosAttacks
	dw MarowakEvosAttacks
	dw HitmonleeEvosAttacks
	dw HitmonchanEvosAttacks
	dw LickitungEvosAttacks
	dw KoffingEvosAttacks
	dw WeezingEvosAttacks
	dw RhyhornEvosAttacks
	dw RhydonEvosAttacks
	dw ChanseyEvosAttacks
	dw TangelaEvosAttacks
	dw KangaskhanEvosAttacks
	dw HorseaEvosAttacks
	dw SeadraEvosAttacks
	dw GoldeenEvosAttacks
	dw SeakingEvosAttacks
	dw StaryuEvosAttacks
	dw StarmieEvosAttacks
	dw MrMimeEvosAttacks
	dw ScytherEvosAttacks
	dw JynxEvosAttacks
	dw ElectabuzzEvosAttacks
	dw MagmarEvosAttacks
	dw PinsirEvosAttacks
	dw TaurosEvosAttacks
	dw MagikarpEvosAttacks
	dw GyaradosEvosAttacks
	dw LaprasEvosAttacks
	dw DittoEvosAttacks
	dw EeveeEvosAttacks
	dw VaporeonEvosAttacks
	dw JolteonEvosAttacks
	dw FlareonEvosAttacks
	dw PorygonEvosAttacks
	dw OmanyteEvosAttacks
	dw OmastarEvosAttacks
	dw KabutoEvosAttacks
	dw KabutopsEvosAttacks
	dw AerodactylEvosAttacks
	dw SnorlaxEvosAttacks
	dw ArticunoEvosAttacks
	dw ZapdosEvosAttacks
	dw MoltresEvosAttacks
	dw DratiniEvosAttacks
	dw DragonairEvosAttacks
	dw DragoniteEvosAttacks
	dw MewtwoEvosAttacks
	dw MewEvosAttacks
.IndirectEnd::

BulbasaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 12, LIGHT_SCREEN
	dbw 15, POISONPOWDER
	dbw 15, SLEEP_POWDER
	dbw 17, SLUDGE
	dbw 20, RAZOR_LEAF
	dbw 23, RAZOR_WIND
	dbw 25, SWEET_SCENT
	dbw 29, PETAL_DANCE
	dbw 32, GROWTH
	dbw 35, SAFEGUARD
	dbw 39, SYNTHESIS
	dbw 43, SKULL_BASH
	dbw 46, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 12, LIGHT_SCREEN
	dbw 15, POISONPOWDER
	dbw 15, SLEEP_POWDER
	dbw 18, SLUDGE
	dbw 22, RAZOR_LEAF
	dbw 26, RAZOR_WIND
	dbw 29, SWEET_SCENT
	dbw 33, PETAL_DANCE
	dbw 38, GROWTH
	dbw 42, SAFEGUARD
	dbw 47, SYNTHESIS
	dbw 51, SKULL_BASH
	dbw 56, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 12, LIGHT_SCREEN
	dbw 15, POISONPOWDER
	dbw 15, SLEEP_POWDER
	dbw 18, SLUDGE
	dbw 22, RAZOR_LEAF
	dbw 26, RAZOR_WIND
	dbw 29, SWEET_SCENT
	dbw 36, PETAL_DANCE
	dbw 41, GROWTH
	dbw 47, SAFEGUARD
	dbw 53, SYNTHESIS
	dbw 58, SKULL_BASH
	dbw 65, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 7, EMBER
	dbw 13, SMOKESCREEN
	dbw 15, BITE
	dbw 19, RAGE
	dbw 22, BEAT_UP
	dbw 25, SCARY_FACE
	dbw 28, ANCIENTPOWER
	dbw 31, FLAMETHROWER
	dbw 34, BELLY_DRUM
	dbw 37, SLASH
	dbw 40, ROCK_SLIDE
	dbw 43, DRAGON_RAGE
	dbw 46, OUTRAGE
	dbw 49, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 7, EMBER
	dbw 13, SMOKESCREEN
	dbw 15, BITE
	dbw 20, RAGE
	dbw 24, BEAT_UP
	dbw 27, SCARY_FACE
	dbw 31, ANCIENTPOWER
	dbw 34, FLAMETHROWER
	dbw 38, BELLY_DRUM
	dbw 41, SLASH
	dbw 44, ROCK_SLIDE
	dbw 48, DRAGON_RAGE
	dbw 52, OUTRAGE
	dbw 55, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 7, EMBER
	dbw 13, SMOKESCREEN
	dbw 15, BITE
	dbw 20, RAGE
	dbw 24, BEAT_UP
	dbw 27, SCARY_FACE
	dbw 31, ANCIENTPOWER
	dbw 34, FLAMETHROWER
	dbw 36, WING_ATTACK
	dbw 40, BELLY_DRUM
	dbw 44, SLASH
	dbw 49, ROCK_SLIDE
	dbw 54, DRAGON_RAGE
	dbw 58, OUTRAGE
	dbw 64, FIRE_SPIN
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 18, BITE
	dbw 21, CONFUSION
	dbw 23, RAPID_SPIN
	dbw 25, HAZE
	dbw 25, MIST
	dbw 28, PROTECT
	dbw 30, FLAIL
	dbw 33, RAIN_DANCE
	dbw 37, FORESIGHT
	dbw 40, SKULL_BASH
	dbw 43, MIRROR_COAT
	dbw 47, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 19, BITE
	dbw 22, CONFUSION
	dbw 25, RAPID_SPIN
	dbw 28, HAZE
	dbw 28, MIST
	dbw 31, PROTECT
	dbw 34, FLAIL
	dbw 37, RAIN_DANCE
	dbw 41, FORESIGHT
	dbw 45, SKULL_BASH
	dbw 49, MIRROR_COAT
	dbw 53, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 19, BITE
	dbw 22, CONFUSION
	dbw 25, RAPID_SPIN
	dbw 28, HAZE
	dbw 28, MIST
	dbw 31, PROTECT
	dbw 34, FLAIL
	dbw 42, RAIN_DANCE
	dbw 48, FORESIGHT
	dbw 55, SKULL_BASH
	dbw 62, MIRROR_COAT
	dbw 68, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	dbw 8, LEECH_LIFE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 15, HEADBUTT
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 13, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 15, SLEEP_POWDER
	dbw 18, GUST
	dbw 23, WHIRLWIND
	dbw 28, SUPERSONIC
	dbw 34, PSYBEAM
	dbw 40, SAFEGUARD
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	dbw 8, LEECH_LIFE
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 15, HEADBUTT
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FURY_ATTACK
	dbw 15, FOCUS_ENERGY
	dbw 20, TWINEEDLE
	dbw 25, RAGE
	dbw 30, PURSUIT
	dbw 35, PIN_MISSILE
	dbw 40, AGILITY
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 9, GUST
	dbw 12, PURSUIT
	dbw 15, QUICK_ATTACK
	dbw 19, RAZOR_WIND
	dbw 21, WHIRLWIND
	dbw 25, FAINT_ATTACK
	dbw 29, WING_ATTACK
	dbw 33, FORESIGHT
	dbw 37, AGILITY
	dbw 41, EXTREMESPEED
	dbw 47, MIRROR_MOVE
	dbw 51, SKY_ATTACK
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 9, GUST
	dbw 12, PURSUIT
	dbw 15, QUICK_ATTACK
	dbw 21, RAZOR_WIND
	dbw 23, WHIRLWIND
	dbw 28, FAINT_ATTACK
	dbw 33, WING_ATTACK
	dbw 38, FORESIGHT
	dbw 43, AGILITY
	dbw 49, EXTREMESPEED
	dbw 55, MIRROR_MOVE
	dbw 60, SKY_ATTACK
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 9, GUST
	dbw 12, PURSUIT
	dbw 15, QUICK_ATTACK
	dbw 21, RAZOR_WIND
	dbw 23, WHIRLWIND
	dbw 28, FAINT_ATTACK
	dbw 33, WING_ATTACK
	dbw 41, FORESIGHT
	dbw 46, AGILITY
	dbw 55, EXTREMESPEED
	dbw 61, MIRROR_MOVE
	dbw 65, SKY_ATTACK

	db 0 ; no more level-up moves

RattataEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, FURY_SWIPES
	dbw 7, QUICK_ATTACK
	dbw 10, SCREECH
	dbw 13, HYPER_FANG
	dbw 18, BITE
	dbw 20, FOCUS_ENERGY
	dbw 24, FLAME_WHEEL
	dbw 27, PURSUIT
	dbw 31, COUNTER
	dbw 34, SUPER_FANG
	dbw 40, REVERSAL
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, FURY_SWIPES
	dbw 7, QUICK_ATTACK
	dbw 10, SCREECH
	dbw 13, HYPER_FANG
	dbw 18, BITE
	dbw 19, SCARY_FACE
	dbw 26, FLAME_WHEEL
	dbw 30, PURSUIT
	dbw 35, COUNTER
	dbw 40, SUPER_FANG
	dbw 45, REVERSAL
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 7, LEER
	dbw 10, FALSE_SWIPE
	dbw 13, FURY_ATTACK
	dbw 18, SCARY_FACE
	dbw 22, QUICK_ATTACK
	dbw 25, PURSUIT
	dbw 28, TRI_ATTACK
	dbw 31, MIRROR_MOVE
	dbw 34, FAINT_ATTACK
	dbw 37, DRILL_PECK
	dbw 43, AGILITY
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 7, LEER
	dbw 10, FALSE_SWIPE
	dbw 13, FURY_ATTACK
	dbw 18, SCARY_FACE
	dbw 23, QUICK_ATTACK
	dbw 26, PURSUIT
	dbw 29, TRI_ATTACK
	dbw 32, MIRROR_MOVE
	dbw 36, FAINT_ATTACK
	dbw 40, DRILL_PECK
	dbw 47, AGILITY
	db 0 ; no more level-up moves

EkansEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 9, POISON_STING
	dbw 12, PURSUIT
	dbw 15, BITE
	dbw 18, SLAM
	dbw 23, GLARE
	dbw 26, CRUNCH
	dbw 29, SCREECH
	dbw 33, SPITE
	dbw 37, ACID
	dbw 40, BEAT_UP
	dbw 43, HAZE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 9, POISON_STING
	dbw 12, PURSUIT
	dbw 15, BITE
	dbw 18, SLAM
	dbw 21, SLUDGE
	dbw 25, GLARE
	dbw 28, CRUNCH
	dbw 33, SCREECH
	dbw 38, SPITE
	dbw 43, ACID
	dbw 47, BEAT_UP
	dbw 51, HAZE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	dbww EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, GROWL
	dbw 6, TAIL_WHIP
	dbw 8, THUNDER_WAVE
	dbw 11, QUICK_ATTACK
	dbw 13, DOUBLESLAP
	dbw 15, DOUBLE_TEAM
	dbw 17, ENCORE
	dbw 20, SLAM
	dbw 23, REVERSAL
	dbw 26, THUNDERBOLT
	dbw 31, IRON_TAIL
	dbw 35, AGILITY
	dbw 38, BIDE
	dbw 41, THUNDER
	dbw 45, PRESENT
	dbw 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THUNDER_WAVE
	dbw 1, DOUBLE_TEAM
	dbw 1, IRON_TAIL
	dbw 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 6, DEFENSE_CURL
	dbw 9, RAPID_SPIN
	dbw 11, SAND_ATTACK
	dbw 14, FLAIL
	dbw 17, POISON_STING
	dbw 20, SAFEGUARD
	dbw 23, SLASH
	dbw 27, METAL_CLAW
	dbw 30, SWIFT
	dbw 32, COUNTER
	dbw 37, FURY_SWIPES
	dbw 45, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 6, DEFENSE_CURL
	dbw 9, RAPID_SPIN
	dbw 11, SAND_ATTACK
	dbw 14, FLAIL
	dbw 17, POISON_STING
	dbw 21, DIG
	dbw 23, SAFEGUARD
	dbw 24, SLASH
	dbw 28, METAL_CLAW
	dbw 33, SWIFT
	dbw 38, COUNTER
	dbw 42, FURY_SWIPES
	dbw 52, SANDSTORM
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 4, SUPERSONIC
	dbw 8, SCRATCH
	dbw 10, DISABLE
	dbw 12, DOUBLE_KICK
	dbw 15, CHARM
	dbw 17, POISON_STING
	dbw 20, TAKE_DOWN
	dbw 23, TAIL_WHIP
	dbw 27, FOCUS_ENERGY
	dbw 30, BITE
	dbw 34, COUNTER
	dbw 38, FURY_SWIPES
	dbw 43, BEAT_UP
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	dbww EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 4, SUPERSONIC
	dbw 8, SCRATCH
	dbw 10, DISABLE
	dbw 12, DOUBLE_KICK
	dbw 15, CHARM
	dbw 19, POISON_STING
	dbw 23, TAKE_DOWN
	dbw 27, TAIL_WHIP
	dbw 31, FOCUS_ENERGY
	dbw 36, BITE
	dbw 41, COUNTER
	dbw 46, FURY_SWIPES
	dbw 50, BEAT_UP
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCRATCH
	dbw 1, DOUBLE_KICK
	dbw 1, TAIL_WHIP
	dbw 23, BODY_SLAM
	dbw 33, EARTHQUAKE
	dbw 43, SLUDGE_BOMB
	dbw 53, CRUNCH
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, TACKLE
	dbw 4, SUPERSONIC
	dbw 8, HORN_ATTACK
	dbw 10, DISABLE
	dbw 12, DOUBLE_KICK
	dbw 15, AMNESIA
	dbw 17, POISON_STING
	dbw 20, CONFUSION
	dbw 23, FOCUS_ENERGY
	dbw 27, TAKE_DOWN
	dbw 30, FURY_ATTACK
	dbw 34, BEAT_UP
	dbw 38, HORN_DRILL
	dbw 43, COUNTER
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	dbww EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, TACKLE
	dbw 4, SUPERSONIC
	dbw 8, HORN_ATTACK
	dbw 10, DISABLE
	dbw 12, DOUBLE_KICK
	dbw 15, AMNESIA
	dbw 19, POISON_STING
	dbw 23, CONFUSION
	dbw 27, FOCUS_ENERGY
	dbw 31, TAKE_DOWN
	dbw 36, FURY_ATTACK
	dbw 41, BEAT_UP
	dbw 46, HORN_DRILL
	dbw 50, COUNTER
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HORN_ATTACK
	dbw 1, DOUBLE_KICK
	dbw 1, POISON_STING
	dbw 23, THRASH
	dbw 33, EARTHQUAKE
	dbw 43, SLUDGE_BOMB
	dbw 53, SKULL_BASH
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	dbww EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 4, ENCORE
	dbw 8, SING
	dbw 11, METRONOME
	dbw 13, DOUBLESLAP
	dbw 16, BELLY_DRUM
	dbw 19, MINIMIZE
	dbw 23, PRESENT
	dbw 26, DEFENSE_CURL
	dbw 30, AMNESIA
	dbw 34, METRONOME
	dbw 37, MIMIC
	dbw 39, MOONBLAST
	dbw 43, MOONLIGHT
	dbw 53, LIGHT_SCREEN
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, MOONBLAST
	dbw 1, METRONOME
	dbw 1, MOONLIGHT
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	dbww EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, TAIL_WHIP
	dbw 7, QUICK_ATTACK
	dbw 10, FAINT_ATTACK
	dbw 13, ROAR
	dbw 16, DISABLE
	dbw 19, CONFUSE_RAY
	dbw 22, FLAIL
	dbw 25, SAFEGUARD
	dbw 28, HYPNOSIS
	dbw 31, FLAMETHROWER
	dbw 34, SPITE
	dbw 37, FIRE_SPIN
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, QUICK_ATTACK
	dbw 33, SAFEGUARD
	dbw 38, CONFUSE_RAY
	dbw 43, FIRE_SPIN
	dbw 53, FLAMETHROWER
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	dbww EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 4, DEFENSE_CURL
	dbw 9, POUND
	dbw 12, FAINT_ATTACK
	dbw 14, DISABLE
	dbw 19, ROLLOUT
	dbw 22, PERISH_SONG
	dbw 24, DOUBLESLAP
	dbw 29, REST
	dbw 32, PRESENT
	dbw 34, BODY_SLAM
	dbw 39, PLAY_ROUGH
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 1, DISABLE
	dbw 1, BODY_SLAM
	dbw 1, PLAY_ROUGH
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 6, SUPERSONIC
	dbw 9, GUST
	dbw 12, BITE
	dbw 15, QUICK_ATTACK
	dbw 19, CONFUSE_RAY
	dbw 23, WHIRLWIND
	dbw 27, WING_ATTACK
	dbw 32, PURSUIT
	dbw 36, MEAN_LOOK
	dbw 41, SCREECH
	dbw 46, HAZE
	dbw 50, FAINT_ATTACK
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
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

OddishEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 7, SWEET_SCENT
	dbw 11, SYNTHESIS
	dbw 14, POISONPOWDER
	dbw 16, STUN_SPORE
	dbw 18, SLEEP_POWDER
	dbw 20, RAZOR_LEAF
	dbw 23, ACID
	dbw 28, SWORDS_DANCE
	dbw 32, MOONLIGHT
	dbw 35, FLAIL
	dbw 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	dbww EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	dbww EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 7, SWEET_SCENT
	dbw 11, SYNTHESIS
	dbw 14, POISONPOWDER
	dbw 16, STUN_SPORE
	dbw 18, SLEEP_POWDER
	dbw 20, RAZOR_LEAF
	dbw 24, ACID
	dbw 30, SWORDS_DANCE
	dbw 35, MOONLIGHT
	dbw 39, FLAIL
	dbw 44, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, SWEET_SCENT
	dbw 1, STUN_SPORE
	dbw 1, PETAL_DANCE
	dbw 20, GROWTH
	dbw 30, MOONLIGHT
	dbw 40, FAINT_ATTACK
	dbw 50, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 7, STUN_SPORE
	dbw 10, LIGHT_SCREEN
	dbw 13, POISONPOWDER
	dbw 16, PURSUIT
	dbw 19, LEECH_LIFE
	dbw 22, FALSE_SWIPE
	dbw 25, SPORE
	dbw 28, PSYBEAM
	dbw 31, SLASH
	dbw 34, FLAIL
	dbw 37, GROWTH
	dbw 40, SCREECH
	dbw 43, GIGA_DRAIN
	dbw 46, COUNTER
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 7, STUN_SPORE
	dbw 10, LIGHT_SCREEN
	dbw 13, POISONPOWDER
	dbw 16, PURSUIT
	dbw 19, LEECH_LIFE
	dbw 22, FALSE_SWIPE
	dbw 28, SPORE
	dbw 32, PSYBEAM
	dbw 37, SLASH
	dbw 41, FLAIL
	dbw 46, GROWTH
	dbw 50, SCREECH
	dbw 55, GIGA_DRAIN
	dbw 60, COUNTER
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 9, SUPERSONIC
	dbw 13, BATON_PASS
	dbw 17, CONFUSION
	dbw 20, POISONPOWDER
	dbw 22, SCREECH
	dbw 25, LEECH_LIFE
	dbw 28, STUN_SPORE
	dbw 30, GIGA_DRAIN
	dbw 33, PSYBEAM
	dbw 36, SLEEP_POWDER
	dbw 41, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 1, SUPERSONIC
	dbw 9, SUPERSONIC
	dbw 13, BATON_PASS
	dbw 17, CONFUSION
	dbw 20, POISONPOWDER
	dbw 22, SCREECH
	dbw 25, LEECH_LIFE
	dbw 28, STUN_SPORE
	dbw 30, GIGA_DRAIN
	dbw 30, PIN_MISSILE
	dbw 36, PSYBEAM
	dbw 42, SLEEP_POWDER
	dbw 52, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 5, GROWL
	dbw 9, MAGNITUDE
	dbw 17, PURSUIT
	dbw 21, SCREECH
	dbw 25, SAND_ATTACK
	dbw 29, ANCIENTPOWER
	dbw 33, SLASH
	dbw 37, FAINT_ATTACK
	dbw 41, EARTHQUAKE
	dbw 45, BEAT_UP
	dbw 49, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 5, GROWL
	dbw 9, MAGNITUDE
	dbw 17, PURSUIT
	dbw 21, SCREECH
	dbw 25, SAND_ATTACK
	dbw 25, DIG
	dbw 31, ANCIENTPOWER
	dbw 37, SLASH
	dbw 43, FAINT_ATTACK
	dbw 49, EARTHQUAKE
	dbw 55, BEAT_UP
	dbw 61, FISSURE
	dbw 66, TRI_ATTACK
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 11, BITE
	dbw 15, HYPNOSIS
	dbw 20, PAY_DAY
	dbw 24, CHARM
	dbw 28, FAINT_ATTACK
	dbw 32, SPITE
	dbw 35, SCREECH
	dbw 38, AMNESIA
	dbw 41, FURY_SWIPES
	dbw 46, SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 11, BITE
	dbw 15, HYPNOSIS
	dbw 20, PAY_DAY
	dbw 24, CHARM
	dbw 27, SWIFT
	dbw 29, FAINT_ATTACK
	dbw 34, SPITE
	dbw 38, SCREECH
	dbw 42, AMNESIA
	dbw 46, FURY_SWIPES
	dbw 53, SLASH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 5, TAIL_WHIP
	dbw 7, HYPNOSIS
	dbw 10, DISABLE
	dbw 13, FORESIGHT
	dbw 16, CONFUSION
	dbw 20, LIGHT_SCREEN
	dbw 23, SCREECH
	dbw 27, PSYBEAM
	dbw 31, PSYCH_UP
	dbw 36, ICE_BEAM
	dbw 40, FURY_SWIPES
	dbw 45, CROSS_CHOP
	dbw 50, HYDRO_PUMP
	dbw 55, FUTURE_SIGHT
	dbw 61, PSYCHIC_M
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 5, TAIL_WHIP
	dbw 7, HYPNOSIS
	dbw 10, DISABLE
	dbw 13, FORESIGHT
	dbw 16, CONFUSION
	dbw 20, LIGHT_SCREEN
	dbw 23, SCREECH
	dbw 27, PSYBEAM
	dbw 31, PSYCH_UP
	dbw 38, ICE_BEAM
	dbw 44, FURY_SWIPES
	dbw 51, CROSS_CHOP
	dbw 58, HYDRO_PUMP
	dbw 64, FUTURE_SIGHT
	dbw 70, PSYCHIC_M
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, LOW_KICK
	dbw 13, COUNTER
	dbw 15, KARATE_CHOP
	dbw 18, BEAT_UP
	dbw 21, FURY_SWIPES
	dbw 24, REVERSAL
	dbw 27, FOCUS_ENERGY
	dbw 30, FORESIGHT
	dbw 33, SEISMIC_TOSS
	dbw 36, MEDITATE
	dbw 39, CROSS_CHOP
	dbw 42, ROCK_SLIDE
	dbw 45, SCREECH
	dbw 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 9, LOW_KICK
	dbw 13, COUNTER
	dbw 15, KARATE_CHOP
	dbw 18, BEAT_UP
	dbw 21, FURY_SWIPES
	dbw 24, REVERSAL
	dbw 27, FOCUS_ENERGY
	dbw 27, RAGE
	dbw 32, FORESIGHT
	dbw 36, SEISMIC_TOSS
	dbw 40, MEDITATE
	dbw 45, CROSS_CHOP
	dbw 49, ROCK_SLIDE
	dbw 54, SCREECH
	dbw 63, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	dbww EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, ROAR
	dbw 9, EMBER
	dbw 14, SAFEGUARD
	dbw 18, LEER
	dbw 22, CRUNCH
	dbw 26, TAKE_DOWN
	dbw 30, BODY_SLAM
	dbw 34, FLAME_WHEEL
	dbw 38, THRASH
	dbw 42, AGILITY
	dbw 46, FIRE_SPIN
	dbw 50, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ROAR
	dbw 1, LEER
	dbw 30, CRUNCH
	dbw 40, FLAME_WHEEL
	dbw 50, EXTREMESPEED
	dbw 60, OUTRAGE
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 7, HYPNOSIS
	dbw 13, WATER_GUN
	dbw 16, BUBBLEBEAM
	dbw 19, DOUBLESLAP
	dbw 22, MIST
	dbw 22, HAZE
	dbw 25, RAIN_DANCE
	dbw 28, MIND_READER
	dbw 31, BODY_SLAM
	dbw 37, BELLY_DRUM
	dbw 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	dbww EVOLVE_ITEM, WATER_STONE, POLIWRATH
	dbww EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 7, HYPNOSIS
	dbw 13, WATER_GUN
	dbw 16, BUBBLEBEAM
	dbw 19, DOUBLESLAP
	dbw 22, MIST
	dbw 22, HAZE
	dbw 27, RAIN_DANCE
	dbw 31, MIND_READER
	dbw 35, BODY_SLAM
	dbw 43, BELLY_DRUM
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 21, BUBBLEBEAM
	dbw 31, HYPNOSIS
	dbw 41, STRENGTH
	dbw 51, MIND_READER
	dbw 61, HYDRO_PUMP
	db 0 ; no more level-up moves

AbraEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 9, ENCORE
	dbw 18, LIGHT_SCREEN
	dbw 26, BARRIER
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	dbww EVOLVE_ITEM, MIST_STONE, ALAKAZAM
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 9, ENCORE
	dbw 15, KINESIS
	dbw 18, LIGHT_SCREEN
	dbw 26, BARRIER
	dbw 16, CONFUSION
	dbw 18, DISABLE
	dbw 21, PSYBEAM
	dbw 23, LIGHT_SCREEN
	dbw 26, RECOVER
	dbw 29, BARRIER
	dbw 31, FUTURE_SIGHT
	dbw 38, PSYCHIC_M
	dbw 45, REFLECT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	dbw 9, ENCORE
	dbw 15, KINESIS
	dbw 18, LIGHT_SCREEN
	dbw 26, BARRIER
	dbw 16, CONFUSION
	dbw 18, DISABLE
	dbw 21, PSYBEAM
	dbw 23, LIGHT_SCREEN
	dbw 26, RECOVER
	dbw 29, BARRIER
	dbw 31, FUTURE_SIGHT
	dbw 38, PSYCHIC_M
	dbw 45, REFLECT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 7, FOCUS_ENERGY
	dbw 13, KARATE_CHOP
	dbw 17, LIGHT_SCREEN
	dbw 19, SEISMIC_TOSS
	dbw 22, MEDITATE
	dbw 25, FORESIGHT
	dbw 28, ROLLING_KICK
	dbw 31, VITAL_THROW
	dbw 34, ENCORE
	dbw 37, CROSS_CHOP
	dbw 43, SCARY_FACE
	dbw 49, SUBMISSION
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	dbww EVOLVE_ITEM, MIST_STONE, MACHAMP
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 8, FOCUS_ENERGY
	dbw 15, KARATE_CHOP
	dbw 17, LIGHT_SCREEN
	dbw 19, SEISMIC_TOSS
	dbw 22, MEDITATE
	dbw 25, FORESIGHT
	dbw 30, ROLLING_KICK
	dbw 34, VITAL_THROW
	dbw 38, ENCORE
	dbw 43, CROSS_CHOP
	dbw 52, SCARY_FACE
	dbw 61, SUBMISSION
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LOW_KICK
	dbw 1, LEER
	dbw 8, FOCUS_ENERGY
	dbw 15, KARATE_CHOP
	dbw 17, LIGHT_SCREEN
	dbw 19, SEISMIC_TOSS
	dbw 22, MEDITATE
	dbw 25, FORESIGHT
	dbw 27, STRENGTH
	dbw 30, ROLLING_KICK
	dbw 34, VITAL_THROW
	dbw 38, ENCORE
	dbw 43, CROSS_CHOP
	dbw 52, SCARY_FACE
	dbw 61, SUBMISSION
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 6, GROWTH
	dbw 8, ENCORE
	dbw 11, WRAP
	dbw 13, LEECH_LIFE
	dbw 15, SLEEP_POWDER
	dbw 17, POISONPOWDER
	dbw 19, STUN_SPORE
	dbw 20, SYNTHESIS
	dbw 23, ACID
	dbw 27, SWORDS_DANCE
	dbw 30, SWEET_SCENT
	dbw 33, REFLECT
	dbw 37, RAZOR_LEAF
	dbw 45, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	dbww EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 6, GROWTH
	dbw 8, ENCORE
	dbw 11, WRAP
	dbw 13, LEECH_LIFE
	dbw 15, SLEEP_POWDER
	dbw 17, POISONPOWDER
	dbw 19, STUN_SPORE
	dbw 20, SYNTHESIS
	dbw 24, SLUDGE
	dbw 28, SWORDS_DANCE
	dbw 33, SWEET_SCENT
	dbw 38, REFLECT
	dbw 42, RAZOR_LEAF
	dbw 54, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SLUDGE
	dbw 1, SLEEP_POWDER
	dbw 1, SWEET_SCENT
	dbw 1, RAZOR_LEAF
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 6, SUPERSONIC
	dbw 12, CONSTRICT
	dbw 15, RAPID_SPIN
	dbw 19, ACID
	dbw 22, HAZE
	dbw 25, BUBBLEBEAM
	dbw 27, SAFEGUARD
	dbw 30, WRAP
	dbw 33, MIRROR_COAT
	dbw 36, BARRIER
	dbw 40, AURORA_BEAM
	dbw 43, SCREECH
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 6, SUPERSONIC
	dbw 12, CONSTRICT
	dbw 15, RAPID_SPIN
	dbw 19, ACID
	dbw 22, HAZE
	dbw 25, BUBBLEBEAM
	dbw 27, SAFEGUARD
	dbw 29, WRAP
	dbw 34, MIRROR_COAT
	dbw 38, BARRIER
	dbw 43, AURORA_BEAM
	dbw 47, SCREECH
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 6, DEFENSE_CURL
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 26, HARDEN
	dbw 31, ROLLOUT
	dbw 36, EARTHQUAKE
	dbw 41, EXPLOSION
	dbw 46, MEGA_PUNCH
	dbw 51, ROCK_SLIDE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	dbww EVOLVE_ITEM, MIST_STONE, GOLEM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 6, DEFENSE_CURL
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 27, HARDEN
	dbw 34, ROLLOUT
	dbw 41, EARTHQUAKE
	dbw 48, EXPLOSION
	dbw 55, MEGA_PUNCH
	dbw 62, ROCK_SLIDE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 6, DEFENSE_CURL
	dbw 11, ROCK_THROW
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 27, HARDEN
	dbw 34, ROLLOUT
	dbw 41, EARTHQUAKE
	dbw 48, EXPLOSION
	dbw 55, MEGA_PUNCH
	dbw 62, ROCK_SLIDE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 8, TAIL_WHIP
	dbw 11, DOUBLE_KICK
	dbw 13, EMBER
	dbw 16, QUICK_ATTACK
	dbw 19, STOMP
	dbw 23, FLAME_WHEEL
	dbw 26, FIRE_SPIN
	dbw 30, HYPNOSIS
	dbw 34, TAKE_DOWN
	dbw 37, CHARM
	dbw 43, AGILITY
	dbw 48, THRASH
	dbw 53, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 8, TAIL_WHIP
	dbw 11, DOUBLE_KICK
	dbw 13, EMBER
	dbw 16, QUICK_ATTACK
	dbw 19, STOMP
	dbw 23, FLAME_WHEEL
	dbw 26, FIRE_SPIN
	dbw 30, HYPNOSIS
	dbw 34, TAKE_DOWN
	dbw 37, CHARM
	dbw 39, FURY_ATTACK
	dbw 47, AGILITY
	dbw 54, THRASH
	dbw 61, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, SLOWBRO
	dbww EVOLVE_ITEM, KINGS_ROCK, SLOWKING
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
	dbw 48, PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
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
	dbw 36, WITHDRAW
	dbw 46, AMNESIA
	dbw 54, PSYCHIC_M
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 6, THUNDERSHOCK
	dbw 11, SUPERSONIC
	dbw 16, SONICBOOM
	dbw 21, THUNDER_WAVE
	dbw 24, FLASH
	dbw 27, LOCK_ON
	dbw 33, SWIFT
	dbw 39, SCREECH
	dbw 45, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, THUNDERSHOCK
	dbw 1, SUPERSONIC
	dbw 1, SONICBOOM
	dbw 6, THUNDERSHOCK
	dbw 11, SUPERSONIC
	dbw 16, SONICBOOM
	dbw 21, THUNDER_WAVE
	dbw 24, FLASH
	dbw 27, LOCK_ON
	dbw 29, TRI_ATTACK
	dbw 35, SWIFT
	dbw 43, SCREECH
	dbw 53, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 7, SAND_ATTACK
	dbw 10, GUST
	dbw 13, LEER
	dbw 16, QUICK_ATTACK
	dbw 19, FURY_ATTACK
	dbw 22, FLAIL
	dbw 25, SWORDS_DANCE
	dbw 28, ROCK_SMASH
	dbw 31, AGILITY
	dbw 34, MIRROR_MOVE
	dbw 37, SLASH
	dbw 41, FORESIGHT
	dbw 44, FALSE_SWIPE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 5, QUICK_ATTACK
	dbw 9, PURSUIT
	dbw 13, FURY_ATTACK
	dbw 17, SUPERSONIC
	dbw 21, QUICK_ATTACK
	dbw 25, RAGE
	dbw 29, FAINT_ATTACK
	dbw 33, DRILL_PECK
	dbw 35, HAZE
	dbw 37, AGILITY
	dbw 41, FLAIL
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 5, QUICK_ATTACK
	dbw 9, PURSUIT
	dbw 13, FURY_ATTACK
	dbw 17, SUPERSONIC
	dbw 21, QUICK_ATTACK
	dbw 25, RAGE
	dbw 29, FAINT_ATTACK
	dbw 30, TRI_ATTACK
	dbw 38, DRILL_PECK
	dbw 42, HAZE
	dbw 47, AGILITY
	dbw 52, FLAIL
	db 0 ; no more level-up moves

SeelEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 5, GROWL
	dbw 10, LICK
	dbw 16, AURORA_BEAM
	dbw 18, DISABLE
	dbw 21, REST
	dbw 26, BUBBLEBEAM
	dbw 32, TAKE_DOWN
	dbw 35, PECK
	dbw 37, ICE_BEAM
	dbw 43, ENCORE
	dbw 48, SAFEGUARD
	dbw 52, PERISH_SONG
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 5, GROWL
	dbw 10, LICK
	dbw 16, AURORA_BEAM
	dbw 18, DISABLE
	dbw 21, REST
	dbw 26, BUBBLEBEAM
	dbw 32, TAKE_DOWN
	dbw 37, PECK
	dbw 43, ICE_BEAM
	dbw 54, ENCORE
	dbw 60, SAFEGUARD
	dbw 65, PERISH_SONG
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, POUND
	dbw 5, HARDEN
	dbw 10, DISABLE
	dbw 12, LICK
	dbw 16, SLUDGE
	dbw 20, MEAN_LOOK
	dbw 23, MINIMIZE
	dbw 27, HAZE
	dbw 31, SCREECH
	dbw 40, ACID_ARMOR
	dbw 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, POUND
	dbw 5, HARDEN
	dbw 10, DISABLE
	dbw 12, LICK
	dbw 16, SLUDGE
	dbw 20, MEAN_LOOK
	dbw 23, MINIMIZE
	dbw 27, HAZE
	dbw 31, SCREECH
	dbw 45, ACID_ARMOR
	dbw 60, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	dbww EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, WITHDRAW
	dbw 9, SUPERSONIC
	dbw 13, BUBBLEBEAM
	dbw 17, AURORA_BEAM
	dbw 21, RAPID_SPIN
	dbw 25, PROTECT
	dbw 29, TAKE_DOWN
	dbw 33, LEER
	dbw 27, BARRIER
	dbw 41, CLAMP
	dbw 45, SCREECH
	dbw 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WITHDRAW
	dbw 1, SUPERSONIC
	dbw 1, AURORA_BEAM
	dbw 1, PROTECT
	dbw 25, SCREECH
	dbw 33, SPIKES
	dbw 41, SPIKE_CANNON
	dbw 49, ICE_BEAM
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 8, SPITE
	dbw 10, PSYWAVE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 19, PERISH_SONG
	dbw 21, NIGHT_SHADE
	dbw 24, SHADOW_BALL
	dbw 28, CONFUSE_RAY
	dbw 31, HAZE
	dbw 33, DREAM_EATER
	dbw 36, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	dbww EVOLVE_ITEM, MIST_STONE, GENGAR
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 8, SPITE
	dbw 10, PSYWAVE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 19, PERISH_SONG
	dbw 21, NIGHT_SHADE
	dbw 24, SHADOW_BALL
	dbw 31, CONFUSE_RAY
	dbw 31, HAZE
	dbw 39, DREAM_EATER
	dbw 48, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 8, SPITE
	dbw 10, PSYWAVE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 19, PERISH_SONG
	dbw 21, NIGHT_SHADE
	dbw 24, SHADOW_BALL
	dbw 31, CONFUSE_RAY
	dbw 31, HAZE
	dbw 39, DREAM_EATER
	dbw 48, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	dbww EVOLVE_ITEM, METAL_COAT, STEELIX
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
	dbw 45, EARTHQUAKE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HYPNOSIS
	dbw 10, DISABLE
	dbw 14, CONFUSION
	dbw 19, LIGHT_SCREEN
	dbw 25, HEADBUTT
	dbw 28, BARRIER
	dbw 31, POISON_GAS
	dbw 36, MEDITATE
	dbw 40, PSYCHIC_M
	dbw 43, PSYCH_UP
	dbw 45, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HYPNOSIS
	dbw 10, DISABLE
	dbw 14, CONFUSION
	dbw 19, LIGHT_SCREEN
	dbw 25, HEADBUTT
	dbw 28, BARRIER
	dbw 33, POISON_GAS
	dbw 40, MEDITATE
	dbw 49, PSYCHIC_M
	dbw 55, PSYCH_UP
	dbw 60, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, LEER
	dbw 12, VICEGRIP
	dbw 16, HARDEN
	dbw 19, AMNESIA
	dbw 23, STOMP
	dbw 25, HAZE
	dbw 27, GUILLOTINE
	dbw 30, FLAIL
	dbw 34, PROTECT
	dbw 37, SLAM
	dbw 41, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, LEER
	dbw 12, VICEGRIP
	dbw 16, HARDEN
	dbw 19, AMNESIA
	dbw 23, STOMP
	dbw 25, HAZE
	dbw 27, GUILLOTINE
	dbw 34, FLAIL
	dbw 38, PROTECT
	dbw 43, SLAM
	dbw 49, CRABHAMMER
	dbw 52, DIG
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 9, SCREECH
	dbw 17, SONICBOOM
	dbw 23, SELFDESTRUCT
	dbw 29, ROLLOUT
	dbw 33, LIGHT_SCREEN
	dbw 37, SWIFT
	dbw 39, EXPLOSION
	dbw 41, MIRROR_COAT
	dbw 44, FLASH
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 9, SCREECH
	dbw 17, SONICBOOM
	dbw 23, SELFDESTRUCT
	dbw 29, ROLLOUT
	dbw 34, LIGHT_SCREEN
	dbw 40, SWIFT
	dbw 44, EXPLOSION
	dbw 48, MIRROR_COAT
	dbw 52, FLASH
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	dbww EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	dbw 1, BARRAGE
	dbw 1, HYPNOSIS
	dbw 7, REFLECT
	dbw 13, LEECH_SEED
	dbw 19, CONFUSION
	dbw 22, SYNTHESIS
	dbw 22, MOONLIGHT
	dbw 25, STUN_SPORE
	dbw 28, MEGA_DRAIN
	dbw 31, POISONPOWDER
	dbw 34, ANCIENTPOWER
	dbw 37, SLEEP_POWDER
	dbw 43, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BARRAGE
	dbw 1, HYPNOSIS
	dbw 1, CONFUSION
	dbw 25, STOMP
	dbw 31, EGG_BOMB
	dbw 37, ANCIENTPOWER
	dbw 43, PSYBEAM
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, BONE_CLUB
	dbw 11, SWORDS_DANCE
	dbw 13, HEADBUTT
	dbw 15, ANCIENTPOWER
	dbw 17, LEER
	dbw 19, BELLY_DRUM
	dbw 21, FOCUS_ENERGY
	dbw 23, SCREECH
	dbw 25, BONEMERANG
	dbw 27, PERISH_SONG
	dbw 29, RAGE
	dbw 31, ROCK_SLIDE
	dbw 33, FALSE_SWIPE
	dbw 35, SKULL_BASH
	dbw 37, THRASH
	dbw 41, BONE_RUSH
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, BONE_CLUB
	dbw 11, SWORDS_DANCE
	dbw 13, HEADBUTT
	dbw 15, ANCIENTPOWER
	dbw 17, LEER
	dbw 19, BELLY_DRUM
	dbw 21, FOCUS_ENERGY
	dbw 23, SCREECH
	dbw 25, BONEMERANG
	dbw 27, PERISH_SONG
	dbw 32, RAGE
	dbw 35, ROCK_SLIDE
	dbw 39, FALSE_SWIPE
	dbw 42, SKULL_BASH
	dbw 46, THRASH
	dbw 53, BONE_RUSH
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DOUBLE_KICK
	dbw 6, MEDITATE
	dbw 11, ROLLING_KICK
	dbw 13, RAPID_SPIN
	dbw 16, JUMP_KICK
	dbw 19, MACH_PUNCH
	dbw 21, FOCUS_ENERGY
	dbw 23, MIND_READER
	dbw 26, HI_JUMP_KICK
	dbw 31, MIND_READER
	dbw 36, FORESIGHT
	dbw 41, ENDURE
	dbw 46, MEGA_KICK
	dbw 51, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 7, AGILITY
	dbw 13, PURSUIT
	dbw 17, RAPID_SPIN
	dbw 22, MIND_READER
	dbw 26, THUNDERPUNCH
	dbw 26, ICE_PUNCH
	dbw 26, FIRE_PUNCH
	dbw 32, MACH_PUNCH
	dbw 38, MEGA_PUNCH
	dbw 44, DETECT
	dbw 47, HI_JUMP_KICK
	dbw 50, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 7, SUPERSONIC
	dbw 13, DEFENSE_CURL
	dbw 16, MAGNITUDE
	dbw 19, STOMP
	dbw 22, BELLY_DRUM
	dbw 25, WRAP
	dbw 28, HEADBUTT
	dbw 31, DISABLE
	dbw 37, BODY_SLAM
	dbw 43, SCREECH
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 9, SMOG
	dbw 13, SCREECH
	dbw 17, SELFDESTRUCT
	dbw 19, PSYWAVE
	dbw 21, SLUDGE
	dbw 25, SMOKESCREEN
	dbw 29, DESTINY_BOND
	dbw 33, HAZE
	dbw 37, PAIN_SPLIT
	dbw 41, EXPLOSION
	dbw 45, DESTINY_BOND
	dbw 50, PSYBEAM
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 9, SMOG
	dbw 13, SCREECH
	dbw 17, SELFDESTRUCT
	dbw 19, PSYWAVE
	dbw 21, SLUDGE
	dbw 25, SMOKESCREEN
	dbw 29, DESTINY_BOND
	dbw 33, HAZE
	dbw 39, PAIN_SPLIT
	dbw 44, EXPLOSION
	dbw 51, DESTINY_BOND
	dbw 54, PSYBEAM
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 8, PURSUIT
	dbw 13, STOMP
	dbw 16, ROCK_SLIDE
	dbw 19, FURY_ATTACK
	dbw 25, MAGNITUDE
	dbw 31, SCARY_FACE
	dbw 34, CRUNCH
	dbw 37, HORN_DRILL
	dbw 43, REVERSAL
	dbw 49, TAKE_DOWN
	dbw 52, THRASH
	dbw 55, EARTHQUAKE
	dbw 58, COUNTER
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 8, PURSUIT
	dbw 13, STOMP
	dbw 16, ROCK_SLIDE
	dbw 19, FURY_ATTACK
	dbw 25, MAGNITUDE
	dbw 31, SCARY_FACE
	dbw 34, CRUNCH
	dbw 37, HORN_DRILL
	dbw 46, REVERSAL
	dbw 54, TAKE_DOWN
	dbw 59, THRASH
	dbw 65, EARTHQUAKE
	dbw 72, COUNTER
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
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

TangelaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 4, SLEEP_POWDER
	dbw 6, CONFUSION
	dbw 10, ABSORB
	dbw 13, POISONPOWDER
	dbw 16, REFLECT
	dbw 19, VINE_WHIP
	dbw 22, FLAIL
	dbw 25, BIND
	dbw 50, AMNESIA
	dbw 31, MEGA_DRAIN
	dbw 34, STUN_SPORE
	dbw 40, SLAM
	dbw 46, GROWTH
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 7, LEER
	dbw 13, BITE
	dbw 16, STOMP
	dbw 19, TAIL_WHIP
	dbw 22, FOCUS_ENERGY
	dbw 25, MEGA_PUNCH
	dbw 28, FORESIGHT
	dbw 31, RAGE
	dbw 34, SAFEGUARD
	dbw 37, ENDURE
	dbw 40, DISABLE
	dbw 43, DIZZY_PUNCH
	dbw 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 8, SMOKESCREEN
	dbw 12, FLAIL
	dbw 15, LEER
	dbw 18, AURORA_BEAM
	dbw 22, WATER_GUN
	dbw 26, DISABLE
	dbw 29, TWISTER
	dbw 33, OCTAZOOKA
	dbw 36, AGILITY
	dbw 40, DRAGON_RAGE
	dbw 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	dbww EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
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

GoldeenEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 10, SUPERSONIC
	dbw 12, WATER_GUN
	dbw 15, HORN_ATTACK
	dbw 19, PSYBEAM
	dbw 24, FLAIL
	dbw 27, HAZE
	dbw 29, FURY_ATTACK
	dbw 38, HYDRO_PUMP
	dbw 43, HORN_DRILL
	dbw 52, AGILITY
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 10, SUPERSONIC
	dbw 12, WATER_GUN
	dbw 15, HORN_ATTACK
	dbw 19, PSYBEAM
	dbw 24, FLAIL
	dbw 27, HAZE
	dbw 29, FURY_ATTACK
	dbw 32, WATERFALL
	dbw 55, HYDRO_PUMP
	dbw 49, HORN_DRILL
	dbw 61, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	dbww EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 7, WATER_GUN
	dbw 13, RAPID_SPIN
	dbw 19, RECOVER
	dbw 25, SWIFT
	dbw 31, BUBBLEBEAM
	dbw 37, MINIMIZE
	dbw 43, LIGHT_SCREEN
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, RAPID_SPIN
	dbw 1, RECOVER
	dbw 1, BUBBLEBEAM
	dbw 32, PSYBEAM
	dbw 37, CONFUSE_RAY
	dbw 45, TRI_ATTACK
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BARRIER
	dbw 6, CONFUSION
	dbw 11, SUBSTITUTE
	dbw 13, FUTURE_SIGHT
	dbw 16, MEDITATE
	dbw 19, HYPNOSIS
	dbw 21, DOUBLESLAP
	dbw 23, MIMIC
	dbw 26, LIGHT_SCREEN
	dbw 26, REFLECT
	dbw 31, ENCORE
	dbw 36, PSYBEAM
	dbw 41, BATON_PASS
	dbw 46, SAFEGUARD
	dbw 51, MOONBLAST
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	dbww EVOLVE_ITEM, METAL_COAT, SCIZOR
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
	dbw 30, WING_ATTACK
	dbw 33, BATON_PASS
	dbw 36, SLASH
	dbw 39, LIGHT_SCREEN
	dbw 42, SWORDS_DANCE
	dbw 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LICK
	dbw 9, LOVELY_KISS
	dbw 13, POWDER_SNOW
	dbw 17, MEDITATE
	dbw 21, DOUBLESLAP
	dbw 25, ICE_PUNCH
	dbw 30, PSYBEAM
	dbw 35, MEAN_LOOK
	dbw 41, BODY_SLAM
	dbw 46, PSYCHIC_M
	dbw 51, PERISH_SONG
	dbw 57, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 9, THUNDERPUNCH
	dbw 13, KARATE_CHOP
	dbw 17, LIGHT_SCREEN
	dbw 21, BARRIER
	dbw 25, SWIFT
	dbw 30, ROLLING_KICK
	dbw 36, SCREECH
	dbw 42, MEDITATE
	dbw 47, THUNDERBOLT
	dbw 52, CROSS_CHOP
	dbw 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 7, LEER
	dbw 13, SMOG
	dbw 16, KARATE_CHOP
	dbw 19, FIRE_PUNCH
	dbw 22, MEGA_PUNCH
	dbw 25, SMOKESCREEN
	dbw 29, BARRIER
	dbw 33, SUNNY_DAY
	dbw 37, SCREECH
	dbw 41, FLAMETHROWER
	dbw 45, CROSS_CHOP
	dbw 49, CONFUSE_RAY
	dbw 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, VICEGRIP
	dbw 7, FOCUS_ENERGY
	dbw 13, BIND
	dbw 16, CUT
	dbw 19, SEISMIC_TOSS
	dbw 22, FURY_ATTACK
	dbw 25, HARDEN
	dbw 28, FLAIL
	dbw 31, GUILLOTINE
	dbw 37, SUBMISSION
	dbw 43, SWORDS_DANCE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 8, RAGE
	dbw 13, HORN_ATTACK
	dbw 19, SCARY_FACE
	dbw 26, PURSUIT
	dbw 34, REST
	dbw 43, THRASH
	dbw 53, TAKE_DOWN
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THRASH
	dbw 1, BITE
	dbw 25, DRAGON_RAGE
	dbw 30, LEER
	dbw 35, TWISTER
	dbw 40, HYDRO_PUMP
	dbw 45, RAIN_DANCE
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, GROWL
	dbw 1, SING
	dbw 8, MIST
	dbw 15, BODY_SLAM
	dbw 22, CONFUSE_RAY
	dbw 26, AURORA_BEAM
	dbw 29, PERISH_SONG
	dbw 33, FORESIGHT
	dbw 36, ICE_BEAM
	dbw 43, RAIN_DANCE
	dbw 50, SAFEGUARD
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	dbww EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	dbww EVOLVE_ITEM, WATER_STONE, VAPOREON
	dbww EVOLVE_ITEM, FIRE_STONE, FLAREON
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	dbbw EVOLVE_HAPPINESS, TR_EVENITE, UMBREON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, GROWL
	dbw 20, FLAIL
	dbw 23, QUICK_ATTACK
	dbw 27, CHARM
	dbw 30, BITE
	dbw 33, BELLY_DRUM
	dbw 36, BATON_PASS
	dbw 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, WATER_GUN
	dbw 20, FLAIL
	dbw 23, QUICK_ATTACK
	dbw 27, CHARM
	dbw 30, BITE
	dbw 33, SURF
	dbw 36, AURORA_BEAM
	dbw 42, HAZE
	dbw 47, ACID_ARMOR
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, THUNDERSHOCK
	dbw 20, FLAIL
	dbw 23, QUICK_ATTACK
	dbw 27, CHARM
	dbw 30, DOUBLE_KICK
	dbw 33, THUNDERBOLT
	dbw 36, PIN_MISSILE
	dbw 42, THUNDER_WAVE
	dbw 47, AGILITY
	dbw 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, EMBER
	dbw 20, FLAIL
	dbw 23, QUICK_ATTACK
	dbw 27, CHARM
	dbw 30, BITE
	dbw 33, THIEF
	dbw 36, FIRE_SPIN
	dbw 42, SMOG
	dbw 47, DOUBLE_KICK
	dbw 52, FLAMETHROWER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	dbww EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	dbw 1, CONVERSION2
	dbw 1, TACKLE
	dbw 1, CONVERSION
	dbw 9, AGILITY
	dbw 12, PSYBEAM
	dbw 20, RECOVER
	dbw 24, SHARPEN
	dbw 32, LOCK_ON
	dbw 36, TRI_ATTACK
	dbw 44, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 13, BITE
	dbw 19, WATER_GUN
	dbw 23, AURORA_BEAM
	dbw 27, BUBBLEBEAM
	dbw 31, LEER
	dbw 34, SLAM
	dbw 37, PROTECT
	dbw 43, SUPERSONIC
	dbw 49, ANCIENTPOWER
	dbw 52, HAZE
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 13, BITE
	dbw 19, WATER_GUN
	dbw 23, AURORA_BEAM
	dbw 27, BUBBLEBEAM
	dbw 31, LEER
	dbw 34, SLAM
	dbw 37, PROTECT
	dbw 39, SPIKE_CANNON
	dbw 47, SUPERSONIC
	dbw 54, ANCIENTPOWER
	dbw 60, HAZE
	dbw 65, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 10, ABSORB
	dbw 14, BUBBLEBEAM
	dbw 19, LEER
	dbw 24, AURORA_BEAM
	dbw 28, SAND_ATTACK
	dbw 32, RAPID_SPIN
	dbw 37, ENDURE
	dbw 42, DIG
	dbw 46, MEGA_DRAIN
	dbw 50, FLAIL
	dbw 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, HARDEN
	dbw 10, ABSORB
	dbw 14, BUBBLEBEAM
	dbw 19, LEER
	dbw 24, AURORA_BEAM
	dbw 28, SAND_ATTACK
	dbw 32, RAPID_SPIN
	dbw 37, ENDURE
	dbw 39, SLASH
	dbw 45, DIG
	dbw 51, MEGA_DRAIN
	dbw 58, FLAIL
	dbw 65, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 8, AGILITY
	dbw 12, WHIRLWIND
	dbw 15, BITE
	dbw 19, PURSUIT
	dbw 22, SUPERSONIC
	dbw 85, FORESIGHT
	dbw 29, ANCIENTPOWER
	dbw 33, ROCK_SLIDE
	dbw 36, SCARY_FACE
	dbw 43, TAKE_DOWN
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 8, AMNESIA
	dbw 15, DEFENSE_CURL
	dbw 22, BELLY_DRUM
	dbw 29, HEADBUTT
	dbw 36, SNORE
	dbw 36, REST
	dbw 40, LICK
	dbw 43, BODY_SLAM
	dbw 50, ROLLOUT
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, POWDER_SNOW
	dbw 13, MIST
	dbw 25, AGILITY
	dbw 37, MIND_READER
	dbw 49, ICE_BEAM
	dbw 61, REFLECT
	dbw 73, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, THUNDERSHOCK
	dbw 13, THUNDER_WAVE
	dbw 25, AGILITY
	dbw 37, DETECT
	dbw 49, DRILL_PECK
	dbw 61, LIGHT_SCREEN
	dbw 73, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 1, EMBER
	dbw 13, FIRE_SPIN
	dbw 25, AGILITY
	dbw 37, ENDURE
	dbw 49, FLAMETHROWER
	dbw 61, SAFEGUARD
	dbw 73, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 18, SUPERSONIC
	dbw 22, DRAGON_RAGE
	dbw 25, LIGHT_SCREEN
	dbw 29, SLAM
	dbw 33, MIST
	dbw 33, HAZE
	dbw 36, AGILITY
	dbw 43, SAFEGUARD
	dbw 50, OUTRAGE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 18, SUPERSONIC
	dbw 22, DRAGON_RAGE
	dbw 25, LIGHT_SCREEN
	dbw 29, SLAM
	dbw 34, MIST
	dbw 34, HAZE
	dbw 38, AGILITY
	dbw 47, SAFEGUARD
	dbw 56, OUTRAGE
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 18, SUPERSONIC
	dbw 22, DRAGON_RAGE
	dbw 25, LIGHT_SCREEN
	dbw 29, SLAM
	dbw 34, MIST
	dbw 34, HAZE
	dbw 38, AGILITY
	dbw 47, SAFEGUARD
	dbw 54, WING_ATTACK
	dbw 61, OUTRAGE
	dbw 75, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DISABLE
	dbw 11, BARRIER
	dbw 22, SWIFT
	dbw 33, PSYCH_UP
	dbw 44, FUTURE_SIGHT
	dbw 55, MIST
	dbw 66, PSYCHIC_M
	dbw 77, AMNESIA
	dbw 88, RECOVER
	dbw 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 10, TRANSFORM
	dbw 20, MEGA_PUNCH
	dbw 30, METRONOME
	dbw 40, PSYCHIC_M
	dbw 50, ANCIENTPOWER
	db 0 ; no more level-up moves

ENDSECTION
