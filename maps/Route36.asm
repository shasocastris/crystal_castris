	object_const_def
	const ROUTE36_YOUNGSTER1
	const ROUTE36_YOUNGSTER2
	const ROUTE36_WEIRD_TREE
	const ROUTE36_LASS1
	const ROUTE36_FISHER
	const ROUTE36_FRUIT_TREE
	const ROUTE36_ARTHUR
	const ROUTE36_FLORIA
	const ROUTE36_SUICUNE
	const ROUTE36_LASS2

Route36_MapScripts:
	def_scene_scripts
	scene_script Route36Noop1Scene, SCENE_ROUTE36_NOOP
	scene_script Route36Noop2Scene, SCENE_ROUTE36_SUICUNE

	def_callbacks

Route36Noop1Scene:
	end

Route36Noop2Scene:
	end

Route36SuicuneScript:
	showemote EMOTE_SHOCK, PLAYER, 15
	pause 15
	playsound SFX_WARP_FROM
	turnobject PLAYER, UP
	applymovement ROUTE36_SUICUNE, Route36SuicuneMovement
	disappear ROUTE36_SUICUNE
	turnobject PLAYER, DOWN
	pause 10
	setscene SCENE_ROUTE36_NOOP
	clearevent EVENT_SAW_SUICUNE_AT_CIANWOOD_CITY
	setmapscene CIANWOOD_CITY, SCENE_CIANWOODCITY_SUICUNE_AND_EUSINE
	end

SudowoodoScript:
	checkitem SQUIRTBOTTLE
	iftrue .Fight

	waitsfx
	playsound SFX_SANDSTORM
	applymovement ROUTE36_WEIRD_TREE, SudowoodoShakeMovement
	end

.Fight:
	opentext
	writetext UseSquirtbottleText
	yesorno
	iffalse DidntUseSquirtbottleScript
	closetext
WateredWeirdTreeScript:: ; export (for when you use Squirtbottle from pack)
	opentext
	writetext UsedSquirtbottleText
	waitbutton
	closetext
	waitsfx
	playsound SFX_SANDSTORM
	applymovement ROUTE36_WEIRD_TREE, SudowoodoShakeMovement
	opentext
	writetext SudowoodoAttackedText
	waitbutton
	closetext
	loadwildmon SUDOWOODO, 20
	startbattle
	setevent EVENT_FOUGHT_SUDOWOODO
	ifequal DRAW, DidntCatchSudowoodo
	disappear ROUTE36_WEIRD_TREE
	variablesprite SPRITE_WEIRD_TREE, SPRITE_TWIN
	reloadmapafterbattle
	end

DidntUseSquirtbottleScript:
	closetext
	end

DidntCatchSudowoodo:
	reloadmapafterbattle
	applymovement ROUTE36_WEIRD_TREE, WeirdTreeMovement_Flee
	disappear ROUTE36_WEIRD_TREE
	variablesprite SPRITE_WEIRD_TREE, SPRITE_TWIN
	special LoadUsedSpritesGFX
	special RefreshSprites
	end

Route36FloriaScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_FLORIA_AT_FLOWER_SHOP
	iftrue .SecondTimeTalking
	setevent EVENT_MET_FLORIA
	writetext FloriaText1
	waitbutton
	closetext
	clearevent EVENT_FLORIA_AT_FLOWER_SHOP
	readvar VAR_FACING
	ifequal UP, .Up
	applymovement ROUTE36_FLORIA, FloriaMovement1
	disappear ROUTE36_FLORIA
	end

.Up:
	applymovement ROUTE36_FLORIA, FloriaMovement2
	disappear ROUTE36_FLORIA
	end

.SecondTimeTalking:
	writetext FloriaText2
	waitbutton
	closetext
	end

Route36RockSmashGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM08_ROCK_SMASH
	iftrue .AlreadyGotRockSmash
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .ClearedSudowoodo
	writetext RockSmashGuyText1
	waitbutton
	closetext
	end

