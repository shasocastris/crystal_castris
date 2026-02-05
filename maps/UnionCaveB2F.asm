	object_const_def
	const UNIONCAVEB2F_COOLTRAINER_M
	const UNIONCAVEB2F_COOLTRAINER_F1
	const UNIONCAVEB2F_COOLTRAINER_F2
	const UNIONCAVEB2F_POKE_BALL1
	const UNIONCAVEB2F_POKE_BALL2
	const UNIONCAVEB2F_LAPRAS
	const UNIONCAVEB2F_POKE_BALL3

UnionCaveB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, UnionCaveB2FLaprasCallback

UnionCaveB2FLaprasCallback:
	checkflag ENGINE_UNION_CAVE_LAPRAS
	iftrue .NoAppear
	readvar VAR_WEEKDAY
	ifequal FRIDAY, .Appear
.NoAppear:
	disappear UNIONCAVEB2F_LAPRAS
	endcallback

.Appear:
	appear UNIONCAVEB2F_LAPRAS
	endcallback

UnionCaveLapras:
	faceplayer
	cry LAPRAS
	loadwildmon LAPRAS, 30
	startbattle
	disappear UNIONCAVEB2F_LAPRAS
	setflag ENGINE_UNION_CAVE_LAPRAS
	reloadmapafterbattle
	end

TrainerCooltrainermNick:
	trainer COOLTRAINERM, NICK, EVENT_BEAT_COOLTRAINERM_NICK, CooltrainermNickSeenText, CooltrainermNickBeatenText, 0, .Script

.Script:
	opentext
	writetext CooltrainermNickAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfGwen:
	trainer COOLTRAINERF, GWEN, EVENT_BEAT_COOLTRAINERF_GWEN, CooltrainerfGwenSeenText, CooltrainerfGwenBeatenText, 0, .Script

.Script:
	opentext
	writetext CooltrainerfGwenAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfEmma:
	trainer COOLTRAINERF, EMMA, EVENT_BEAT_COOLTRAINERF_EMMA, CooltrainerfEmmaSeenText, CooltrainerfEmmaBeatenText, 0, .Script

.Script:
	opentext
	writetext CooltrainerfEmmaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermLewis:
	trainer SWIMMERM, LEWIS, EVENT_BEAT_SWIMMERM_LEWIS, SwimmermLewisSeenText, SwimmermLewisBeatenText, 0, .Script

.Script:
	opentext
	writetext SwimmermLewisAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermJames:
	trainer SWIMMERM, JAMES, EVENT_BEAT_SWIMMERM_JAMES, SwimmermJamesEmmaSeenText, SwimmermJamesEmmaBeatenText, 0, .Script

.Script:
	opentext
	writetext SwimmermJamesAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfLisa:
	trainer SWIMMERF, LISA, EVENT_BEAT_SWIMMERF_LISA, SwimmerfLisaSeenText, SwimmerfLisaBeatenText, 0, .Script

.Script:
	opentext
	writetext SwimmerfLisaAfterBattleText
	waitbutton
	closetext
	end

UnionCaveB2FElixer:
	itemball ELIXER

UnionCaveB2FHyperPotion:
	itemball HYPER_POTION

UnionCaveB2FDampRock:
	itemball DAMP_ROCK

UnionCaveB2FHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_UNION_CAVE_1F_HIDDEN_FULL_RESTORE

CooltrainermNickSeenText:
	text "There are two"
	line "kinds of people."

	para "Those who have"
	line "style, and those"
	cont "who don't."

	para "What kind of"
	line "person are you?"
	done

CooltrainermNickBeatenText:
	text "You've got"
	line "dazzling style!"
	done

CooltrainermNickAfterBattleText:
	text "Your #MON style"
	line "is stunning and"
	cont "colorful, I admit."

	para "You'll just keep"
	line "getting better!"
	done

CooltrainerfGwenSeenText:
	text "I'm in training."
	line "Care for a round?"
	done

CooltrainerfGwenBeatenText:
	text "Aww, no! You're"
	line "too good for me."
	done

CooltrainerfGwenAfterBattleText:
	text "I'm going to train"
	line "by myself until I"
	cont "improve."
	done

CooltrainerfEmmaSeenText:
	text "If the #MON I"
	line "liked were there,"
	cont "I'd go anywhere."

	para "That's what a real"
	line "trainer does."
	done

CooltrainerfEmmaBeatenText:
	text "I'd rather pet my"
	line "babies than this!"
	done

CooltrainerfEmmaAfterBattleText:
	text "Just once a week,"
	line "a #MON comes to"
	cont "the water's edge."

	para "I wanted to see"
	line "that #MON…"
	done

SwimmermLewisSeenText:
	text "I train by"
	line "swimming with"
	cont "my #MON!"

	para "The currents build"
	line "up our endurance!"
	done

SwimmermLewisBeatenText:
	text "Splash! You sank"
	line "my team!"
	done

SwimmermLewisAfterBattleText:
	text "I need to swim"
	line "against stronger"
	cont "currents."

	para "Maybe near the"
	line "WHIRL ISLANDS"
	cont "next time."
	done

SwimmermJamesEmmaSeenText:
	text "I collect rare"
	line "seashells while"
	cont "I swim!"

	para "My #MON help"
	line "me find the"
	cont "best ones!"
	done

SwimmermJamesEmmaBeatenText:
	text "My collection"
	line "can't compare to"
	cont "your strength!"
	done

SwimmermJamesAfterBattleText:
	text "I found a PEARL"
	line "yesterday! It's"
	cont "worth a lot."

	para "Some #MON"
	line "create them"
	cont "naturally."

	para "Fascinating,"
	line "don't you think?"
	done

SwimmerfLisaSeenText:
	text "I'm training to"
	line "compete in the"
	cont "CERULEAN swim"
	cont "tournament!"

	para "Part of the course"
	line "is in freezing"
	cont "water."
	done

SwimmerfLisaBeatenText:
	text "You'd win gold at"
	line "the tourney for"
	cont "sure!"
	done

SwimmerfLisaAfterBattleText:
	text "The ice type"
	line "can't be hurt by"
	cont "HAIL."
	done

UnionCaveB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  3, UNION_CAVE_B1F, 5

	def_coord_events

	def_bg_events
	bg_event 17, 16, BGEVENT_ITEM, UnionCaveB2FHiddenFullRestore

	def_object_events
	object_event 15, 19, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermNick, -1
	object_event  5, 13, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfGwen, -1
	object_event  3, 30, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfEmma, -1
	object_event 16,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB2FElixer, EVENT_UNION_CAVE_B2F_ELIXER
	object_event 12, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB2FHyperPotion, EVENT_UNION_CAVE_B2F_HYPER_POTION
	object_event 11, 31, SPRITE_SURF, SPRITEMOVEDATA_SWIM_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnionCaveLapras, EVENT_UNION_CAVE_B2F_LAPRAS
	object_event  3, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB2FDampRock, EVENT_UNION_CAVE_B2F_DAMP_ROCK
	object_event 17, 10, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSwimmermLewis, -1
	object_event  6,  7, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSwimmermJames, -1
	object_event  8, 20, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerSwimmerfLisa, -1
