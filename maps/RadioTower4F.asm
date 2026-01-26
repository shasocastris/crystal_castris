	object_const_def
	const RADIOTOWER4F_FISHER
	const RADIOTOWER4F_TEACHER
	const RADIOTOWER4F_GROWLITHE

RadioTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

RadioTower4FFisherScript:
	jumptextfaceplayer RadioTower4FFisherText

RadioTower4FDJMaryScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .InterviewPlayer
	checkevent EVENT_GOT_PINK_BOW_FROM_MARY
	iftrue .GotPinkBow
	writetext RadioTower4FDJMaryText_ClearedRockets
	promptbutton
	verbosegiveitem PINK_BOW
	iffalse .NoRoom
	writetext RadioTower4FDJMaryText_GivePinkBow
	waitbutton
	closetext
	setevent EVENT_GOT_PINK_BOW_FROM_MARY
	end

.GotPinkBow:
	writetext RadioTower4FDJMaryText_After
	waitbutton
.NoRoom:
	closetext
	end

.InterviewPlayer
	checkevent EVENT_GOT_MASTER_BALL_FROM_MARY
	iftrue .NoInterview
	writetext RadioTower4FDJMaryText_Interview
	waitbutton
	closetext
	turnobject RADIOTOWER4F_TEACHER, RIGHT
	readvar VAR_FACING
	ifnotequal RIGHT, .DontNeedToMove
	applymovement PLAYER, RadioTower4FPlayerWalksToMicrophoneMovement
.DontNeedToMove
	turnobject PLAYER, RIGHT
	opentext
	writetext RadioTower4FDJMaryText_IntroducePlayer
	waitbutton
	turnobject RADIOTOWER4F_TEACHER, DOWN
	turnobject PLAYER, UP
	writetext RadioTower4FDJMaryText_AskQuestions
	waitbutton
	turnobject RADIOTOWER4F_TEACHER, RIGHT
	writetext RadioTower4FDJMaryText_RegularSchedule
	waitbutton
	turnobject RADIOTOWER4F_TEACHER, DOWN
	writetext RadioTower4FDJMaryText_GiveMasterBall
	promptbutton
	verbosegiveitem MASTER_BALL
	setevent EVENT_GOT_MASTER_BALL_FROM_MARY
	writetext RadioTower4FDJMaryText_TalkAgain
	waitbutton
	closetext
	end

.NoInterview
	writetext RadioTower4FDJMaryText_ThanksForInterview
	waitbutton
	closetext
	end

RadioTowerMeowth:
	opentext
	writetext RadioTowerMeowthText
	cry MEOWTH
	waitbutton
	callasm .Meowth
	special ShowPokedexEntry
	closetext
	end

.Meowth
	ld hl, MEOWTH
	call GetPokemonIDFromIndex
	ld [wScriptVar], a
	ret

RadioTower4FProductionSign:
	jumptext RadioTower4FProductionSignText

RadioTower4FStudio2Sign:
	jumptext RadioTower4FStudio2SignText

RadioTower4FPlayerWalksToMicrophoneMovement:
	slow_step DOWN
	slow_step RIGHT
	step_end

RadioTower4FFisherText:
	text "I listened to the"
	line "radio while I was"
	cont "at the RUINS."

	para "I heard a strange"
	line "broadcast there."
	done

RadioTower4FDJMaryText_ClearedRockets:
	text "MARY: Oh! You've"
	line "come all this way!"

	para "Will you take this"
	line "as my thanks?"
	done

RadioTower4FDJMaryText_GivePinkBow:
	text "MARY: It's just"
	line "right for #MON"

	para "that know normal-"
	line "type moves."
	done

RadioTower4FDJMaryText_After:
	text "MARY: Please tune"
	line "into me on PROF."

	para "OAK'S #MON TALK"
	line "show."
	done

RadioTower4FDJMaryText_Interview:
	text "Oh, you're hear to"
	line "discuss your"
	cont "battle with Lance?"

	para "Thanks so much for"
	line "taking me up on my"
	cont "offer!"
	done

RadioTower4FDJMaryText_IntroducePlayer:
	text "Listeners!"

	para "In the studio, a"
	line "very special guest"
	cont "just dropped in!"

	para "Please welcome"
	line "<PLAYER>, who"
	cont "recently defeated"
	cont "LANCE and became"
	cont "the latest trainer"
	cont "to become the"
	cont "#MON CHAMPION!"
	done

RadioTower4FDJMaryText_AskQuestions:
	text "<PLAYER>, please"
	line "give us some idea"
	cont "of the struggles"
	cont "you went through"
	cont "to achieve this"
	cont "accomplishment."

	para "<PLAYER>: … … …"

	para "MARY: Can you"
	line "please elaborate?"

	para "<PLAYER>: … … …"

	para "MARY: So exciting!"

	para "Well we've used up"
	line "enough of the"
	cont "CHAMPION's time,"
	cont "so that's all for"
	cont "now."

	para "Thanks for joining"
	line "us today! Feel"
	cont "free to drop in as"
	cont "you achieve even"
	cont "more!"
	done

RadioTower4FDJMaryText_RegularSchedule:
	text "And now back to"
	line "regular program!"
	done

RadioTower4FDJMaryText_GiveMasterBall:
	text "And here's a very"
	line "special thank you"
	cont "for your time."
	done

RadioTower4FDJMaryText_TalkAgain:
	text "I can't wait to"
	line "talk to you again!"
	done

RadioTower4FDJMaryText_ThanksForInterview:
	text "Thanks for the"
	line "interview!"

	para "And don't forget,"
	line "my listeners are"
	cont "eager to hear more"
	cont "of your stories!"
	done

RadioTowerMeowthText:
	text "MEOWTH: Meowth…"
	done

RadioTower4FProductionSignText:
	text "4F PRODUCTION"
	done

RadioTower4FStudio2SignText:
	text "4F STUDIO 2"
	done

RadioTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_5F, 1
	warp_event  9,  0, RADIO_TOWER_3F, 2
	warp_event 12,  0, RADIO_TOWER_5F, 2
	warp_event 17,  0, RADIO_TOWER_3F, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_READ, RadioTower4FProductionSign
	bg_event 15,  0, BGEVENT_READ, RadioTower4FStudio2Sign

	def_object_events
	object_event  6,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower4FFisherScript, -1
	object_event 14,  5, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower4FDJMaryScript, -1
	object_event 12,  7, SPRITE_MEOWTH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTowerMeowth, -1