.ClearedSudowoodo:
	writetext RockSmashGuyText2
	promptbutton
	verbosegiveitem TM_ROCK_SMASH
	iffalse .NoRoomForTM
	setevent EVENT_GOT_TM08_ROCK_SMASH
.AlreadyGotRockSmash:
	writetext RockSmashGuyText3
	waitbutton
.NoRoomForTM:
	closetext
	end

Route36LassScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .ClearedSudowoodo
	writetext Route36LassText
	waitbutton
	closetext
	end

.ClearedSudowoodo:
	writetext Route36LassText_ClearedSudowoodo
	waitbutton
	closetext
	end

TrainerSchoolboyAlan1:
	trainer SCHOOLBOY, ALAN1, EVENT_BEAT_SCHOOLBOY_ALAN, SchoolboyAlan1SeenText, SchoolboyAlan1BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_SCHOOLBOY_ALAN
	opentext
	checkflag ENGINE_ALAN_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkflag ENGINE_ALAN_HAS_FIRE_STONE
	iftrue .GiveFireStone
	checkcellnum PHONE_SCHOOLBOY_ALAN
	iftrue .NumberAccepted
	checkevent EVENT_ALAN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext SchoolboyAlanBooksText
	promptbutton
	setevent EVENT_ALAN_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .ContinueAskForPhoneNumber

.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_SCHOOLBOY_ALAN
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, SCHOOLBOY, ALAN1
	scall .RegisteredNumber
	sjump .NumberAccepted

.ChooseRematch:
	scall .Rematch
	winlosstext SchoolboyAlan1BeatenText, 0
	checkflag ENGINE_FLYPOINT_BLACKTHORN
	iftrue .LoadFight4
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight3
; fallthrough
	loadtrainer SCHOOLBOY, ALAN2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALAN_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer SCHOOLBOY, ALAN3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALAN_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer SCHOOLBOY, ALAN4
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_ALAN_READY_FOR_REMATCH
	end

.GiveFireStone:
	scall .Gift
	verbosegiveitem FIRE_STONE
	iffalse .BagFull
	clearflag ENGINE_ALAN_HAS_FIRE_STONE
	setevent EVENT_ALAN_GAVE_FIRE_STONE
	sjump .NumberAccepted

.BagFull:
	sjump .PackFull

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

.Gift:
	jumpstd GiftMScript
	end

.PackFull:
	jumpstd PackFullMScript
	end

TrainerLassNoni:
	trainer LASS, NONI, EVENT_BEAT_LASS_NONI, LassNoniSeenText, LassNoniBeatenText, 0, .Script
.Script:
	opentext
	writetext LassNoniAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicMark:
	trainer PSYCHIC_T, MARK, EVENT_BEAT_PSYCHIC_MARK, PsychicMarkSeenText, PsychicMarkBeatenText, 0, .Script
.Script:
	opentext
	writetext PsychicMarkAfterBattleText
	waitbutton
	closetext
	end

ArthurScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HARD_STONE_FROM_ARTHUR
	iftrue ArthurGaveStoneScript
	readvar VAR_WEEKDAY
	ifequal THURSDAY, .GiveHardStone
	writetext ArthurSeenText
	waitbutton
	closetext
	winlosstext ArthurBeatenText, ArthurWinsText
	loadtrainer YOUNGSTER, ARTHUR
	startbattle
	reloadmapafterbattle
	opentext
.GiveHardStone:
	writetext ArthurGivesGiftText
	promptbutton
	verbosegiveitem HARD_STONE
	iffalse ArthurDoneScript
	setevent EVENT_GOT_HARD_STONE_FROM_ARTHUR
	writetext ArthurGaveGiftText
	waitbutton
	closetext
	end

ArthurGaveStoneScript:
	writetext ArthurGaveStoneText
	waitbutton
ArthurDoneScript:
	closetext
	end

Route36Sign:
	jumptext Route36SignText

RuinsOfAlphNorthSign:
	jumptext RuinsOfAlphNorthSignText

Route36TrainerTips1:
	jumptext Route36TrainerTips1Text

Route36TrainerTips2:
	jumptext Route36TrainerTips2Text

