; data/pokemon/pcny_tutor_moves.asm
;
; PCNYTutorMoves: the curated single-move-per-species table for the PCNY Event
; Move Tutor feature. One row per species = one PCNY move.
;
; Row format (see the pcny_tutor_move macro): dw species, dw move, db LINE_id
;   - species / move are stored as 16-bit *indexes* (the raw constants from
;     constants/pokemon_constants.asm and constants/move_constants.asm). The
;     8-bit runtime ID <-> 16-bit index conversion is dynamic (see
;     engine/16/), so GetPCNYMoveForSpecies converts the chosen mon's species
;     ID to an index before matching, and the move index is converted back to
;     an ID with GetMoveIDFromIndex before teaching. Storing 16-bit indexes is
;     also what lets moves above ID 255 (e.g. ENERGY_BALL) work here.
;   - LINE_id: LINE_* constant from data/pokemon/evo_lines.asm, used by
;     CheckLineFullyCaught to gate this row's move until every member of that
;     species' evolutionary line has been caught.
;
; Move substitution notes (constants that don't exist in this hack):
;   - PONYTA / DODUO originally listed LOW_KICK -> DOUBLE_KICK.
;   - CUBONE / LICKITUNG originally listed FURY_ATTACK / DOUBLESLAP; this hack's
;     multi-hit Normal move is FURY_STRIKES, used for both.

MACRO pcny_tutor_move
; species index, move index, LINE_* id
	dw \1, \2
	db \3
ENDM

PCNYTutorMoves:
	pcny_tutor_move BULBASAUR,   ANCIENTPOWER, LINE_BULBASAUR
	pcny_tutor_move CHARMANDER,  CRUNCH,       LINE_CHARMANDER
	pcny_tutor_move SQUIRTLE,    ZAP_CANNON,   LINE_SQUIRTLE
	pcny_tutor_move SPEAROW,     SONICBOOM,    LINE_SPEAROW
	pcny_tutor_move NIDORAN_F,   SWEET_KISS,   LINE_NIDORAN_F
	pcny_tutor_move NIDORAN_M,   LOVELY_KISS,  LINE_NIDORAN_M
	pcny_tutor_move ZUBAT,       FLAIL,        LINE_ZUBAT
	pcny_tutor_move ODDISH,      LEECH_SEED,   LINE_ODDISH
	pcny_tutor_move PARAS,       SYNTHESIS,    LINE_PARAS
	pcny_tutor_move PSYDUCK,     TRI_ATTACK,   LINE_PSYDUCK
	pcny_tutor_move POLIWAG,     GROWTH,       LINE_POLIWAG
	pcny_tutor_move ABRA,        FORESIGHT,    LINE_ABRA
	pcny_tutor_move MACHOP,      FALSE_SWIPE,  LINE_MACHOP
	pcny_tutor_move BELLSPROUT,  SWEET_KISS,   LINE_BELLSPROUT
	pcny_tutor_move TENTACOOL,   CONFUSE_RAY,  LINE_TENTACOOL
	pcny_tutor_move GEODUDE,     RAPID_SPIN,   LINE_GEODUDE
	pcny_tutor_move PONYTA,      DOUBLE_KICK,  LINE_PONYTA
	pcny_tutor_move MAGNEMITE,   AGILITY,      LINE_MAGNEMITE
	pcny_tutor_move FARFETCH_D,  FURY_CUTTER,  LINE_FARFETCH_D
	pcny_tutor_move DODUO,       DOUBLE_KICK,  LINE_DODUO
	pcny_tutor_move SEEL,        FLAIL,        LINE_SEEL
	pcny_tutor_move ONIX,        MEDITATE,     LINE_ONIX
	pcny_tutor_move DROWZEE,     AMNESIA,      LINE_DROWZEE
	pcny_tutor_move KRABBY,      METAL_CLAW,   LINE_KRABBY
	pcny_tutor_move VOLTORB,     AGILITY,      LINE_VOLTORB
	pcny_tutor_move EXEGGCUTE,   SWEET_SCENT,  LINE_EXEGGCUTE
	pcny_tutor_move CUBONE,      FURY_STRIKES, LINE_CUBONE
	pcny_tutor_move LICKITUNG,   FURY_STRIKES, LINE_LICKITUNG
	pcny_tutor_move CHANSEY,     SWEET_SCENT,  LINE_CHANSEY
	pcny_tutor_move TANGELA,     SYNTHESIS,    LINE_TANGELA
	pcny_tutor_move KANGASKHAN,  FAINT_ATTACK, LINE_KANGASKHAN
	pcny_tutor_move HORSEA,      HAZE,         LINE_HORSEA
	pcny_tutor_move GOLDEEN,     SWORDS_DANCE, LINE_GOLDEEN
	pcny_tutor_move STARYU,      TWISTER,      LINE_STARYU
	pcny_tutor_move MR__MIME,    LOCK_ON,      LINE_MR_MIME
	pcny_tutor_move SCYTHER,     SONICBOOM,    LINE_SCYTHER
	pcny_tutor_move PINSIR,      ROCK_THROW,   LINE_PINSIR
	pcny_tutor_move TAUROS,      QUICK_ATTACK, LINE_TAUROS
	pcny_tutor_move MAGIKARP,    BUBBLEBEAM,   LINE_MAGIKARP
	pcny_tutor_move LAPRAS,      BITE,         LINE_LAPRAS
	pcny_tutor_move EEVEE,       GROWTH,       LINE_EEVEE
	pcny_tutor_move PORYGON,     BARRIER,      LINE_PORYGON
	pcny_tutor_move OMANYTE,     ROCK_THROW,   LINE_OMANYTE
	pcny_tutor_move KABUTO,      ROCK_THROW,   LINE_KABUTO
	pcny_tutor_move AERODACTYL,  ROCK_THROW,   LINE_AERODACTYL
	pcny_tutor_move SNORLAX,     LOVELY_KISS,  LINE_SNORLAX
	pcny_tutor_move DRATINI,     HYDRO_PUMP,   LINE_DRATINI
	pcny_tutor_move CHIKORITA,   MOONBLAST,    LINE_CHIKORITA
	pcny_tutor_move CYNDAQUIL,   DOUBLE_EDGE,  LINE_CYNDAQUIL
	pcny_tutor_move TOTODILE,    SUBMISSION,   LINE_TOTODILE
	pcny_tutor_move SENTRET,     SCARY_FACE,   LINE_SENTRET
	pcny_tutor_move HOOTHOOT,    NIGHT_SHADE,  LINE_HOOTHOOT
	pcny_tutor_move LEDYBA,      BARRIER,      LINE_LEDYBA
	pcny_tutor_move SPINARAK,    GROWTH,       LINE_SPINARAK
	pcny_tutor_move CHINCHOU,    LIGHT_SCREEN, LINE_CHINCHOU
	pcny_tutor_move PICHU,       PETAL_DANCE,  LINE_PICHU
	pcny_tutor_move CLEFFA,      SWIFT,        LINE_CLEFFA
	pcny_tutor_move IGGLYBUFF,   MIMIC,        LINE_IGGLYBUFF
	pcny_tutor_move TOGEPI,      HIDDEN_POWER, LINE_TOGEPI
	pcny_tutor_move NATU,        SAFEGUARD,    LINE_NATU
	pcny_tutor_move MAREEP,      ENERGY_BALL,  LINE_MAREEP
	pcny_tutor_move MARILL,      HYDRO_PUMP,   LINE_MARILL
	pcny_tutor_move SUDOWOODO,   SUBSTITUTE,   LINE_SUDOWOODO
	pcny_tutor_move HOPPIP,      AGILITY,      LINE_HOPPIP
	pcny_tutor_move AIPOM,       MIMIC,        LINE_AIPOM
	pcny_tutor_move SUNKERN,     VITAL_THROW,  LINE_SUNKERN
	pcny_tutor_move YANMA,       STEEL_WING,   LINE_YANMA
	pcny_tutor_move WOOPER,      BELLY_DRUM,   LINE_WOOPER
	pcny_tutor_move MURKROW,     STEEL_WING,   LINE_MURKROW
	pcny_tutor_move MISDREAVUS,  HYPNOSIS,     LINE_MISDREAVUS
	pcny_tutor_move WOBBUFFET,   MIMIC,        LINE_WOBBUFFET
	pcny_tutor_move PINECO,      SUBSTITUTE,   LINE_PINECO
	pcny_tutor_move DUNSPARCE,   FURY_STRIKES, LINE_DUNSPARCE
	pcny_tutor_move SNUBBULL,    LOVELY_KISS,  LINE_SNUBBULL
	pcny_tutor_move QWILFISH,    DOUBLE_EDGE,  LINE_QWILFISH
	pcny_tutor_move HERACROSS,   SEISMIC_TOSS, LINE_HERACROSS
	pcny_tutor_move SNEASEL,     MOONLIGHT,    LINE_SNEASEL
	pcny_tutor_move TEDDIURSA,   SWEET_SCENT,  LINE_TEDDIURSA
	pcny_tutor_move SWINUB,      ROAR,         LINE_SWINUB
	pcny_tutor_move REMORAID,    AMNESIA,      LINE_REMORAID
	pcny_tutor_move DELIBIRD,    SPIKES,       LINE_DELIBIRD
	pcny_tutor_move MANTINE,     GUST,         LINE_MANTINE
	pcny_tutor_move SKARMORY,    FURY_CUTTER,  LINE_SKARMORY
	pcny_tutor_move PHANPY,      ABSORB,       LINE_PHANPY
	pcny_tutor_move STANTLER,    SAFEGUARD,    LINE_STANTLER
	pcny_tutor_move TYROGUE,     RAGE,         LINE_TYROGUE
	pcny_tutor_move SMOOCHUM,    METRONOME,    LINE_SMOOCHUM
	pcny_tutor_move ELEKID,      PURSUIT,      LINE_ELEKID
	pcny_tutor_move MAGBY,       FAINT_ATTACK, LINE_MAGBY
	pcny_tutor_move MILTANK,     MEGA_KICK,    LINE_MILTANK
	pcny_tutor_move LARVITAR,    RAGE,         LINE_LARVITAR
	dw -1 ; terminator (species index $ffff)
