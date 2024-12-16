; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 0000
	const POTION       ; 000D
	const SUPER_POTION ; 000C
	const HYPER_POTION ; 000B
	const MAX_POTION   ; 000A

	const ANTIDOTE     ; 0004
	const BURN_HEAL    ; 0005
	const PARLYZ_HEAL  ; 0008
	const AWAKENING    ; 0007
	const ICE_HEAL     ; 0006
	const FULL_HEAL    ; 0021
	const FULL_RESTORE ; 0009

	const REVIVE       ; 0022
	const MAX_REVIVE   ; 0023

	const ETHER        ; 0035
	const MAX_ETHER    ; 0036
	const ELIXER       ; 0037
	const MAX_ELIXER   ; 0010

	const HP_UP        ; 0015
	const PROTEIN      ; 0016
	const IRON         ; 0017
	const CARBOS       ; 0018
	const CALCIUM      ; 001A
	const ZINC         ; 0071
	const RARE_CANDY   ; 001B
	const PP_UP        ; 0034

	const FRESH_WATER  ; 0029
	const SODA_POP     ; 002A
	const LEMONADE     ; 002B
	const MOOMOO_MILK  ; 0038
	const RAGECANDYBAR ; 0062

	const ENERGYPOWDER ; 0067
	const ENERGY_ROOT  ; 0068
	const HEAL_POWDER  ; 0069
	const REVIVAL_HERB ; 006A

	const SACRED_ASH   ; 0084
	const MYSTIC_DEW   ; 0002 -> MYSTIC_DEW, sacred ash analog for Lugia

	const BERRY        ; 008E
	const GOLD_BERRY   ; 008F
	const MYSTERYBERRY ; 007E
	const MIRACLEBERRY ; 005D
	const PSNCUREBERRY ; 003A
	const PRZCUREBERRY ; 003E
	const BURNT_BERRY  ; 003F
	const ICE_BERRY    ; 0040
	const BITTER_BERRY ; 0043
	const MINT_BERRY   ; 0044

	const ATK_UP_BERRY ; 0083 - ATK_UP_BERRY, HELD_ATTACK_UP
	const DEF_UP_BERRY ; 0086 - DEF_UP_BERRY, HELD_DEFENSE_UP
	const SPD_UP_BERRY ; 008C - SPD_UP_BERRY, HELD_SPEED_UP
	const SPA_UP_BERRY ; 0090 - SPA_UP_BERRY, HELD_SP_ATTACK_UP
	const SPF_UP_BERRY ; 0091 - SPF_UP_BERRY, HELD_SP_DEFENSE_UP
	const ACC_UP_BERRY ; 009C - ACC_UP_BERRY, HELD_ACCURACY_UP
	const EVN_UP_BERRY ; 009D - EVN_UP_BERRY, HELD_EVASION_UP

	const BERRY_JUICE  ; 0073

	const REPEL        ; 000F
	const SUPER_REPEL  ; 0025
	const MAX_REPEL    ; 0026

	const ESCAPE_ROPE  ; 000E
	const POKE_DOLL    ; 0020

	const X_ATTACK     ; 002C
	const X_DEFEND     ; 002E
	const X_SPEED      ; 002F
	const X_SP_ATK     ; 0030 - X_SP_ATK
	const X_SP_DEF     ; 006F - X_SP_DEF
	const X_ACCURACY   ; 001C
	const GUARD_SPEC   ; 0024
	const DIRE_HIT     ; 0027

	const LEAF_STONE   ; 001D
	const FIRE_STONE   ; 0011
	const WATER_STONE  ; 0013
	const THUNDERSTONE ; 0012
	const MOON_STONE   ; 0003
	const SUN_STONE    ; 008A
	const MIST_STONE   ; 0060

	const EXP_SHARE    ; 0032

	const MIRACLE_SEED ; 0063
	const SILVERPOWDER ; 0048
	const POISON_BARB  ; 0041
	const CHARCOAL     ; 0072
	const MYSTIC_WATER ; 004F
	const NEVERMELTICE ; 005B
	const MAGNET       ; 005C
	const BLACKBELT_I  ; 0052
	const HARD_STONE   ; 006B
	const SOFT_SAND    ; 003C
	const TWISTEDSPOON ; 0050
	const PINK_BOW     ; 0058
	const POLKADOT_BOW ; 008B
	const SHARP_BEAK   ; 003D
	const SPELL_TAG    ; 0061
	const BLACKGLASSES ; 0056
	const METAL_COAT   ; 0077
	const DRAGON_FANG  ; 0078

	const BERSERK_GENE ; 0080
 	const BRIGHTPOWDER ; 0001
	const QUICK_CLAW   ; 0039
	const KINGS_ROCK   ; 0042
	const AMULET_COIN  ; 004B
	const CLEANSE_TAG  ; 004E
	const SMOKE_BALL   ; 005A
	const FOCUS_BAND   ; 0065
	const LUCKY_EGG    ; 006C
	const LEFTOVERS    ; 007A
	const SCOPE_LENS   ; 0074

	const LIGHT_BALL   ; 0087
	const STICK        ; 0059
	const THICK_CLUB   ; 0064
	const LUCKY_PUNCH  ; 0019
	const METAL_POWDER ; 001E

	const DRAGON_SCALE ; 007F
	const UP_GRADE     ; 008D
	const RAZOR_CLAW   ; 0081 - RAZOR_CLAW
	const DUBIOUS_DISC ; 009E - DUBIOUS_DISC
	const PROTECTOR    ; 009F - PROTECTOR

	const SILVER_LEAF  ; 0033
	const GOLD_LEAF    ; 003B

	const NUGGET       ; 001F
	const TINYMUSHROOM ; 0046
	const BIG_MUSHROOM ; 0047
	const PEARL        ; 005E
	const BIG_PEARL    ; 005F
	const STARDUST     ; 006D
	const STAR_PIECE   ; 006E
	const BRICK_PIECE  ; 0092
	const SLOWPOKETAIL ; 0057

	const WHT_APRICORN ; 0051
	const RED_APRICORN ; 0045
	const BLU_APRICORN ; 0049
	const BLK_APRICORN ; 0053
	const YLW_APRICORN ; 004C
	const GRN_APRICORN ; 004D
	const PNK_APRICORN ; 0055

	const NORMAL_BOX   ; 0088
	const GORGEOUS_BOX ; 0089

	const FLOWER_MAIL  ; 0085
	const SURF_MAIL    ; 0093
	const LITEBLUEMAIL ; 0094
	const PORTRAITMAIL ; 0095
	const LOVELY_MAIL  ; 0096
	const EON_MAIL     ; 0097
	const MORPH_MAIL   ; 0098
	const BLUESKY_MAIL ; 0099
	const MUSIC_MAIL   ; 009A
	const MIRAGE_MAIL  ; 009B

	const POISON_GUARD ; 0014 - POISON_GUARD
	const BURN_GUARD   ; 0028 - BURN_GUARD
	const FREEZE_GUARD ; 002D - FREEZE_GUARD
	const SLEEP_GUARD  ; 004A - SLEEP_GUARD
	const PARLYZ_GUARD ; 0054 - PARLYZ_GUARD
	const CONFUSEGUARD ; 0066 - CONFUSEGUARD

	const DAMP_ROCK   ; 0075 - DAMP_ROCK, extend rain
	const HEAT_ROCK   ; 0076 - HEAT_ROCK, extend sun
	const SMOOTH_ROCK ; 0079 - SMOOTH_ROCK, extend sand
	const ICY_ROCK    ; 007B - ICY_ROCK, extend hail

	const LIGHT_CLAY   ; 007C - LIGHT_CLAY, extend barriers
	const GRIP_CLAW    ; 007D - GRIP_CLAW, extend trap duration

	const SAFARI_LURE  ; 0082 - SAFARI_LURE, increase catch chance w/ HELD_CATCH_CHANCE

	const RADIANCE_ORB ; 0070 - LEGENDS_AURA -> RADIANCE_ORB, mass stats buff