Route36FruitTree:
	fruittree FRUITTREE_ROUTE_36

SudowoodoShakeMovement:
	tree_shake
	step_end

WeirdTreeMovement_Flee:
	fast_jump_step UP
	fast_jump_step UP
	step_end

FloriaMovement1:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

FloriaMovement2:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Route36SuicuneMovement:
	set_sliding
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	fast_jump_step RIGHT
	remove_sliding
	step_end

UseSquirtbottleText:
	text "It's a weird tree."
	line "Use SQUIRTBOTTLE?"
	done

UsedSquirtbottleText:
	text "<PLAYER> used the"
	line "SQUIRTBOTTLE."
	done

SudowoodoAttackedText:
	text "The weird tree"
	line "doesn't like the"
	cont "SQUIRTBOTTLE!"

	para "The weird tree"
	line "attacked!"
	done

Route36PokemonRangerText_BeforePlainBadge:
	text "HALT!"

	para "I'm a #MON"
	line "RANGER stationed"
	cont "here by emergency"
	cont "order."

	para "The routes east of"
	line "ECRUTEAK CITY are"
	cont "extremely dangerous"
	cont "right now."

	para "We're restricting"
	line "access to everyone"
	cont "but proven #MON"
	cont "trainers."
	done

PokemonRangerText_AfterPlainBadge_Departing:
	text "You have the"
	line "PLAINBADGE?"

	para "You might strong"
	line "enough to help!"

	para "I must report this"
	line "to ECRUTEAK at"
	cont "once."

	para "Head there as soon"
	line "as you can. They"
	cont "need all the help"
	cont "they can get!"
	done

FloriaText1:
	text "I'm the FLOWER"
	line "SHOP's FLORIA!"

	para "Listen, listen!"

	para "When I sprinkled"
	line "water on that"

	para "wiggly tree, it"
	line "jumped right up!"

	para "It just has to be"
	line "a #MON."

	para "I bet it would be"
	line "shocked out of its"

	para "disguise if you"
	line "soaked it!"

	para "I know! I'll tell"
	line "my sis and borrow"
	cont "her water bottle!"
	done

FloriaText2:
	text "When I told my sis"
	line "about the jiggly"

	para "tree, she said"
	line "it's dangerous."

	para "If I beat WHITNEY,"
	line "I wonder if she'll"

	para "lend me her water"
	line "bottle…"
	done

RockSmashGuyText1:
	text "Wa-hey!"

	para "I was going to"
	line "battle that"

	para "#MON RANGER"
	line "blocking the road."

	para "But he refused!"

	para "Can he do that?"
	done

RockSmashGuyText2:
	text "Did you get past"
	line "that stubborn"
	cont "RANGER?"

	para "I'm impressed!"

	para "Take some of these"
	line "COINS and"
	cont "celebrate on me!"
	done

RockSmashGuyText3:
	text "I won those COINS"
	line "at the GAME CORNER"
	cont "a while back."

	para "But my wife got me"
	line "off gambling."

	para "Enjoy them! But"
	line "don't get hooked!"
	done

;RockSmashGuyNoCoinCase:
;	text "Huh? I wanna give"
;	line "you some COINS for"
;
;	para "the GAME CORNER,"
;	line "but you need a"
;	cont "COIN CASE."
;	done

;RockSmashGuyFullCoinCase:
;	text "Huh? Your have all"
;	line "the COINS you can"
;	cont "carry already?"
;
;	para "Whoa, you're rich!"
;	line "Or lucky!"
;	end

Route36LassText:
	text "There is a #MON"
	line "RANGER is guarding"
	cont "the path to"
	cont "GOLDENROD CITY."

	para "It's preventing"
	line "me from shopping."

	para "Something should"
	line "be done about it."
	done

Route36LassText_ClearedSudowoodo:
	text "That man ran off"
	line "so quickly."

	para "Oh! He had to go"
	line "to ECRUTEAK?"
	done

LassNoniSeenText:
	text "You're going to"
	line "talk to the RANGER"
	cont "at the crossroad?"
	done

LassNoniBeatenText:
	text "Better you than"
	line "me!"
	done

