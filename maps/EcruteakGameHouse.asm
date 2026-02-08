	object_const_def
	const ECRUTEAKGAMEHOUSE_GRAMPS

EcruteakGameHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakGameHouseGrampsScript:
	faceplayer
	opentext
	writetext EcruteakGameHouseGrampsPlayGameText
	yesorno
	iffalse .no
	writetext EcruteakGameHouseGrampsGoodLuckText
	promptbutton
	reanchormap
	special MemoryGame
.no:
	writetext EcruteakGameHouseGrampsComeBackSoonText
	waitbutton
	closetext
	end

EcruteakGameHouseGrannyScript:
	jumptextfaceplayer EcruteakGameHouseGrannyText

EcruteakGameHouseTeacherScript:
	jumptextfaceplayer EcruteakGameHouseTeacherText

EcruteakGameHouseRockerScript:
	jumptextfaceplayer EcruteakGameHouseRockerText

EcruteakGameHouseGrampsPlayGameText:
	text "Oh, you think you"
	line "have a sharp mind?"

	para "Let's test that."

	para "You'll only need 3"
	line "coins, hohoho!"
	done

EcruteakGameHouseGrampsGoodLuckText:
	text "May the cards ever"
	line "bring you fortune."
	done

EcruteakGameHouseGrampsComeBackSoonText:
	text "Next time you will"
	line "be more prepared."

	para "Come back soon!"
	done

EcruteakGameHouseGrannyText:
	text "The radio plays"
	line "all my favorite"
	cont "shows."

	para "I like some of the"
	line "shows too."
	done

EcruteakGameHouseTeacherText:
	text "You can play too!"

	para "Ask that old man"
	line "at the table and"
	cont "he will let you"
	cont "try your luck."

	para "You'll need a few"
	line "coins though."
	done

EcruteakGameHouseRockerText:
	text "I'm not very good"
	line "at this game."

	para "I'll have to get"
	line "some more coins at"
	cont "the GAME CORNER"
	cont "soon."
	done

EcruteakGameHouseRadio:
	jumpstd Radio2Script

EcruteakGameHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, ECRUTEAK_CITY, 9
	warp_event  6, 11, ECRUTEAK_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, EcruteakGameHouseRadio

	def_object_events
	object_event  8,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakGameHouseGrampsScript, -1
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakGameHouseGrannyScript, -1
	object_event  7,  8, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakGameHouseTeacherScript, -1
	object_event 10,  5, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakGameHouseRockerScript, -1
