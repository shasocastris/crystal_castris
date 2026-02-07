	object_const_def
	const CHERRYGROVE_CAFE_BEAUTY
	const CHERRYGROVE_CAFE_YOUNGSTER
	const CHERRYGROVE_CAFE_LASS
	const CHERRYGROVE_CAFE_TWIN

CherrygroveCafe_MapScripts:
	def_scene_scripts

	def_callbacks


CherrygroveCafeBeautyScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_CAFE
	closetext
	end

CherrygroveCafeYoungsterScript:
	jumptextfaceplayer CherrygroveCafeYoungsterText

CherrygroveCafeLassScript:
	jumptextfaceplayer CherrygroveCafeLassText

CherrygroveCafeTwinScript:
	jumptextfaceplayer CherrygroveCafeTwinText

CherrygroveCafeYoungsterText:
	text "This is a relaxing"
	line "place to hang out."

	para "I hope she agrees"
	line "to a second date."
	done

CherrygroveCafeLassText:
	text "Don't tell him I"
	line "only came because"
	cont "I love the taste"
	cont "of BITTER BERRIES."
	done

CherrygroveCafeTwinText:
	text "I'm so excited!"

	para "I earned enough"
	line "from chores to get"
	cont "a RARE CANDY!"
	done

CherrygroveCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 5
	warp_event  3,  7, CHERRYGROVE_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCafeBeautyScript, -1
	object_event  4,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveCafeYoungsterScript, -1
	object_event  3,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, CherrygroveCafeLassScript, -1
	object_event  6,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, CherrygroveCafeTwinScript, -1