	object_const_def
	const RADIOTOWER5F_DIRECTOR
	const RADIOTOWER5F_ROCKER
	const RADIOTOWER5F_POKE_BALL

RadioTower5F_MapScripts:
	def_scene_scripts

	def_callbacks

RadioTower5FDirector:
	faceplayer
	opentext
	checkevent EVENT_DEFEATED_RUINS_OF_ALPH_ROCKETS
	iffalse .PreRuinsOfAlph
	checkevent EVENT_GOT_HM06_WHIRLPOOL
	iftrue .GotWhirlpool
	writetext RadioTower5FDirectorWhirlpoolText
	promptbutton
	verbosegiveitem HM_WHIRLPOOL
	setevent EVENT_GOT_HM06_WHIRLPOOL
	writetext RadioTower5FDirectorExplainWhirlpoolText
	waitbutton
	closetext
	end

.GotWhirlpool
	writetext RadioTower5FDirectorDescribeClearBellText
	waitbutton
	closetext
	end

.PreRuinsOfAlph
	writetext RadioTower5FDirectorText
	waitbutton
	closetext
	end

RadioTower5Ben:
	jumptextfaceplayer RadioTower5BenText

RadioTower5FUltraBall:
	itemball ULTRA_BALL

RadioTower5FDirectorsOfficeSign:
	jumptext RadioTower5FDirectorsOfficeSignText

RadioTower5FStudio1Sign:
	jumptext RadioTower5FStudio1SignText

RadioTower5FBookshelf1:
	jumptext RadioTower5FBookshelf1Text

RadioTower5FBookshelf2:
	jumptext RadioTower5FBookshelf2Text

RadioTower5FDirectorWhirlpoolText:
	text "<PLAY_G>, I heard"
	line "you explored the"
	cont "RUINS OF ALPH."

	para "Maybe you'll want"
	line "to try your hand"
	cont "at the WHIRL"
	cont "ISLANDS next?"

	para "Here is something"
	line "that will be a big"
	cont "help."
	done

RadioTower5FDirectorExplainWhirlpoolText:
	text "That's WHIRLPOOL."

	para "You can use it to"
	line "calm turbulent"
	cont "seas for a short"
	cont "time."

	para "It can also trap"
	line "wild #MON you"
	cont "are trying to"
	cont "capture."
	done

RadioTower5FDirectorDescribeClearBellText:
	text "There used to be a"
	line "tower right here"
	cont "in GOLDENROD CITY."

	para "But it was old and"
	line "creaky."

	para "So we replaced it"
	line "with our RADIO"
	cont "TOWER."

	para "We dug up a CLEAR"
	line "BELL during"
	cont "construction."

	para "I heard that all"
	line "sorts of #MON"

	para "lived in GOLDENROD"
	line "in the past."

	para "Perhaps…"

	para "That bell has some"
	line "connection to the"

	para "TIN TOWER in"
	line "ECRUTEAK CITY…"

	para "Ah!"

	para "That reminds me…"

	para "Apparently, some-"
	line "thing is going on"
	cont "at the TIN TOWER."

	para "I have no idea"
	line "what is happening,"

	para "but you might look"
	line "into it."
	done

RadioTower5FDirectorText:
	text "DIRECTOR: Hello,"
	line "<PLAY_G>!"

	para "You know, I love"
	line "#MON."

	para "I built this RADIO"
	line "TOWER so I could"

	para "express my love"
	line "of #MON."

	para "It would be nice"
	line "if people enjoyed"
	cont "our programs."
	done

RadioTower5BenText:
	text "BEN: Do you listen"
	line "to our music?"
	done

RadioTower5FBookshelf1Text:
	text "#MON Home and"
	line "Garden"

	para "Berry Cultivation:"
	line "A Beginner's Guide"
	done

RadioTower5FBookshelf2Text:
	text "MODERN TRAINER"

	para "Is Your #MON"
	line "Judging Your"
	cont "Fashion Choices?"
	done

RadioTower5FDirectorsOfficeSignText:
	text "5F DIRECTOR'S"
	line "   OFFICE"
	done

RadioTower5FStudio1SignText:
	text "5F STUDIO 1"
	done

RadioTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_4F, 1
	warp_event 12,  0, RADIO_TOWER_4F, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, RadioTower5FDirectorsOfficeSign
	bg_event 11,  0, BGEVENT_READ, RadioTower5FStudio1Sign
	bg_event 15,  0, BGEVENT_READ, RadioTower5FStudio1Sign
	bg_event 16,  1, BGEVENT_READ, RadioTower5FBookshelf1
	bg_event 17,  1, BGEVENT_READ, RadioTower5FBookshelf2

	def_object_events
	object_event  3,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RadioTower5FDirector, -1
	object_event 13,  5, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower5Ben, -1
	object_event  8,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RadioTower5FUltraBall, EVENT_RADIO_TOWER_5F_ULTRA_BALL
