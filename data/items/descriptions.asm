ItemDescriptions:
	indirect_table 2, 1
	indirect_entries NUM_ITEM_POCKET, ItemDescriptions1
	indirect_entries FIRST_KEY_ITEM - 1; sparse Table
	indirect_entries (FIRST_KEY_ITEM - 1) + NUM_KEY_ITEM_POCKET, ItemDescriptionsKeyItems
	indirect_entries FIRST_BALL_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_BALL_ITEM - 1) + NUM_BALL_ITEM_POCKET, ItemDescriptionsBalls
	indirect_table_end

ItemDescriptions1:
; entries correspond to item ids (see constants/item_constants.asm)
	dw PotionDesc       ; 000D
	dw SuperPotionDesc  ; 000C
	dw HyperPotionDesc  ; 000B
	dw MaxPotionDesc    ; 000A

	dw AntidoteDesc     ; 0004
	dw BurnHealDesc     ; 0005
	dw ParlyzHealDesc   ; 0008
	dw AwakeningDesc    ; 0007
	dw IceHealDesc      ; 0006
	dw FullHealDesc     ; 0021
	dw FullRestoreDesc  ; 0009

	dw ReviveDesc       ; 0022
	dw MaxReviveDesc    ; 0023

	dw EtherDesc        ; 0035
	dw MaxEtherDesc     ; 0036
	dw ElixerDesc       ; 0037
	dw MaxElixerDesc    ; 0010

	dw HPUpDesc         ; 0015
	dw ProteinDesc      ; 0016
	dw IronDesc         ; 0017
	dw CarbosDesc       ; 0018
	dw CalciumDesc      ; 001A
	dw ZincDesc         ; 0071
	dw RareCandyDesc    ; 001B
	dw PPUpDesc         ; 0034

	dw FreshWaterDesc   ; 0029
	dw SodaPopDesc      ; 002A
	dw LemonadeDesc     ; 002B
	dw MoomooMilkDesc   ; 0038
	dw RageCandyBarDesc ; 0062

	dw EnergyPowderDesc ; 0067
	dw EnergyRootDesc   ; 0068
	dw HealPowderDesc   ; 0069
	dw RevivalHerbDesc  ; 006A

	dw SacredAshDesc    ; 0084
	dw MysticDewDesc    ; 0002 -> MYSTIC_DEW

	dw BerryDesc        ; 008E
	dw GoldBerryDesc    ; 008F
	dw MysteryBerryDesc ; 007E
	dw MiracleBerryDesc ; 005D
	dw PsnCureBerryDesc ; 003A
	dw PrzCureBerryDesc ; 003E
	dw BurntBerryDesc   ; 003F
	dw IceBerryDesc     ; 0040
	dw BitterBerryDesc  ; 0043
	dw MintBerryDesc    ; 0044

	dw AttackUpBerryDesc    ; 0083 -> ATK_UP_BERRY
	dw DefenseUpBerryDesc   ; 0086 -> DEF_UP_BERRY
	dw SpeedUpBerryDesc     ; 008C -> SPD_UP_BERRY
	dw SpAttackUpBerryDesc  ; 0090 -> SPA_UP_BERRY
	dw SpDefenseUpBerryDesc ; 0091 -> SPF_UP_BERRY
	dw AccuracyUpBerryDesc  ; 009C -> ACC_UP_BERRY
	dw EvasionUpBerryDesc   ; 009D -> EVN_UP_BERRY

	dw BerryJuiceDesc   ; 0073

	dw RepelDesc        ; 000F
	dw SuperRepelDesc   ; 0025
	dw MaxRepelDesc     ; 0026

	dw EscapeRopeDesc   ; 000E
	dw PokeDollDesc     ; 0020

	dw XAttackDesc      ; 002C
	dw XDefendDesc      ; 002E
	dw XSpeedDesc       ; 002F
	dw XSpAttackDesc    ; 0030
	dw XSpDefenseDesc   ; 006F -> X_SP_DEF
	dw XAccuracyDesc    ; 001C
	dw GuardSpecDesc    ; 0024
	dw DireHitDesc      ; 0027

	dw LeafStoneDesc    ; 001D
	dw FireStoneDesc    ; 0011
	dw WaterStoneDesc   ; 0013
	dw ThunderStoneDesc ; 0012
	dw MoonStoneDesc    ; 0003
	dw SunStoneDesc     ; 008A
	dw MistStoneDesc    ; 0060

	dw ExpShareDesc     ; 0032

	dw MiracleSeedDesc  ; 0063
	dw SilverPowderDesc ; 0048
	dw PoisonBarbDesc   ; 0041
	dw CharcoalDesc     ; 0072
	dw MysticWaterDesc  ; 004F
	dw NeverMeltIceDesc ; 005B
	dw MagnetDesc       ; 005C
	dw BlackbeltDesc    ; 0052
	dw HardStoneDesc    ; 006B
	dw SoftSandDesc     ; 003C
	dw TwistedSpoonDesc ; 0050
	dw PinkBowDesc      ; 0058
	dw PolkadotBowDesc  ; 008B
	dw SharpBeakDesc    ; 003D
	dw SpellTagDesc     ; 0061
	dw BlackGlassesDesc ; 0056
	dw MetalCoatDesc    ; 0077
	dw DragonFangDesc   ; 0078

	dw BerserkGeneDesc  ; 0080
	dw BrightpowderDesc ; 0001
	dw QuickClawDesc    ; 0039
	dw KingsRockDesc    ; 0042
	dw AmuletCoinDesc   ; 004B
	dw CleanseTagDesc   ; 004E
	dw SmokeBallDesc    ; 005A
	dw FocusBandDesc    ; 0065
	dw LuckyEggDesc     ; 006C
	dw LeftoversDesc    ; 007A
	dw ScopeLensDesc    ; 0074

	dw LightBallDesc    ; 0087
	dw StickDesc        ; 0059
	dw ThickClubDesc    ; 0064
	dw LuckyPunchDesc   ; 0019
	dw MetalPowderDesc  ; 001E

	dw DragonScaleDesc  ; 007F
	dw UpGradeDesc      ; 008D
	dw RazorClawDesc    ; 0081 -> RAZOR_CLAW
	dw DubiousDiscDesc  ; 009E -> DUBIOUS_DISC
	dw ProtectorDesc    ; 009F -> PROTECTOR

	dw SilverLeafDesc   ; 0033
	dw GoldLeafDesc     ; 003B

	dw NuggetDesc       ; 001F
	dw TinyMushroomDesc ; 0046
	dw BigMushroomDesc  ; 0047
	dw PearlDesc        ; 005E
	dw BigPearlDesc     ; 005F
	dw StardustDesc     ; 006D
	dw StarPieceDesc    ; 006E
	dw BrickPieceDesc   ; 0092
	dw SlowpokeTailDesc ; 0057

	dw WhtApricornDesc  ; 0051
	dw RedApricornDesc  ; 0045
	dw BluApricornDesc  ; 0049
	dw BlkApricornDesc  ; 0053
	dw YlwApricornDesc  ; 004C
	dw GrnApricornDesc  ; 004D
	dw PnkApricornDesc  ; 0055

	dw NormalBoxDesc    ; 0088
	dw GorgeousBoxDesc  ; 0089

	dw FlowerMailDesc   ; 0085
	dw SurfMailDesc     ; 0093
	dw LiteBlueMailDesc ; 0094
	dw PortraitMailDesc ; 0095
	dw LovelyMailDesc   ; 0096
	dw EonMailDesc      ; 0097
	dw MorphMailDesc    ; 0098
	dw BlueSkyMailDesc  ; 0099
	dw MusicMailDesc    ; 009A
	dw MirageMailDesc   ; 009B

	dw PoisonGuardDesc  ; 0014 -> POISON_GUARD
	dw BurnGuardDesc    ; 0028 -> BURN_GUARD
	dw FreezeGuardDesc  ; 002D -> FREEZE_GUARD
	dw SleepGuardDesc   ; 004A -> SLEEP_GUARD
	dw ParlyzGuardDesc  ; 0054 -> PARLYZ_GUARD
	dw ConfuseGuardDesc ; 0066 -> CONFUSEGUARD

	dw DampRockDesc     ; 0075 -> DAMP_ROCK
	dw HeatRockDesc     ; 0076 -> HEAT_ROCK
	dw SmoothRockDesc   ; 0079 -> SMOOTH_ROCK
	dw IcyRockDesc      ; 007B -> ICY_ROCK

	dw LightClayDesc    ; 007C -> LIGHT_CLAY
	dw GripClawDesc     ; 007D -> GRIP_CLAW

	dw SafariLureDesc   ; 0082 -> SAFARI_LURE

	dw RadianceOrbDesc  ; 0070 -> RADIANCE_ORB