LassNoniAfterBattleText:
	text "What did he have"
	line "to say?"
	done

PsychicMarkSeenText:
	text "I'm going to read"
	line "your thoughts!"
	done

PsychicMarkBeatenText:
	text "I misread you!"
	done

PsychicMarkAfterBattleText:
	text "I'd be strong if"
	line "only I could tell"

	para "what my opponent"
	line "was thinking."
	done

SchoolboyAlan1SeenText:
	text "Thanks to my stud-"
	line "ies, I'm ready for"
	cont "any #MON!"
	done

SchoolboyAlan1BeatenText:
	text "Oops! Computation"
	line "error?"
	done

SchoolboyAlanBooksText:
	text "Darn. I study five"
	line "hours a day too."

	para "There's more to"
	line "learning than just"
	cont "reading books."
	done

ArthurSeenText:
	text "ARTHUR: Who are"
	line "you?"

	para "I'm ARTHUR of"
	line "Thursday."

    para "That's when I hand"
    line "out HARD STONES to"
    cont "anybody who asks."

	para "Today? You'll have"
	line "to battle for it."
	done

ArthurBeatenText:
	text "Well done."
	done

ArthurWinsText:
	text "Come back another"
	line "day."
	done

ArthurGivesGiftText:
	text "Here. You can have"
	line "this."
	done

ArthurGaveStoneText:
	text "ARTHUR: I'm the"
	line "second son out of"
    cont "seven children."

	para "Don't tell MONICA,"
	line "but SANTOS is my"
	cont "favorite sibling."
	done

ArthurGaveGiftText:
	text "ARTHUR: A #MON"
	line "that uses rock-"

	para "type moves should"
	line "hold on to that."

	para "It pumps up rock-"
	line "type attacks."
	done

Route36SignText:
	text "ROUTE 36"
	done

RuinsOfAlphNorthSignText:
	text "RUINS OF ALPH"
	line "NORTH ENTRANCE"
	done

Route36TrainerTips1Text:
	text "TRAINER TIPS"

	para "#MON stats"
	line "vary--even within"
	cont "the same species."

	para "Their stats may be"
	line "similar at first."

	para "However, differ-"
	line "ences will become"

	para "pronounced as the"
	line "#MON grow."
	done

Route36TrainerTips2Text:
	text "TRAINER TIPS"

	para "Use DIG to return"
	line "to the entrance of"
	cont "any place."

	para "It is convenient"
	line "for exploring"

	para "caves and other"
	line "landmarks."
	done

Route36_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  8, ROUTE_36_NATIONAL_PARK_GATE, 3
	warp_event  6,  9, ROUTE_36_NATIONAL_PARK_GATE, 4
	warp_event 35, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 1
	warp_event 36, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 2

	def_coord_events
	coord_event  8,  7, SCENE_ROUTE36_SUICUNE, Route36SuicuneScript
	coord_event 10,  7, SCENE_ROUTE36_SUICUNE, Route36SuicuneScript

	def_bg_events
	bg_event 17,  1, BGEVENT_READ, Route36TrainerTips2
	bg_event 33, 11, BGEVENT_READ, RuinsOfAlphNorthSign
	bg_event 43,  7, BGEVENT_READ, Route36Sign
	bg_event  9,  7, BGEVENT_READ, Route36TrainerTips1

	def_object_events
	object_event  8, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicMark, -1
	object_event 19, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerSchoolboyAlan1, -1
	object_event 23,  9, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SudowoodoScript, EVENT_ROUTE_36_SUDOWOODO
	object_event 39,  8, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36LassScript, -1
	object_event 32,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36RockSmashGuyScript, -1
	object_event  9,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36FruitTree, -1
	object_event 34,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArthurScript, EVENT_ROUTE_36_ARTHUR_OF_THURSDAY
	object_event 21, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route36FloriaScript, EVENT_FLORIA_AT_SUDOWOODO
	object_event  9,  6, SPRITE_SUICUNE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SAW_SUICUNE_ON_ROUTE_36
	object_event 28,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 5, TrainerLassNoni, -1
