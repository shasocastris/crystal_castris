	object_const_def
	const RUINSOFALPHOUTSIDE_ROCKET_M22
	const RUINSOFALPHOUTSIDE_ROCKET_F9
	const RUINSOFALPHOUTSIDE_SCIENTIST_CARL

RuinsOfAlphAerodactylChamber_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphAerodactylChamberOpenHoleCallback

RuinsOfAlphAerodactylChamberOpenHoleCallback:
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iffalse .FloorClosed
	endcallback
.FloorClosed:
	changeblock 2, 2, $01 ; left floor
	changeblock 4, 2, $02 ; right floor
	endcallback

RuinsOfAlphAerodactylChamberPuzzle:
	reanchormap
	setval UNOWNPUZZLE_AERODACTYL
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_AERODACTYL_PUZZLE
	setflag ENGINE_UNLOCKED_UNOWNS_S_TO_W
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $18 ; left hole
	changeblock 4, 2, $19 ; right hole
	refreshmap
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, RuinsOfAlphAerodactylChamberSkyfallTopMovement
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

TrainerGruntM22:
    trainer GRUNTM, GRUNTM_22, EVENT_BEAT_ROCKET_GRUNTM_22, GruntM22SeenText, GruntM22BeatenText, 0, .Script

.Script:
    opentext
    writetext GruntM22AfterBattleText
    waitbutton
    closetext
    end

TrainerGruntF9:
    trainer GRUNTF, GRUNTF_9, EVENT_BEAT_ROCKET_GRUNTF_9, GruntF9SeenText, GruntF9BeatenText, 0, .Script

.Script:
    opentext
    writetext GruntF9AfterBattleText
    waitbutton
    closetext
    end

TrainerScientistCarl:
    trainer SCIENTIST, CARL, EVENT_BEAT_SCIENTIST_CARL, ScientistCarlSeenText, ScientistCarlBeatenText, 0, .Script

.Script:
    opentext
    writetext ScientistCarlAfterBattleText
    waitbutton
    closetext
    end

RuinsOfAlphAerodactylChamberAncientReplica:
	jumptext RuinsOfAlphAerodactylChamberAncientReplicaText

RuinsOfAlphAerodactylChamberDescriptionSign:
	jumptext RuinsOfAlphAerodactylChamberDescriptionText

RuinsOfAlphAerodactylChamberSkyfallTopMovement:
	skyfall_top
	step_end

GruntM22SeenText:
    text "This operation"
    line "better pay off!"

    para "Standing guard in"
    line "these dusty ruins"
    cont "is boring!"
    done

GruntM22BeatenText:
    text "Well, that was"
    line "less boring!"
    done

GruntM22AfterBattleText:
    text "The executives are"
    line "obsessed with this"
    cont "place."

    para "Something about"
    line "ancient power…"

    para "I just want my"
    line "paycheck!"
    done

GruntF9SeenText:
    text "Oh great, another"
    line "do-gooder!"

    para "Can't you see we're"
    line "busy here?"
    done

GruntF9BeatenText:
    text "Ugh, annoying!"
    done

GruntF9AfterBattleText:
    text "If these mystery"
    line "#MON are so"
    cont "powerful…"

    para "Why haven't any"
    line "of us seen them"
    cont "yet?"

    para "Starting to think"
    line "this is all a wild"
    cont "FARFETCH'D chase!"
    done

ScientistCarlSeenText:
    text "Ah! A test subject"
    line "arrives!"

    para "Your battle style"
    line "will provide val-"
    cont "uable data!"
    done

ScientistCarlBeatenText:
    text "Hmm! Unexpected"
    line "variables!"
    done

ScientistCarlAfterBattleText:
    text "We've documented"
    line "four chambers, but"

    para "no #MON have"
    line "appeared yet."

    para "Perhaps we need to"
    line "solve them in a"
    cont "certain order?"
    done

RuinsOfAlphAerodactylChamberAncientReplicaText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

RuinsOfAlphAerodactylChamberDescriptionText:
	text "This flying #-"
	line "MON attacked its"

	para "prey with saw-like"
	line "fangs."
	done

RuinsOfAlphAerodactylChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 4
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 4
	warp_event  3,  3, RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM, 1
	warp_event  4,  3, RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphAerodactylChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphAerodactylChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, RuinsOfAlphAerodactylChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, RuinsOfAlphAerodactylChamberDescriptionSign

	def_object_events
	object_event  1,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM22, EVENT_DEFEATED_RUINS_OF_ALPH_ROCKETS
	object_event  5,  8, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntF9, EVENT_DEFEATED_RUINS_OF_ALPH_ROCKETS
	object_event  2,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerScientistCarl, EVENT_DEFEATED_RUINS_OF_ALPH_ROCKETS