.IndirectEnd:

ItemDescriptionsKeyItems:
	dw BicycleDesc      ; 0100
	dw CoinCaseDesc     ; 0101
	dw ItemfinderDesc   ; 0102
	dw OldRodDesc       ; 0103
	dw GoodRodDesc      ; 0104
	dw SuperRodDesc     ; 0105
	dw RedScaleDesc     ; 0106
	dw SecretPotionDesc ; 0107
	dw SSTicketDesc     ; 0108
	dw MysteryEggDesc   ; 0109
	dw ClearBellDesc    ; 010A
	dw SilverWingDesc   ; 010B
	dw GSBallDesc       ; 010C
	dw BlueCardDesc     ; 010D
	dw CardKeyDesc      ; 010E
	dw MachinePartDesc  ; 010F
	dw EggTicketDesc    ; 0110
	dw LostItemDesc     ; 0111
	dw BasementKeyDesc  ; 0112
	dw PassDesc         ; 0113
	dw SquirtBottleDesc ; 0114
	dw RainbowWingDesc  ; 0115
	dw PokeFluteDesc    ; 0031 -> POKE_FLUTE
.IndirectEnd:

ItemDescriptionsBalls:
	dw MasterBallDesc ; 0200
	dw UltraBallDesc  ; 0201
	dw GreatBallDesc  ; 0202
	dw PokeBallDesc   ; 0203
	dw HeavyBallDesc  ; 0204
	dw LevelBallDesc  ; 0205
	dw LureBallDesc   ; 0206
	dw FastBallDesc   ; 0207
	dw FriendBallDesc ; 0208
	dw MoonBallDesc   ; 0209
	dw LoveBallDesc   ; 020A
	dw ParkBallDesc   ; 020B
