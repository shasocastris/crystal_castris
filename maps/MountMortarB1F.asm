	object_const_def
	const MOUNTMORTARB1F_POKE_BALL1
	const MOUNTMORTARB1F_POKE_BALL2
	const MOUNTMORTARB1F_BOULDER
	const MOUNTMORTARB1F_KIYO
	const MOUNTMORTARB1F_POKE_BALL3
	const MOUNTMORTARB1F_POKE_BALL4
	const MOUNTMORTARB1F_POKE_BALL5
	const MOUNTMORTARB1F_SWIMMER_GIRL1
	const MOUNTMORTARB1F_SWIMMER_GIRL2
	const MOUNTMORTARB1F_SWIMMER_GUY

MountMortarB1F_MapScripts:
	def_scene_scripts

	def_callbacks

MountMortarB1FKiyoScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TYROGUE_FROM_KIYO
	iftrue .GotTyrogue
	checkevent EVENT_BEAT_BLACKBELT_KIYO
	iftrue .BeatKiyo
	writetext MountMortarB1FKiyoIntroText
	waitbutton
	closetext
	winlosstext MountMortarB1FKiyoWinText, 0
	loadtrainer BLACKBELT_T, KIYO
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLACKBELT_KIYO
	opentext
.BeatKiyo:
	writetext MountMortarB1FTyrogueRewardText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext MountMortarB1FReceiveMonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke TYROGUE, 10
	setevent EVENT_GOT_TYROGUE_FROM_KIYO
.GotTyrogue:
	writetext MountMortarB1FKiyoGotTyrogueText
	waitbutton
	closetext
	end

.NoRoom:
	writetext MountMortarB1FKiyoFullPartyText
	waitbutton
	closetext
	end

TrainerSwimmerfTara:
	trainer SWIMMERF, TARA, EVENT_BEAT_SWIMMERF_TARA, SwimmerfTaraSeenText, SwimmerfTaraBeatenText, 0, .Script

.Script:
	opentext
	writetext SwimmerfTaraAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfJody:
	trainer SWIMMERF, JODY, EVENT_BEAT_SWIMMERF_JODY, SwimmerfJodySeenText, SwimmerfJodyBeatenText, 0, .Script

.Script:
	opentext
	writetext SwimmerfJodyAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermDaryl:
	trainer SWIMMERM, DARYL, EVENT_BEAT_SWIMMERM_DARYL, SwimmermDarylSeenText, SwimmermDarylBeatenText, 0, .Script

.Script:
	opentext
	writetext SwimmermDarylAfterBattleText
	waitbutton
	closetext
	end

MountMortarB1FBoulder:
	jumpstd StrengthBoulderScript

MountMortarB1FHyperPotion:
	itemball HYPER_POTION

MountMortarB1FCarbos:
	itemball CARBOS

MountMortarB1FFullRestore:
	itemball FULL_RESTORE

MountMortarB1FMaxEther:
	itemball MAX_ETHER

MountMortarB1FPPUp:
	itemball PP_UP

MountMortarB1FHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_MOUNT_MORTAR_B1F_HIDDEN_MAX_REVIVE

MountMortarB1FKiyoIntroText:
	text "Hey!"

	para "I am the KARATE"
	line "KING!"

	para "I train alone here"
	line "in the dark!"

	para "You!"
	line "Battle with me!"

	para "Hwaaarggh!"
	done

MountMortarB1FKiyoWinText:
	text "Waaaarggh!"
	line "I'm beaten!"
	done

MountMortarB1FTyrogueRewardText:
	text "I… I'm crushed…"

	para "My training is"
	line "still not enough…"

	para "But a loss is a"
	line "loss. I admit it."

	para "As proof that you"
	line "defeated me, I'll"

	para "give you a rare"
	line "fighting #MON."
	done

MountMortarB1FReceiveMonText:
	text "<PLAYER> received"
	line "TYROGUE."
	done

MountMortarB1FKiyoGotTyrogueText:
	text "TYROGUE is a"
	line "fighting-type."

	para "It evolves into a"
	line "tougher #MON."

	para "Keep up the hard"
	line "work. I'll keep"
	cont "training too."

	para "Farewell!"
	done

MountMortarB1FKiyoFullPartyText:
	text "You have no room"
	line "in your party!"
	done

SwimmerfTaraSeenText:
	text "These pools are"
	line "amazing for"
	cont "training!"

	para "Cold water makes"
	line "my #MON tough!"

	para "Want to test your"
	line "endurance?"
	done

SwimmerfTaraBeatenText:
	text "You're as tough"
	line "as these waters!"
	done

SwimmerfTaraAfterBattleText:
	text "Cave swimming is"
	line "so different from"
	cont "the ocean!"

	para "No currents or"
	line "waves, just pure"
	cont "resistance!"

	para "Physical training"
	line "works for #MON"
	cont "and trainers!"
	done

SwimmerfJodySeenText:
	text "I came here to"
	line "find rare #MON"
	cont "in these pools!"

	para "The water is so"
	line "refreshing after"
	cont "hiking!"

	para "Let's battle to"
	line "warm up!"
	done

SwimmerfJodyBeatenText:
	text "That heated me up!"
	done

SwimmerfJodyAfterBattleText:
	text "Cave pools create"
	line "unique habitats!"

	para "Even if I don't"
	line "catch anything,"
	cont "training is worth"
	cont "it!"
	done

SwimmermDarylSeenText:
	text "This cave has the"
	line "most challenging"
	cont "swimming spots!"

	para "Deep pools, narrow"
	line "passages, cold"
	cont "temperatures!"

	para "Perfect for"
	line "serious training!"
	done

SwimmermDarylBeatenText:
	text "You've got serious"
	line "skills!"
	done

SwimmermDarylAfterBattleText:
	text "I've swam in every"
	line "major water body"
	cont "in JOHTO!"

	para "But these cave"
	line "pools are the"
	cont "ultimate test!"

	para "No sunlight, echo"
	line "sounds, freezing"
	cont "water!"
	done

MountMortarB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, MOUNT_MORTAR_1F_INSIDE, 5
	warp_event 19, 29, MOUNT_MORTAR_1F_OUTSIDE, 7

	def_coord_events

	def_bg_events
	bg_event  4,  6, BGEVENT_ITEM, MountMortarB1FHiddenMaxRevive

	def_object_events
	object_event 29, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FHyperPotion, EVENT_MOUNT_MORTAR_B1F_HYPER_POTION
	object_event  4, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FCarbos, EVENT_MOUNT_MORTAR_B1F_CARBOS
	object_event  9, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortarB1FBoulder, -1
	object_event 16,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MountMortarB1FKiyoScript, -1
	object_event 34, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FFullRestore, EVENT_MOUNT_MORTAR_B1F_FULL_RESTORE
	object_event 32,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FMaxEther, EVENT_MOUNT_MORTAR_B1F_MAX_ETHER
	object_event 21, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortarB1FPPUp, EVENT_MOUNT_MORTAR_B1F_PP_UP
	object_event 27,  7, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfTara, -1
	object_event 12, 22, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfJody, -1
	object_event 27, 23, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermDaryl, -1
