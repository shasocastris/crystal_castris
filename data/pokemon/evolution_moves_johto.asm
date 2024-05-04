SECTION "Evolution Moves 2", ROMX

EvolutionMovesJohto:
	dw NoEvoMoveJohto      ; CHIKORITA
	dw NoEvoMoveJohto      ; BAYLEEF
	dw MeganiumEvoMove     ; MEGANIUM
	dw NoEvoMoveJohto      ; CYNDAQUIL
	dw NoEvoMoveJohto      ; QUILAVA
	dw NoEvoMoveJohto      ; TYPHLOSION
	dw NoEvoMoveJohto      ; TOTODILE
	dw NoEvoMoveJohto      ; CROCONAW
	dw NoEvoMoveJohto      ; FERALIGATR
	dw NoEvoMoveJohto      ; SENTRET
	dw FurretEvoMove       ; FURRET
	dw NoEvoMoveJohto      ; HOOTHOOT
	dw NoEvoMoveJohto      ; NOCTOWL
	dw NoEvoMoveJohto      ; LEDYBA
	dw NoEvoMoveJohto      ; LEDIAN
	dw NoEvoMoveJohto      ; SPINARAK
	dw AriadosEvoMove      ; ARIADOS
	dw NoEvoMoveJohto      ; CROBAT
	dw NoEvoMoveJohto      ; CHINCHOU
	dw NoEvoMoveJohto      ; LANTURN
	dw NoEvoMoveJohto      ; PICHU
	dw NoEvoMoveJohto      ; CLEFFA
	dw NoEvoMoveJohto      ; IGGLYBUFF
	dw NoEvoMoveJohto      ; TOGEPI
	dw NoEvoMoveJohto      ; TOGETIC
	dw NoEvoMoveJohto      ; NATU
	dw NoEvoMoveJohto      ; XATU
	dw NoEvoMoveJohto      ; MAREEP
	dw NoEvoMoveJohto      ; FLAAFFY
	dw AmpharosEvoMove     ; AMPHAROS
	dw NoEvoMoveJohto      ; BELLOSSOM
	dw NoEvoMoveJohto      ; MARILL
	dw NoEvoMoveJohto      ; AZUMARILL
	dw NoEvoMoveJohto      ; SUDOWOODO
	dw PolitoedEvoMove     ; POLITOED
	dw NoEvoMoveJohto      ; HOPPIP
	dw NoEvoMoveJohto      ; SKIPLOOM
	dw NoEvoMoveJohto      ; JUMPLUFF
	dw NoEvoMoveJohto      ; AIPOM
	dw NoEvoMoveJohto      ; SUNKERN
	dw NoEvoMoveJohto      ; SUNFLORA
	dw NoEvoMoveJohto      ; YANMA
	dw NoEvoMoveJohto      ; WOOPER
	dw NoEvoMoveJohto      ; QUAGSIRE
	dw EspeonEvoMove       ; ESPEON
	dw UmbreonEvoMove      ; UMBREON
	dw NoEvoMoveJohto      ; MURKROW
	dw NoEvoMoveJohto      ; SLOWKING
	dw NoEvoMoveJohto      ; MISDREAVUS
	dw NoEvoMoveJohto      ; UNOWN
	dw NoEvoMoveJohto      ; WOBBUFFET
	dw NoEvoMoveJohto      ; GIRAFARIG
	dw NoEvoMoveJohto      ; PINECO
	dw NoEvoMoveJohto      ; FORRETRESS
	dw NoEvoMoveJohto      ; DUNSPARCE
	dw NoEvoMoveJohto      ; GLIGAR
	dw SteelixEvoMove      ; STEELIX
	dw NoEvoMoveJohto      ; SNUBBULL
	dw NoEvoMoveJohto      ; GRANBULL
	dw NoEvoMoveJohto      ; QWILFISH
	dw ScizorEvoMove       ; SCIZOR
	dw NoEvoMoveJohto      ; SHUCKLE
	dw NoEvoMoveJohto      ; HERACROSS
	dw NoEvoMoveJohto      ; SNEASEL
	dw NoEvoMoveJohto      ; TEDDIURSA
	dw NoEvoMoveJohto      ; URSARING
	dw NoEvoMoveJohto      ; SLUGMA
	dw NoEvoMoveJohto      ; MAGCARGO
	dw NoEvoMoveJohto      ; SWINUB
	dw PiloswineEvoMove    ; PILOSWINE
	dw NoEvoMoveJohto      ; CORSOLA
	dw NoEvoMoveJohto      ; REMORAID
	dw OctilleryEvoMove    ; OCTILLERY
	dw NoEvoMoveJohto      ; DELIBIRD
	dw NoEvoMoveJohto      ; MANTINE
	dw NoEvoMoveJohto      ; SKARMORY
	dw NoEvoMoveJohto      ; HOUNDOUR
	dw NoEvoMoveJohto      ; HOUNDOOM
	dw NoEvoMoveJohto      ; KINGDRA
	dw NoEvoMoveJohto      ; PHANPY
	dw DonphanEvoMove      ; DONPHAN
	dw NoEvoMoveJohto      ; PORYGON2
	dw NoEvoMoveJohto      ; STANTLER
	dw NoEvoMoveJohto      ; SMEARGLE
	dw NoEvoMoveJohto      ; TYROGUE
	dw HitmontopEvoMove    ; HITMONTOP
	dw NoEvoMoveJohto      ; SMOOCHUM
	dw NoEvoMoveJohto      ; ELEKID
	dw NoEvoMoveJohto      ; MAGBY
	dw NoEvoMoveJohto      ; MILTANK
	dw NoEvoMoveJohto      ; BLISSEY
	dw NoEvoMoveJohto      ; RAIKOU
	dw NoEvoMoveJohto      ; ENTEI
	dw NoEvoMoveJohto      ; SUICUNE
	dw NoEvoMoveJohto      ; LARVITAR
	dw NoEvoMoveJohto      ; PUPITAR
	dw NoEvoMoveJohto      ; TYRANITAR
	dw NoEvoMoveJohto      ; LUGIA
	dw NoEvoMoveJohto      ; HO-OH
	dw NoEvoMoveJohto      ; CELEBI
.IndirectEnd::

MeganiumEvoMove:
	dw PETAL_DANCE  ; MEGANIUM
	dw -1 ; end

FurretEvoMove:
	dw AGILITY      ; FURRET
	dw -1 ; end

AriadosEvoMove:
	dw SWORDS_DANCE ; ARIADOS
	dw -1 ; end

AmpharosEvoMove:
	dw THUNDERPUNCH ; AMPHAROS
	dw -1 ; end

PolitoedEvoMove:
	dw PERISH_SONG  ; POLITOED
	dw -1 ; end

EspeonEvoMove:
	dw CONFUSION    ; ESPEON
	dw -1 ; end

UmbreonEvoMove:
	dw PURSUIT      ; UMBREON
	dw -1 ; end

SteelixEvoMove:
	dw IRON_TAIL    ; STEELIX
	dw -1 ; end

ScizorEvoMove:
	dw METAL_CLAW   ; SCIZOR
	dw -1 ; end

PiloswineEvoMove:
	dw FURY_ATTACK  ; PILOSWINE
	dw -1 ; end

OctilleryEvoMove:
	dw OCTAZOOKA    ; OCTILLERY
	dw -1 ; end

DonphanEvoMove:
	dw FURY_ATTACK  ; DONPHAN
	dw -1 ; end

HitmontopEvoMove:
	dw ROLLING_KICK ; HITMONTOP
	dw -1 ; end

NoEvoMoveJohto:
	dw -1 ; end

ENDSECTION