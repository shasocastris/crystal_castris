; Complete type-to-Pokémon mapping for damage boost system
; Pokémon with dual types appear in BOTH type lists
; Format: Each type points to a list of species indices, terminated with -1

TypePokemonLists:
	dbw NORMAL,       NormalTypeSpecies
	dbw FIGHTING,     FightingTypeSpecies
	dbw FLYING,       FlyingTypeSpecies
	dbw POISON,       PoisonTypeSpecies
	dbw GROUND,       GroundTypeSpecies
	dbw ROCK,         RockTypeSpecies
	dbw BUG,          BugTypeSpecies
	dbw GHOST,        GhostTypeSpecies
	dbw STEEL,        SteelTypeSpecies
	dbw FIRE,         FireTypeSpecies
	dbw WATER,        WaterTypeSpecies
	dbw GRASS,        GrassTypeSpecies
	dbw ELECTRIC,     ElectricTypeSpecies
	dbw PSYCHIC_TYPE, PsychicTypeSpecies
	dbw ICE,          IceTypeSpecies
	dbw DRAGON,       DragonTypeSpecies
	dbw DARK,         DarkTypeSpecies
	dbw FAIRY,        FairyTypeSpecies
	db $FF  ; End marker

NormalTypeSpecies:
;	dw PIDGEY
;	dw PIDGEOTTO
;	dw PIDGEOT
	dw RATTATA
;	dw RATICATE
;	dw SPEAROW
;	dw FEAROW
;	dw CLEFAIRY
;	dw CLEFABLE
;	dw JIGGLYPUFF
;	dw WIGGLYTUFF
;	dw MEOWTH
;	dw PERSIAN
;	dw FARFETCH_D
;	dw DODUO
;	dw DODRIO
;	dw LICKITUNG
;	dw CHANSEY
;	dw KANGASKHAN
;	dw TAUROS
;	dw DITTO
;	dw EEVEE
;	dw PORYGON
;	dw SNORLAX
;	dw SENTRET
;	dw FURRET
;	dw HOOTHOOT
;	dw NOCTOWL
;	dw IGGLYBUFF
;	dw TOGEPI
;	dw TOGETIC
;	dw AIPOM
;	dw GIRAFARIG
;	dw DUNSPARCE
;	dw TEDDIURSA
;	dw URSARING
;	dw PORYGON2
;	dw STANTLER
;	dw SMEARGLE
;	dw MILTANK
;	dw BLISSEY
	dw -1

FightingTypeSpecies:
	dw MANKEY
;	dw PRIMEAPE
;	dw POLIWRATH
;	dw MACHOP
;	dw MACHOKE
;	dw MACHAMP
;	dw HITMONLEE
;	dw HITMONCHAN
;	dw HERACROSS
;	dw TYROGUE
;	dw HITMONTOP
	dw -1

FlyingTypeSpecies:
;	dw CHARIZARD
	dw PIDGEY
;	dw PIDGEOTTO
;	dw PIDGEOT
;	dw SPEAROW
;	dw FEAROW
;	dw ZUBAT
;	dw GOLBAT
;	dw FARFETCH_D
;	dw DODUO
;	dw DODRIO
;	dw SCYTHER
;	dw GYARADOS
;	dw AERODACTYL
;	dw ARTICUNO
;	dw ZAPDOS
;	dw MOLTRES
;	dw DRAGONITE
;	dw HOOTHOOT
;	dw NOCTOWL
;	dw LEDYBA
;	dw LEDIAN
;	dw CROBAT
;	dw TOGETIC
;	dw NATU
;	dw XATU
;	dw HOPPIP
;	dw SKIPLOOM
;	dw JUMPLUFF
;	dw YANMA
;	dw MURKROW
;	dw GLIGAR
;	dw DELIBIRD
;	dw MANTINE
;	dw SKARMORY
;	dw LUGIA
;	dw HO_OH
	dw -1

PoisonTypeSpecies:
;	dw BULBASAUR
;	dw IVYSAUR
;	dw VENUSAUR
;	dw WEEDLE
;	dw KAKUNA
;	dw BEEDRILL
	dw EKANS
;	dw ARBOK
;	dw NIDORAN_F
;	dw NIDORINA
;	dw NIDOQUEEN
;	dw NIDORAN_M
;	dw NIDORINO
;	dw NIDOKING
;	dw ZUBAT
;	dw GOLBAT
;	dw ODDISH
;	dw GLOOM
;	dw VILEPLUME
;	dw VENONAT
;	dw VENOMOTH
;	dw BELLSPROUT
;	dw WEEPINBELL
;	dw VICTREEBEL
;	dw TENTACOOL
;	dw TENTACRUEL
;	dw GRIMER
;	dw MUK
;	dw GASTLY
;	dw HAUNTER
;	dw GENGAR
;	dw KOFFING
;	dw WEEZING
;	dw SPINARAK
;	dw ARIADOS
;	dw CROBAT
;	dw BELLOSSOM
;	dw QWILFISH
	dw -1

GroundTypeSpecies:
	dw SANDSHREW
;	dw SANDSLASH
;	dw NIDOQUEEN
;	dw NIDOKING
;	dw DIGLETT
;	dw DUGTRIO
;	dw GEODUDE
;	dw GRAVELER
;	dw GOLEM
;	dw ONIX
;	dw CUBONE
;	dw MAROWAK
;	dw RHYHORN
;	dw RHYDON
;	dw WOOPER
;	dw QUAGSIRE
;	dw GLIGAR
;	dw STEELIX
;	dw SWINUB
;	dw PILOSWINE
;	dw PHANPY
;	dw DONPHAN
	dw -1

RockTypeSpecies:
	dw GEODUDE
;	dw GRAVELER
;	dw GOLEM
;	dw ONIX
;	dw RHYHORN
;	dw RHYDON
;	dw OMANYTE
;	dw OMASTAR
;	dw KABUTO
;	dw KABUTOPS
;	dw AERODACTYL
;	dw SUDOWOODO
;	dw SHUCKLE
;	dw MAGCARGO
;	dw CORSOLA
;	dw LARVITAR
;	dw PUPITAR
;	dw TYRANITAR
	dw -1

BugTypeSpecies:
	dw CATERPIE
;	dw METAPOD
;	dw BUTTERFREE
;	dw WEEDLE
;	dw KAKUNA
;	dw BEEDRILL
;	dw PARAS
;	dw PARASECT
;	dw VENONAT
;	dw VENOMOTH
;	dw SCYTHER
;	dw PINSIR
;	dw LEDYBA
;	dw LEDIAN
;	dw SPINARAK
;	dw ARIADOS
;	dw YANMA
;	dw PINECO
;	dw FORRETRESS
;	dw SCIZOR
;	dw SHUCKLE
;	dw HERACROSS
	dw -1

GhostTypeSpecies:
	dw GASTLY
;	dw HAUNTER
;	dw GENGAR
;	dw MISDREAVUS
	dw -1

SteelTypeSpecies:
	dw MAGNEMITE
;	dw MAGNETON
;	dw FORRETRESS
;	dw STEELIX
;	dw SCIZOR
;	dw SKARMORY
	dw -1

FireTypeSpecies:
;	dw CHARMANDER
;	dw CHARMELEON
;	dw CHARIZARD
;	dw VULPIX
;	dw NINETALES
	dw GROWLITHE
;	dw ARCANINE
;	dw PONYTA
;	dw RAPIDASH
;	dw MAGMAR
;	dw FLAREON
;	dw MOLTRES
;	dw CYNDAQUIL
;	dw QUILAVA
;	dw TYPHLOSION
;	dw SLUGMA
;	dw MAGCARGO
;	dw HOUNDOUR
;	dw HOUNDOOM
;	dw ENTEI
;	dw HO_OH
	dw -1

WaterTypeSpecies:
;	dw SQUIRTLE
;	dw WARTORTLE
;	dw BLASTOISE
;	dw PSYDUCK
;	dw GOLDUCK
	dw POLIWAG
