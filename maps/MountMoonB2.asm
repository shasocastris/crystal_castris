	object_const_def
	const MOUNTMOON_B2_POKE_BALL1
	const MOUNTMOON_B2_POKE_BALL2
	const MOUNTMOON_B2_POKE_BALL3
	const MOUNTMOON_B2_ROCKET_GIRL1
	const MOUNTMOON_B2_ROCKET_GIRL2
	const MOUNTMOON_B2_ROCKET
	const MOUNTMOON_B2_SCIENTIST
	const MOUNTMOON_B2_SUPER_NERD

MountMoonB2_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .CeruleanCaveEntrance

.CeruleanCaveEntrance:
	checkevent EVENT_DISCOVERED_CERULEAN_CAVE
	iftrue .UncoverEntrance
	changeblock 33, 10, $19
.UncoverEntrance:
	endcallback

CeruleanCaveEntranceScript:
	checkevent EVENT_DISCOVERED_CERULEAN_CAVE
	iftrue .AlreadyFound
	setevent EVENT_DISCOVERED_CERULEAN_CAVE
	setmapscene CERULEAN_BASE_2, SCENE_CERULEANBASE2_NOOP
	special FadeOutMusic
	pause 15
	earthquake 50
	showemote EMOTE_SHOCK, PLAYER, 15
	playsound SFX_STRENGTH
	changeblock 33, 10, $3f
	refreshmap
	opentext
	writetext CeruleanCaveEntranceText
	waitbutton
	closetext
	end

.AlreadyFound:
	end

CeruleanCaveEntranceText:
	text "A hidden pit!"
	line "Is this the secret"
	cont "entrance to"
	cont "CERULEAN CAVE?"
	done

TrainerGruntF14:
	trainer GRUNTF, GRUNTF_14, EVENT_BEAT_ROCKET_GRUNTF_14, GruntF14SeenText, GruntF14BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntF14AfterBattleText
	waitbutton
	closetext
	end

GruntF14SeenText:
	text "You've got some"
	line "nerve coming down"
	cont "this deep."
	done

GruntF14BeatenText:
	text "Unbelievable!"
	done

GruntF14AfterBattleText:
	text "What are you even"
	line "doing down here?"

	para "Nothing but ZUBAT"
	line "and rocks this"
	cont "far in."
	done


TrainerGruntF15:
	trainer GRUNTF, GRUNTF_15, EVENT_BEAT_ROCKET_GRUNTF_15, GruntF15SeenText, GruntF15BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntF15AfterBattleText
	waitbutton
	closetext
	end

GruntF15SeenText:
	text "You're not getting"
	line "past this point."
	done

GruntF15BeatenText:
	text "How strong are you"
	line "exactly?!"
	done

GruntF15AfterBattleText:
	text "Fine. Keep going."

	para "You won't find the"
	line "hidden entrance"
	cont "anyway."
	done


TrainerGruntM38:
	trainer GRUNTM, GRUNTM_38, EVENT_BEAT_ROCKET_GRUNTM_38, GruntM38SeenText, GruntM38BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM38AfterBattleText
	waitbutton
	closetext
	end

GruntM38SeenText:
	text "End of the line,"
	line "kid."
	done

GruntM38BeatenText:
	text "I don't get it…"
	done

GruntM38AfterBattleText:
	text "You beat everyone"
	line "down here?"

	para "You're either"
	line "very good or very"
	cont "lucky."

	para "Either way, get"
	line "out of my sight."
	done


TrainerScientistMiles:
	trainer SCIENTIST, MILES, EVENT_BEAT_SCIENTIST_MILES, ScientistMilesSeenText, ScientistMilesBeatenText, 0, .Script

.Script:
	opentext
	writetext ScientistMilesAfterBattleText
	waitbutton
	closetext
	end

ScientistMilesSeenText:
	text "Intruder detected."
	line "Initiating"
	cont "countermeasures."
	done

ScientistMilesBeatenText:
	text "Countermeasures"
	line "insufficient."
	done

ScientistMilesAfterBattleText:
	text "The CLEFAIRY"
	line "population here"
	cont "is remarkable."

	para "I've been logging"
	line "their behavior"
	cont "for three weeks."

	para "Fascinating data."
	line "Shame about the"
	cont "interruption."
	done


TrainerPokemaniacFelix:
	trainer POKEMANIAC, FELIX, EVENT_BEAT_POKEMANIAC_FELIX, PokemaniacFelixSeenText, PokemaniacFelixBeatenText, 0, .Script

.Script:
	opentext
	writetext PokemaniacFelixAfterBattleText
	waitbutton
	closetext
	end

PokemaniacFelixSeenText:
	text "The rarest #MON"
	line "live deepest in"
	cont "the cave!"

	para "You'll have to"
	line "beat me to get"
	cont "to them!"
	done

PokemaniacFelixBeatenText:
	text "You're worthy of"
	line "the deep caves!"
	done

PokemaniacFelixAfterBattleText:
	text "DOME and HELIX"
	line "fossils were first"
	cont "found right here"
	cont "in MT.MOON."

	para "I've been hunting"
	line "for a third fossil"
	cont "type for years."

	para "No luck yet."
	line "But I'll find it."
	done

MountMoonB2MoonStone:
	itemball MOON_STONE

MountMoonB2FullRestore:
	itemball FULL_RESTORE

MountMoonB2Calcium:
	itemball CALCIUM

MountMoonB2HiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_MT_MOON_B2_HIDDEN_MAX_POTION

MountMoonB2HiddenNugget:
	hiddenitem NUGGET, EVENT_MT_MOON_B2_HIDDEN_NUGGET

MountMoonB2HiddenPPUp:
	hiddenitem PP_UP, EVENT_MT_MOON_B2_HIDDEN_PP_UP

MountMoonB2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 25, MOUNT_MOON_B1, 7
	warp_event 25,  9, MOUNT_MOON_B1, 6
	warp_event 21, 17, MOUNT_MOON_B1, 5
	warp_event  5, 11, ROUTE_4, 1
	warp_event 33, 10, CERULEAN_CAVE, 2

	def_coord_events

	def_bg_events
	bg_event 26, 18, BGEVENT_ITEM, MountMoonB2HiddenMaxPotion
	bg_event 15, 19, BGEVENT_ITEM, MountMoonB2HiddenNugget
	bg_event 25,  6, BGEVENT_ITEM, MountMoonB2HiddenPPUp
	bg_event 33, 10, BGEVENT_READ, CeruleanCaveEntranceScript

	def_object_events
	object_event 21, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonB2MoonStone, EVENT_MT_MOON_B2_MOON_STONE
	object_event 33,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonB2FullRestore, EVENT_MT_MOON_B2_FULL_RESTORE
	object_event  7,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonB2Calcium, EVENT_MT_MOON_B2_CALCIUM
	object_event 22, 21, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN,   0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerGruntF14, EVENT_CLEARED_CERULEAN_CAVE
	object_event 31,  5, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN,  0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGruntF15, EVENT_CLEARED_CERULEAN_CAVE
	object_event 27, 19, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP,     0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM38, EVENT_CLEARED_CERULEAN_CAVE
	object_event 12, 13, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT,   0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistMiles, -1
	object_event  8,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerPokemaniacFelix, -1
