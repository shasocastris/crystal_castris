	object_const_def
	const PEWTERCITY_GREENHOUSE_GYM_GUIDE
	const PEWTERCITY_GREENHOUSE_BUG_CATCHER
	const PEWTERCITY_GREENHOUSE_SAILOR
	const PEWTERCITY_GREENHOUSE_FRUIT_TREE1
	const PEWTERCITY_GREENHOUSE_FRUIT_TREE2
	const PEWTERCITY_GREENHOUSE_FRUIT_TREE3
	const PEWTERCITY_GREENHOUSE_FRUIT_TREE4

PewterCityGreenhouse_MapScripts:
	def_scene_scripts

	def_callbacks

GreenhouseGymGuideScript:
	jumptextfaceplayer GreenhouseGymGuideText

GreenhouseBugCatcherScript:
	jumptextfaceplayer GreenhouseBugCatcherText

GreenhouseSailorScript:
	jumptextfaceplayer GreenhouseSailorText

GreenhouseWeirdTreeScript:
	jumptextfaceplayer GreenhouseWeirdTreeText

GreenhouseGymGuideText:
	text "The GREENHOUSE is"
	line "always warm in"
	cont "winter."
	done

GreenhouseBugCatcherText:
	text "I'm trying to work"
	line "out what that"
	cont "weird tree is…"
	done

GreenhouseSailorText:
	text "Do you have a"
	line "SQUIRTBOTTLE?"

	para "You can water that"
	line "line of trees and"
	cont "plant a BERRY."

	para "Tomorrow, they'll"
	line "have more BERRIES"
	cont "for you."
	done

GreenhouseWeirdTreeText:
	text "It's a weirdly"
	line "shaped tree."

	para "It vaguely reminds"
	line "you of a #MON."
	done

PewterCityGreenhouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 13, PEWTER_CITY, 3
	warp_event  3, 13, PEWTER_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8, 11, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GreenhouseGymGuideScript, -1
	object_event  6,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GreenhouseBugCatcherScript, -1
	object_event 13, 10, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GreenhouseSailorScript, -1
	object_event 13,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 14,  8, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 15,  9, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 16, 10, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  4,  4, SPRITE_WEIRD_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GreenhouseWeirdTreeScript, -1
