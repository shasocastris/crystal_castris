	object_const_def
	const RUINSOFALPHOUTSIDE_ROCKET_M12
	const RUINSOFALPHOUTSIDE_ROCKET_F6
	const RUINSOFALPHOUTSIDE_SCIENTIST_ERWIN

RuinsOfAlphKabutoChamber_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphKabutoChamberOpenHoleCallback

RuinsOfAlphKabutoChamberOpenHoleCallback:
	checkevent EVENT_SOLVED_KABUTO_PUZZLE
	iffalse .FloorClosed
	endcallback
.FloorClosed:
	changeblock 2, 2, $01 ; left floor
	changeblock 4, 2, $02 ; right floor
	endcallback

RuinsOfAlphKabutoChamberPuzzle:
	reanchormap
	setval UNOWNPUZZLE_KABUTO
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_KABUTO_PUZZLE
	setflag ENGINE_UNLOCKED_UNOWNS_A_TO_K
	setevent EVENT_RUINS_OF_ALPH_KABUTO_CHAMBER_RECEPTIONIST
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	refreshmap
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, RuinsOfAlphKabutoChamberSkyfallTopMovement
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

TrainerGruntM12:
	trainer GRUNTM, GRUNTM_12, EVENT_BEAT_ROCKET_GRUNTM_12, GruntM12SeenText, GruntM12BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM12AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntF6:
		trainer GRUNTF, GRUNTF_6, EVENT_BEAT_ROCKET_GRUNTF_6, GruntF6SeenText, GruntF6BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntF6AfterBattleText
	waitbutton
	closetext
	end

TrainerScientistErwin:
	trainer SCIENTIST, ERWIN, EVENT_BEAT_SCIENTIST_ERWIN, ScientistErwinSeenText, ScientistErwinBeatenText, 0, .Script

.Script:
	opentext
	writetext ScientistErwinAfterBattleText
	waitbutton
	closetext
	end

RuinsOfAlphKabutoChamberAncientReplica:
	jumptext RuinsOfAlphKabutoChamberAncientReplicaText

RuinsOfAlphKabutoChamberDescriptionSign:
	jumptext RuinsOfAlphKabutoChamberDescriptionText

RuinsOfAlphKabutoChamberSkyfallTopMovement:
	skyfall_top
	step_end

GruntM12SeenText:
	text "These ruins are"
	line "TEAM ROCKET's now!"

	para "Stay out while we"
	line "search for the"
	cont "hidden #MON!"
	done

GruntM12BeatenText:
	text "Ugh! You're too"
	line "strong!"
	done

GruntM12AfterBattleText:
	text "The BOSS has big"
	line "plans for JOHTO."
	
	para "You can't stop us"
	line "all, kid!"
	done

GruntF6SeenText:
	text "You think you can"
	line "just waltz in?"
	done

GruntF6BeatenText:
	text "No way!"
	line "I lost?!"
	done

GruntF6AfterBattleText:
	text "The scientists say"
	line "solving puzzles"

	para "will reveal rare"
	line "#MON."

	para "Sounds like super-"
	line "stition to me…"
	done

ScientistErwinSeenText:
	text "Fascinating! A"
	line "trainer strong"
	
	para "enough to reach"
	line "this floor!"
	
	para "Let's test your"
	line "#MON's limits!"
	done

ScientistErwinBeatenText:
	text "TEAM ROCKET hired"
	line "me for my genius."

	para "Morality? That's"
	line "not my department."
	done

ScientistErwinAfterBattleText:
	text "If the rumors are"
	line "true, these ruins"

	para "hide #MON with"
	line "an immense psychic"
	cont "resonance."

	para "Imagine harnessing"
	line "all of them in"
	cont "unison!"
	done

RuinsOfAlphKabutoChamberWallHoleText:
	text "There's a big hole"
	line "in the wall!"
	done

RuinsOfAlphKabutoChamberAncientReplicaText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

RuinsOfAlphKabutoChamberDescriptionText:
	text "A #MON that hid"
	line "on the sea floor."

	para "Eyes on its back"
	line "scanned the area."
	done

RuinsOfAlphKabutoChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 2
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 2
	warp_event  3,  3, RUINS_OF_ALPH_KABUTO_ITEM_ROOM, 1
	warp_event  4,  3, RUINS_OF_ALPH_KABUTO_ITEM_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphKabutoChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphKabutoChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphKabutoChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphKabutoChamberDescriptionSign

	def_object_events
	object_event  1,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM12, EVENT_DEFEATED_RUINS_OF_ALPH_ROCKETS
	object_event  6,  8, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntF6, EVENT_DEFEATED_RUINS_OF_ALPH_ROCKETS
	object_event  5,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistErwin, EVENT_DEFEATED_RUINS_OF_ALPH_ROCKETS