DEF NUM_ITEM_POCKET EQU const_value - 1

	const_align 8 ; Key items assume the value of HIGH(FIRST_KEY_ITEM) when storing in bag.
DEF FIRST_KEY_ITEM EQU const_value
	const BICYCLE      ; 0100
	const COIN_CASE    ; 0101
	const ITEMFINDER   ; 0102
	const OLD_ROD      ; 0103
	const GOOD_ROD     ; 0104
	const SUPER_ROD    ; 0105
	const RED_SCALE    ; 0106
	const SECRETPOTION ; 0107
	const S_S_TICKET   ; 0108
	const MYSTERY_EGG  ; 0109
	const CLEAR_BELL   ; 010A
	const SILVER_WING  ; 010B
	const GS_BALL      ; 010C
	const BLUE_CARD    ; 010D
	const CARD_KEY     ; 010E
	const MACHINE_PART ; 010F
	const EGG_TICKET   ; 0110
	const LOST_ITEM    ; 0111
	const BASEMENT_KEY ; 0112
	const PASS         ; 0113
	const SQUIRTBOTTLE ; 0114
	const RAINBOW_WING ; 0115
	const POKE_FLUTE   ; 0031
DEF NUM_KEY_ITEM_POCKET EQU const_value - FIRST_KEY_ITEM
assert NUM_KEY_ITEM_POCKET <= $ff

	const_align 8; Ball items assume the value of HIGH(FIRST_BALL_ITEM) when storing in bag.
