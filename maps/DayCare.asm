	object_const_def
	const DAYCARE_GRAMPS
	const DAYCARE_GRANNY

DayCare_MapScripts:
	def_scene_scripts

	def_callbacks

DayCareManScript_Inside:
	faceplayer
	opentext
	checkevent EVENT_GOT_LUCKY_EGG
	iftrue .AlreadyHaveLuckyEgg
	writetext DayCareManText_GiveLuckyEgg
	promptbutton
	verbosegiveitem LUCKY_EGG
	writetext DayCareText_GotLuckyEgg
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_DescribeLuckyEgg
	waitbutton
	closetext
	setevent EVENT_GOT_LUCKY_EGG
	end

.AlreadyHaveLuckyEgg:
	special DayCareMan
	waitbutton
	closetext
	end

DayCareLadyScript:
	faceplayer
	opentext
	special DayCareLady
	waitbutton
	closetext
	end

DayCareBookshelf:
	jumpstd DifficultBookshelfScript

DayCareManText_GiveLuckyEgg:
	text "I'm the DAY-CARE"
	line "MAN."

	para "Do you know what"
	line "a LUCKY EGG is?"

	para "If you give it to"
	line "a #MON, it will"
	cont "grow much faster"
	cont "than normal."

	para "How incredible is"
	line "that?"

	para "Well, wouldn't you"
	line "like a LUCKY EGG?"

	para "Then fine, this is"
	line "yours to keep!"
	done

DayCareText_GotLuckyEgg:
	text "<PLAYER> received"
	line "LUCKY EGG!"
	done

DayCareText_DescribeLuckyEgg:
	text "That was being"
	line "held by a rare"
	cont "#MON I once met"
	cont "on Route 44."

	para "PROF. ELM thought"
	line "it was a #MON"
	cont "EGG, but it is"
	cont "just an item"
	cont "#MON can hold."

	para "Hopefully it has"
	line "some use for a"
	cont "trainer like"
	cont "yourself."

DayCare_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, ROUTE_34, 3
	warp_event  0,  6, ROUTE_34, 4
	warp_event  2,  7, ROUTE_34, 5
	warp_event  3,  7, ROUTE_34, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, DayCareBookshelf
	bg_event  1,  1, BGEVENT_READ, DayCareBookshelf

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Inside, EVENT_DAY_CARE_MAN_IN_DAY_CARE
	object_event  5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
