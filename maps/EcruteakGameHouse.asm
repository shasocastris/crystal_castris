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
	text "Perhaps you will"
	line "have more success"
	cont "at a later time."

	para "Come back soon!"
	done

EcruteakGameHouseRadio:
	jumpstd Radio2Script

EcruteakGameHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 9
	warp_event  4,  7, ECRUTEAK_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, EcruteakGameHouseRadio

	def_object_events
	object_event  5,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakGameHouseGrampsScript, -1