DEF FIRST_BALL_ITEM EQU const_value
	const MASTER_BALL  ; 0200
	const ULTRA_BALL   ; 0201
	const GREAT_BALL   ; 0202
	const POKE_BALL    ; 0203
	const HEAVY_BALL   ; 0204
	const LEVEL_BALL   ; 0205
	const LURE_BALL    ; 0206
	const FAST_BALL    ; 0207
	const FRIEND_BALL  ; 0208
	const MOON_BALL    ; 0209
	const LOVE_BALL    ; 020A
	const PARK_BALL    ; 020B
DEF NUM_BALL_ITEM_POCKET EQU const_value - FIRST_BALL_ITEM
assert NUM_BALL_ITEM_POCKET <= $ff
DEF NUM_ITEMS EQU const_value - 1

DEF __tmhm_value__ = 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $bf
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE = \1
	add_tmnum \1
ENDM

	const_align 8 ; TMHM items assume the value of HIGH(FIRST_TMHM_ITEM) when storing in bag.
DEF FIRST_TMHM_ITEM EQU const_value
; see data/moves/tmhm_moves.asm for moves
DEF TM01 EQU const_value
	add_tm DYNAMICPUNCH ; 0300
	add_tm HEADBUTT     ; 0301
	add_tm CURSE        ; 0302
	add_tm ROLLOUT      ; 0303
	add_tm ROAR         ; 0304
	add_tm TOXIC        ; 0305
	add_tm ZAP_CANNON   ; 0306
	add_tm ROCK_SMASH   ; 0307
	add_tm PSYCH_UP     ; 0308
	add_tm HIDDEN_POWER ; 0309
	add_tm SUNNY_DAY    ; 030A
	add_tm SWEET_SCENT  ; 030B
	add_tm SNORE        ; 030C
	add_tm BLIZZARD     ; 030D
	add_tm HYPER_BEAM   ; 030E
	add_tm ICY_WIND     ; 030F
	add_tm PROTECT      ; 0310
	add_tm RAIN_DANCE   ; 0311
	add_tm GIGA_DRAIN   ; 0312
	add_tm ENDURE       ; 0313
	add_tm FRUSTRATION  ; 0314
	add_tm SOLARBEAM    ; 0315
	add_tm IRON_TAIL    ; 0316
	add_tm DRAGONBREATH ; 0317
	add_tm THUNDER      ; 0318
	add_tm EARTHQUAKE   ; 0319
	add_tm RETURN       ; 031A
	add_tm DIG          ; 031B
	add_tm PSYCHIC_M    ; 031C
	add_tm SHADOW_BALL  ; 031D
	add_tm MUD_SLAP     ; 031E
	add_tm DOUBLE_TEAM  ; 031F
	add_tm ICE_PUNCH    ; 0320
	add_tm SWAGGER      ; 0321
	add_tm SLEEP_TALK   ; 0322
	add_tm SLUDGE_BOMB  ; 0323
	add_tm SANDSTORM    ; 0324
	add_tm FIRE_BLAST   ; 0325
	add_tm SWIFT        ; 0326
	add_tm DEFENSE_CURL ; 0327
	add_tm THUNDERPUNCH ; 0328
	add_tm DREAM_EATER  ; 0329
	add_tm DETECT       ; 032A
	add_tm REST         ; 032B
	add_tm ATTRACT      ; 032C
	add_tm THIEF        ; 032D
	add_tm STEEL_WING   ; 032E
	add_tm FIRE_PUNCH   ; 032F
	add_tm FURY_CUTTER  ; 0330
	add_tm NIGHTMARE    ; 0331
DEF NUM_TMS EQU __tmhm_value__ - 1

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $f3
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT       ; 0332
	add_hm FLY       ; 0333
	add_hm SURF      ; 0334
	add_hm STRENGTH  ; 0335
	add_hm FLASH     ; 0336
	add_hm WHIRLPOOL ; 0337
	add_hm WATERFALL ; 0338
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

assert (NUM_TMS + NUM_HMS) < $ff, "TMs/HMs can't exceed 255 due to GetTMHMNumber."

MACRO add_mt
; Defines two constants:
; - \1_TMNUM: the learnable TM/HM flag, starting at 58
; - MT##_MOVE: alias for the move id, equal to the value of \1
	DEF MT_VALUE = __tmhm_value__ - NUM_TMS - NUM_HMS
	DEF MT{02d:MT_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF MT01 EQU const_value
	add_mt FLAMETHROWER
	add_mt THUNDERBOLT
	add_mt ICE_BEAM
DEF NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

DEF NUM_TM_HM_TUTOR EQU NUM_TMS + NUM_HMS + NUM_TUTORS

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ffff

; leftovers from red
DEF SAFARI_BALL    EQU $08 ; MOON_STONE
DEF MOON_STONE_RED EQU $0a ; BURN_HEAL
DEF FULL_HEAL_RED  EQU $34 ; X_SPEED
