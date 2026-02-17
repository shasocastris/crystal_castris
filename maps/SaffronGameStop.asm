	object_const_def
	const SAFFRON_GAME_STOP_POKEFAN_F

SaffronGameStop_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronGameStopClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SAFFRON_GAME_STOP
	closetext
	end

SaffronGameStopYoungsterScript:
	jumptextfaceplayer SaffronGameStopYoungsterText

SaffronGameStopLassScript:
	jumptextfaceplayer SaffronGameStopLassText

SaffronGameStopConsole:
	jumptext SaffronGameStopConsoleText

SaffronGameStopYoungsterText:
	text "The owner is very"
	line "nice."

	para "She lets us play"
	line "games here without"
	cont "buying them."
	done

SaffronGameStopLassText:
	text "I prefer handheld"
	line "consoles."
	done

SaffronGameStopConsoleText:
	text "One of the many"
	line "consoles for sale."
	done

SaffronGameStop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, SAFFRON_CITY, 3
	warp_event  5,  7, SAFFRON_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, SaffronGameStopConsole
	bg_event  5,  2, BGEVENT_READ, SaffronGameStopConsole
	bg_event  9,  2, BGEVENT_READ, SaffronGameStopConsole
	bg_event  7,  5, BGEVENT_READ, SaffronGameStopConsole
	bg_event 11,  5, BGEVENT_READ, SaffronGameStopConsole

	def_object_events
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, SaffronGameStopClerkScript, -1
	object_event  9,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronGameStopYoungsterScript, -1
	object_event  3,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronGameStopLassScript, -1
