	object_const_def
	const RUINSOFALPHOUTSIDE_ROCKET_M23
	const RUINSOFALPHOUTSIDE_ROCKET_F10
	const RUINSOFALPHOUTSIDE_SCIENTIST_KIP

RuinsOfAlphHoOhChamber_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphHoOhChamberOpenHoleCallback

RuinsOfAlphHoOhChamberOpenHoleCallback:
	checkevent EVENT_SOLVED_HO_OH_PUZZLE
	iffalse .FloorClosed
	endcallback
.FloorClosed:
	changeblock 2, 2, $01 ; left floor
	changeblock 4, 2, $02 ; right floor
	endcallback

RuinsOfAlphHoOhChamberPuzzle:
	reanchormap
	setval UNOWNPUZZLE_HO_OH
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_HO_OH_PUZZLE
	setflag ENGINE_UNLOCKED_UNOWNS_X_TO_Z
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	refreshmap
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, RuinsOfAlphHoOhChamberSkyfallTopMovement
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

TrainerGruntM23:
    trainer GRUNTM, GRUNTM_23, EVENT_BEAT_ROCKET_GRUNTM_23, GruntM23SeenText, GruntM23BeatenText, 0, .Script

.Script:
    opentext
    writetext GruntM23AfterBattleText
    waitbutton
    closetext
    end

TrainerGruntF10:
    trainer GRUNTF, GRUNTF_10, EVENT_BEAT_ROCKET_GRUNTF_10, GruntF10SeenText, GruntF10BeatenText, 0, .Script

.Script:
    opentext
    writetext GruntF10AfterBattleText
    waitbutton
    closetext
    end

TrainerScientistKip:
    trainer SCIENTIST, KIP, EVENT_BEAT_SCIENTIST_KIP, ScientistKipSeenText, ScientistKipBeatenText, 0, .Script

.Script:
    opentext
    writetext ScientistKipAfterBattleText
    waitbutton
    closetext
    end

RuinsOfAlphHoOhChamberAncientReplica:
	jumptext RuinsOfAlphHoOhChamberAncientReplicaText

RuinsOfAlphHoOhChamberDescriptionSign:
	jumptext RuinsOfAlphHoOhChamberDescriptionText

RuinsOfAlphHoOhChamberSkyfallTopMovement:
	skyfall_top
	step_end

GruntM23SeenText:
    text "You got past the"
    line "others?"

    para "Impressive! But"
    line "you stop here!"
    done

GruntM23BeatenText:
    text "Guess not…"
    done

GruntM23AfterBattleText:
    text "The BOSS said if"
    line "we find these"
    cont "#MON first…"

    para "We'll control"
    line "something the"
    cont "LEAGUE can't touch!"

    para "That's gotta be"
    line "worth something!"
    done

GruntF10SeenText:
    text "Stop right there!"

    para "No one interrupts"
    line "our work!"
    done

GruntF10BeatenText:
    text "Tch! You're"
    line "tougher than you"
    cont "look!"
    done

GruntF10AfterBattleText:
    text "The scientists are"
    line "certain something"
    cont "lives in here."

    para "They keep talking"
    line "about psychic"
    cont "energy readings…"

    para "Whatever. I'll"
    line "believe it when I"
    cont "see it!"
    done

ScientistKipSeenText:
    text "Marvelous! You've"
    line "made it this far!"

    para "But I can't allow"
    line "further intrusion!"
    done

ScientistKipBeatenText:
    text "What remarkable"
    line "tenacity!"
    done

ScientistKipAfterBattleText:
    text "My readings show"
    line "psychic energy"
    cont "permeating the"
    cont "ruins."

    para "It intensifies"
    line "near the puzzle"
    cont "chambers."

    para "If #MON are"
    line "generating this"
    cont "energy…"

    para "They're close."
    line "Very close indeed!"
    done

RuinsOfAlphHoOhChamberAncientReplicaText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

RuinsOfAlphHoOhChamberDescriptionText:
	text "A #MON that"
	line "flew gracefully on"

	para "rainbow-colored"
	line "wings."
	done

RuinsOfAlphHoOhChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 1
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 1
	warp_event  3,  3, RUINS_OF_ALPH_HO_OH_ITEM_ROOM, 1
	warp_event  4,  3, RUINS_OF_ALPH_HO_OH_ITEM_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphHoOhChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphHoOhChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphHoOhChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphHoOhChamberDescriptionSign

	def_object_events
	object_event  1,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGruntM23, EVENT_DEFEATED_RUINS_OF_ALPH_ROCKETS
	object_event  6,  7, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGruntF10, EVENT_DEFEATED_RUINS_OF_ALPH_ROCKETS
	object_event  3,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistKip, EVENT_DEFEATED_RUINS_OF_ALPH_ROCKETS