.IndirectEnd:

PotionDesc:
	db   "Restores #MON"
	next "HP by 20.@"

SuperPotionDesc:
	db   "Restores #MON"
	next "HP by 50.@"

HyperPotionDesc:
	db   "Restores #MON"
	next "HP by 200.@"

MaxPotionDesc:
	db   "Fully restores"
	next "#MON HP.@"

AntidoteDesc:
	db   "Cures poisoned"
	next "#MON.@"

BurnHealDesc:
	db   "Heals burned"
	next "#MON.@"

ParlyzHealDesc:
	db   "Heals paralyzed"
	next "#MON.@"

AwakeningDesc:
	db   "Awakens sleeping"
	next "#MON.@"

IceHealDesc:
	db   "Heals a frostbit-"
	next "ten #MON.@"

FullHealDesc:
	db   "Eliminates all"
	next "status problems.@"

FullRestoreDesc:
	db   "Fully restores HP"
	next "& status.@"

ReviveDesc:
	db   "Restores a fainted"
	next "#MON to 1/2 HP.@"

MaxReviveDesc:
	db   "Fully restores a"
	next "fainted #MON.@"

MaxElixerDesc:
	db   "Fully restores the"
	next "PP of one #MON.@"

EtherDesc:
	db   "Restores PP of one"
	next "move by 10.@"