;	dw POLIWHIRL
;	dw POLIWRATH
;	dw TENTACOOL
;	dw TENTACRUEL
;	dw SLOWPOKE
;	dw SLOWBRO
;	dw SEEL
;	dw DEWGONG
;	dw SHELLDER
;	dw CLOYSTER
;	dw KRABBY
;	dw KINGLER
;	dw HORSEA
;	dw SEADRA
;	dw GOLDEEN
;	dw SEAKING
;	dw STARYU
;	dw STARMIE
;	dw MAGIKARP
;	dw GYARADOS
;	dw LAPRAS
;	dw VAPOREON
;	dw OMANYTE
;	dw OMASTAR
;	dw KABUTO
;	dw KABUTOPS
;	dw TOTODILE
;	dw CROCONAW
;	dw FERALIGATR
;	dw CHINCHOU
;	dw LANTURN
;	dw MARILL
;	dw AZUMARILL
;	dw POLITOED
;	dw WOOPER
;	dw QUAGSIRE
;	dw SLOWKING
;	dw QWILFISH
;	dw CORSOLA
;	dw REMORAID
;	dw OCTILLERY
;	dw MANTINE
;	dw KINGDRA
;	dw SUICUNE
	dw -1

GrassTypeSpecies:
;	dw BULBASAUR
;	dw IVYSAUR
;	dw VENUSAUR
	dw ODDISH
;	dw GLOOM
;	dw VILEPLUME
;	dw PARAS
;	dw PARASECT
;	dw BELLSPROUT
;	dw WEEPINBELL
;	dw VICTREEBEL
;	dw EXEGGCUTE
;	dw EXEGGUTOR
;	dw TANGELA
;	dw CHIKORITA
;	dw BAYLEEF
;	dw MEGANIUM
;	dw BELLOSSOM
;	dw HOPPIP
;	dw SKIPLOOM
;	dw JUMPLUFF
;	dw SUNKERN
;	dw SUNFLORA
;	dw CELEBI
	dw -1

ElectricTypeSpecies:
;	dw PIKACHU
;	dw RAICHU
;	dw MAGNEMITE
;	dw MAGNETON
;	dw VOLTORB
;	dw ELECTRODE
;	dw ELECTABUZZ
;	dw JOLTEON
;	dw ZAPDOS
;	dw CHINCHOU
;	dw LANTURN
;	dw PICHU
	dw MAREEP
;	dw FLAAFFY
;	dw AMPHAROS
;	dw ELEKID
;	dw RAIKOU
	dw -1

PsychicTypeSpecies:
	dw ABRA
;	dw KADABRA
;	dw ALAKAZAM
;	dw SLOWPOKE
;	dw SLOWBRO
;	dw DROWZEE
;	dw HYPNO
;	dw EXEGGCUTE
;	dw EXEGGUTOR
;	dw STARMIE
;	dw MR__MIME
;	dw JYNX
;	dw MEW
;	dw NATU
;	dw XATU
;	dw ESPEON
;	dw SLOWKING
;	dw UNOWN
;	dw GIRAFARIG
;	dw SMOOCHUM
;	dw LUGIA
;	dw CELEBI
	dw -1

IceTypeSpecies:
;	dw DEWGONG
;	dw CLOYSTER
;	dw JYNX
;	dw LAPRAS
;	dw ARTICUNO
;	dw SNEASEL
	dw SWINUB
;	dw PILOSWINE
;	dw DELIBIRD
;	dw SMOOCHUM
	dw -1

DragonTypeSpecies:
	dw DRATINI
;	dw DRAGONAIR
;	dw DRAGONITE
;	dw KINGDRA
	dw -1

DarkTypeSpecies:
;	dw UMBREON
;	dw MURKROW
;	dw SNEASEL
	dw HOUNDOUR
;	dw HOUNDOOM
;	dw TYRANITAR
	dw -1

FairyTypeSpecies:
;	dw CLEFAIRY
;	dw CLEFABLE
;	dw JIGGLYPUFF
;	dw WIGGLYTUFF
;	dw MR__MIME
;	dw CLEFFA
;	dw IGGLYBUFF
;	dw TOGEPI
;	dw TOGETIC
	dw SNUBBULL
;	dw GRANBULL
	dw -1