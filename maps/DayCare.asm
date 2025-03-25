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
	writetext DayCareManText_GiveLuckyEggText
	promptbutton
	verbosegiveitem LUCKY_EGG
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_DescribeLuckyEggText
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
	checkevent EVENT_GOT_LUCKY_EGG
	iffalse .AskGrampsForLuckyEgg
	special DayCareLady
	waitbutton
	closetext
	end
.AskGrampsForLuckyEgg
	writetext AskGrampsForLuckyEggText
	waitbutton
	closetext
	end

DayCareCoupleStories1:
	jumptext DayCareCoupleStories1_Text

DayCareCoupleStories2:
	jumptext DayCareCoupleStories2_Text

DayCareManText_GiveLuckyEggText:
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

	para "Wouldn't you like"
	line "one for yourself?"

	para "Then fine, this is"
	line "yours to keep!"
	done

DayCareText_DescribeLuckyEggText:
	text "That was being"
	line "held by a rare"
	cont "#MON Gramms and"
	cont "I once met on"
	cont "Route 44."

	para "PROF. ELM thought"
	line "it was a #MON"
	cont "EGG, but it is"
	cont "just an item"
	cont "#MON can hold."

	para "Hopefully it has"
	line "some use for a"
	cont "trainer like"
	cont "yourself."
	done

AskGrampsForLuckyEggText:
	text "I can raise a"
	line "#MON for you."

	para "But first, you"
	line "should talk to"
	cont "Gramps."

	para "He has a nice gift"
	line "for you."
	done

DayCareCoupleStories1_Text:
	text "Stories from the"
	line "DAY-CARE couple:"

	para "The PSYBEAM from"
	line "our GIRAFARIG had"
	cont "no effect on a"
	cont "VILEPLUME we tried"
	cont "to capture."

	para "It, along with"
	line "GENGAR, are both"
	cont "part DARK-type."

	para "And we just found"
	line "out that DRAGONITE"
	cont "is part NORMAL!"

	para "Are there other"
	line "#MON that were"
	cont "typed incorrectly?"
	done

DayCareCoupleStories2_Text:
	text "Stories from the"
	line "DAY-CARE couple:"

	para "Exploring MT."
	line "MORTAR was much"
	cont "easier with a"
	cont "#MON that knew"
	cont "FLASH."

	para "Moves that sharply"
	line "lower accuracy are"
	cont "quite handy in"
	cont "tough battles!"
	done

DayCare_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, ROUTE_34, 3
	warp_event  0,  6, ROUTE_34, 4
	warp_event  2,  7, ROUTE_34, 5
	warp_event  3,  7, ROUTE_34, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, DayCareCoupleStories1
	bg_event  1,  1, BGEVENT_READ, DayCareCoupleStories2

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Inside, -1
	object_event  5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