MaxEtherDesc:
	db   "Fully restores PP"
	next "of one move.@"

ElixerDesc:
	db   "Restores PP of all"
	next "moves by 10.@"

HPUpDesc:
	db   "Raises the HP of"
	next "one #MON.@"

ProteinDesc:
	db   "Raises ATTACK of"
	next "one #MON.@"

IronDesc:
	db   "Raises DEFENSE of"
	next "one #MON.@"

CarbosDesc:
	db   "Raises SPEED of"
	next "one #MON.@"

CalciumDesc:
	db   "Raises SPCL.ATK"
	next "of one #MON.@"

ZincDesc:
	db   "Raises SPCL.DEF"
	next "of one #MON.@"

RareCandyDesc:
	db   "Raises level of a"
	next "#MON by one.@"

PPUpDesc:
	db   "Raises max PP of"
	next "a selected move.@"

FreshWaterDesc:
	db   "Restores #MON"
	next "HP by 50.@"

SodaPopDesc:
	db   "Restores #MON"
	next "HP by 60.@"

LemonadeDesc:
	db   "Restores #MON"
	next "HP by 80.@"

MoomooMilkDesc:
	db   "Restores #MON"
	next "HP by 100.@"

RageCandyBarDesc:
	db   "Restores #MON"
	next "HP by 20.@"

EnergyPowderDesc:
	db   "Restores #MON"
	next "HP by 50. Bitter.@"

EnergyRootDesc:
	db   "Restores #MON"
	next "HP by 200. Bitter.@"

HealPowderDesc:
	db   "Cures all status"
	next "problems. Bitter.@"

RevivalHerbDesc:
	db   "Revives fainted"
	next "#MON. Bitter.@"

SacredAshDesc:
	db   "Fully revives all"
	next "fainted #MON.@"

MysticDewDesc:
	db   "Fully restores HP,"
	next "PP & status.@"

BerryDesc:
	db   "A self-restore"
	next "item for 10HP.@"

GoldBerryDesc:
	db   "A self-restore"
	next "item for 30HP.@"

MysteryBerryDesc:
	db   "A self-restore"
	next "item for 5 PP.@"

MiracleBerryDesc:
	db   "Self-cure for all"
	next "status problems.@"

PsnCureBerryDesc:
	db   "A self-cure for"
	next "poison.@"

PrzCureBerryDesc:
	db   "A self-cure for"
	next "paralysis.@"

BurntBerryDesc:
	db   "A self-cure for"
	next "frostbite.@"

IceBerryDesc:
	db   "A self-heal for a"
	next "burn.@"

BitterBerryDesc:
	db   "A self-cure for"
	next "confusion.@"

MintBerryDesc:
	db   "A self-awakening"
	next "for sleep.@"

AttackUpBerryDesc:
	db   "Raises Attack in"
	next "a pinch.@"

DefenseUpBerryDesc:
	db   "Raises Defense in"
	next "a pinch.@"

SpeedUpBerryDesc:
	db   "Raises Speed in"
	next "a pinch.@"

SpAttackUpBerryDesc:
	db   "Raises Sp.Atk in"
	next "a pinch.@"

SpDefenseUpBerryDesc:
	db   "Raises Sp.Def in"
	next "a pinch.@"

AccuracyUpBerryDesc:
	db   "Raises Accuracy in"
	next "a pinch.@"

EvasionUpBerryDesc:
	db   "Raises Evasion in"
	next "a pinch.@"

BerryJuiceDesc:
	db   "Restores #MON"
	next "HP by 20.@"

RepelDesc:
	db   "Repels weak #-"
	next "MON for 100 steps.@"

SuperRepelDesc:
	db   "Repels weak #-"
	next "MON for 200 steps.@"

MaxRepelDesc:
	db   "Repels weak #-"
	next "MON for 250 steps.@"

EscapeRopeDesc:
	db   "Use for escaping"
	next "from caves, etc.@"

PokeDollDesc:
	db   "Use to escape from"
	next "a wild #MON.@"

XAttackDesc:
	db   "Raises ATTACK."
	next "(1 BTL)@"

XDefendDesc:
	db   "Raises DEFENSE."
	next "(1 BTL)@"

XSpeedDesc:
	db   "Raises SPEED."
	next "(1 BTL)@"

XSpAttackDesc:
	db   "Raises SPECIAL"
	next "ATTACK. (1 BTL)@"

XSpDefenseDesc:
	db   "Raises SPECIAL"
	next "DEFENSE. (1 BTL)@"

XAccuracyDesc:
	db   "Raises accuracy."
	next "(1 BTL)@"

GuardSpecDesc:
	db   "Prevents stats"
	next "reduction. (1 BTL)@"

DireHitDesc:
	db   "Ups critical hit"
	next "ratio. (1 BTL)@"

LeafStoneDesc:
FireStoneDesc:
WaterStoneDesc:
ThunderStoneDesc:
MoonStoneDesc:
SunStoneDesc:
MistStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

ExpShareDesc:
	db   "Shares battle EXP."
	next "Points.@"

MiracleSeedDesc:
	db   "Powers up grass-"
	next "type moves.@"

PoisonBarbDesc:
	db   "Powers up poison-"
	next "type moves.@"

SilverPowderDesc:
	db   "Powers up bug-type"
	next "moves.@"

CharcoalDesc:
	db   "Powers up fire-"
	next "type moves.@"

MysticWaterDesc:
	db   "Powers up water-"
	next "type moves.@"

NeverMeltIceDesc:
	db   "Powers up ice-type"
	next "moves.@"

MagnetDesc:
	db   "Boosts electric-"
	next "type moves.@"

BlackbeltDesc:
	db   "Boosts fighting-"
	next "type moves.@"

HardStoneDesc:
	db   "Powers up rock-"
	next "type moves.@"

SoftSandDesc:
	db   "Powers up ground-"
	next "type moves.@"

TwistedSpoonDesc:
	db   "Powers up psychic-"
	next "type moves.@"

PinkBowDesc:
	db   "Powers up normal-"
	next "type moves.@"

PolkadotBowDesc:
	db   "Powers up fairy-"
	next "type moves.@"

SharpBeakDesc:
	db   "Powers up flying-"
	next "type moves.@"

SpellTagDesc:
	db   "Powers up ghost-"
	next "type moves.@"

BlackGlassesDesc:
	db   "Powers up dark-"
	next "type moves.@"

MetalCoatDesc:
	db   "Powers up steel-"
	next "type moves.@"

DragonFangDesc:
	db   "Powers up dragon-"
	next "type moves.@"

BerserkGeneDesc:
	db   "Boosts ATTACK but"
	next "causes confusion.@"

BrightpowderDesc:
	db   "Lowers the foe's"
	next "accuracy.@"

QuickClawDesc:
	db   "Raises 1st strike"
	next "ratio.@"

KingsRockDesc:
	db   "May make the foe"
	next "flinch.@"

AmuletCoinDesc:
	db   "Doubles monetary"
	next "earnings.@"

CleanseTagDesc:
	db   "Helps repel wild"
	next "#MON.@"

SmokeBallDesc:
	db   "Escape from wild"
	next "#MON.@"

FocusBandDesc:
	db   "May prevent faint-"
	next "ing.@"

LuckyEggDesc:
	db   "Earns extra EXP."
	next "points.@"

LeftoversDesc:
	db   "Restores HP during"
	next "battle.@"

ScopeLensDesc:
	db   "Raises critical"
	next "hit ratio.@"

LightBallDesc:
	db   "An odd, electrical"
	next "orb.@"

StickDesc:
	db   "An ordinary stick."
	next "Sell low.@"

ThickClubDesc:
	db   "A bone of some"
	next "sort. Sell low.@"

LuckyPunchDesc:
	db   "Ups critical hit"
	next "ratio of CHANSEY.@"

MetalPowderDesc:
	db   "Raises DEFENSE of"
	next "DITTO.@"

DragonScaleDesc:
	db   "A rare dragon-type"
	next "item.@"

UpGradeDesc:
	db   "A mysterious box"
	next "made by SILPH CO.@"

RazorClawDesc:
	db   "Raises critical"
	next "hit ratio.@"

DubiousDiscDesc:
	db   "A transparent disc"
	next "of unknown origin.@"

ProtectorDesc:
	db   "A protective item."
	next "Stiff and heavy.@"

SilverLeafDesc:
	db   "A strange, silver-"
	next "colored leaf.@"

GoldLeafDesc:
	db   "A strange, gold-"
	next "colored leaf.@"

NuggetDesc:
	db   "Made of pure gold."
	next "Sell high.@"

TinyMushroomDesc:
	db   "An ordinary mush-"
	next "room. Sell low.@"

BigMushroomDesc:
	db   "A rare mushroom."
	next "Sell high.@"

PearlDesc:
	db   "A beautiful pearl."
	next "Sell low.@"

BigPearlDesc:
	db   "A big, beautiful"
	next "pearl. Sell high.@"

StardustDesc:
	db   "Pretty, red sand."
	next "Sell high.@"

StarPieceDesc:
	db   "A hunk of red gem."
	next "Sell very high.@"

BrickPieceDesc:
	db   "A rare chunk of"
	next "tile.@"

SlowpokeTailDesc:
	db   "Very tasty. Sell"
	next "high.@"

WhtApricornDesc:
	db   "A white APRICORN.@"

RedApricornDesc:
	db   "A red APRICORN.@"

BluApricornDesc:
	db   "A blue APRICORN.@"

BlkApricornDesc:
	db   "A black APRICORN."
	next "@"

YlwApricornDesc:
	db   "A yellow APRICORN.@"

GrnApricornDesc:
	db   "A green APRICORN.@"

PnkApricornDesc:
	db   "A pink APRICORN."
	next "@"

NormalBoxDesc:
	db   "Open it and see"
	next "what's inside.@"

GorgeousBoxDesc:
	db   "Open it and see"
	next "what's inside.@"

FlowerMailDesc:
	db   "Flower-print MAIL."
	next "(HOLD)@"

SurfMailDesc:
	db   "LAPRAS-print MAIL."
	next "(HOLD)@"

LiteBlueMailDesc:
	db   "DRATINI-print"
	next "MAIL.@"

PortraitMailDesc:
	db   "MAIL featuring the"
	next "holder's likeness.@"

LovelyMailDesc:
	db   "Heart-print MAIL."
	next "(HOLD)@"

EonMailDesc:
	db   "EEVEE-print MAIL."
	next "(HOLD)@"

MorphMailDesc:
	db   "DITTO-print MAIL."
	next "(HOLD)@"

BlueSkyMailDesc:
	db   "Sky-print MAIL."
	next "(HOLD)@"

MusicMailDesc:
	db   "NATU-print MAIL."
	next "(HOLD)@"

MirageMailDesc:
	db   "MEW-print MAIL."
	next "(HOLD)@"

PokeFluteDesc:
	db   "Plays a pleasant"
	next "melody.@"

PoisonGuardDesc:
	db	 "User can't get"
	next "poisoned.@"

BurnGuardDesc:
	db	 "User can't get"
	next "burned.@"

FreezeGuardDesc:
	db	 "User can't get"
	next "frostbite.@"

SleepGuardDesc:
	db	 "User can't fall"
	next "asleep.@"

ParlyzGuardDesc:
	db	 "User can't get"
	next "paralyzed.@"

ConfuseGuardDesc:
	db	 "User can't get"
	next "confused.@"

DampRockDesc:
	db   "Extends duration"
	next "of rain.@"

HeatRockDesc:
	db   "Extends duration"
	next "of sun.@"

SmoothRockDesc:
	db   "Extends duration"
	next "of sand.@"

IcyRockDesc:
	db   "Extends duration"
	next "of hail.@"

LightClayDesc:
	db   "Extends duration"
	next "of barrier moves.@"

GripClawDesc:
	db   "Extends duration"
	next "of trapping moves.@"

SafariLureDesc:
	db   "Increase chance to"
	next "capture #MON.@"

RadianceOrbDesc:
	db   "Reveals true power"
	next "of #MON.@"

BicycleDesc:
	db   "A collapsible bike"
	next "for fast movement.@"

CoinCaseDesc:
	db   "Holds up to 9,999"
	next "game coins.@"

ItemfinderDesc:
	db   "Checks for unseen"
	next "items in the area.@"

OldRodDesc:
	db   "Use by water to"
	next "fish for #MON.@"

GoodRodDesc:
	db   "A good ROD for"
	next "catching #MON.@"

SuperRodDesc:
	db   "The best ROD for"
	next "catching #MON.@"

RedScaleDesc:
	db   "A scale from the"
	next "red GYARADOS.@"

SecretPotionDesc:
	db   "Fully heals any"
	next "#MON.@"

SSTicketDesc:
	db   "A ticket for the"
	next "S.S.AQUA.@"

MysteryEggDesc:
	db   "An EGG obtained"
	next "from MR.#MON.@"

ClearBellDesc:
	db   "Makes a gentle"
	next "ringing.@"

SilverWingDesc:
	db   "A strange, silver-"
	next "colored feather.@"

GSBallDesc:
	db   "The mysterious"
	next "BALL.@"

BlueCardDesc:
	db   "Card to save"
	next "points.@"

CardKeyDesc:
	db   "Opens shutters in"
	next "the RADIO TOWER.@"

MachinePartDesc:
	db   "A machine part for"
	next "the POWER PLANT.@"

EggTicketDesc:
	db   "May use at Golden-"
	next "rod trade corner.@"

LostItemDesc:
	db   "The # DOLL lost"
	next "by the COPYCAT.@"

BasementKeyDesc:
	db   "Opens doors.@"

PassDesc:
	db   "A ticket for the"
	next "MAGNET TRAIN.@"

SquirtBottleDesc:
	db   "A bottle used for"
	next "watering plants.@"

RainbowWingDesc:
	db   "A mystical feather"
	next "of rainbow colors.@"

MasterBallDesc:
	db   "The best BALL. It"
	next "never misses.@"

UltraBallDesc:
	db   "A BALL with a high"
	next "rate of success.@"

GreatBallDesc:
	db   "A BALL with a de-"
	next "cent success rate.@"

PokeBallDesc:
	db   "An item for catch-"
	next "ing #MON.@"

HeavyBallDesc:
	db   "A BALL for catch-"
	next "ing heavy #MON.@"

LevelBallDesc:
	db   "A BALL for lower-"
	next "level #MON.@"

LureBallDesc:
	db   "A BALL for #MON"
	next "hooked by a ROD.@"

FastBallDesc:
	db   "A BALL for catch-"
	next "ing fast #MON.@"

FriendBallDesc:
	db   "A BALL that makes"
	next "#MON friendly.@"

MoonBallDesc:
	db   "A BALL for MOON"
	next "STONE evolvers.@"

LoveBallDesc:
	db   "For catching the"
	next "opposite gender.@"

ParkBallDesc:
	db   "The Bug-Catching"
	next "Contest BALL.@"

QuestionMarkDesc:
	db   "?@"

