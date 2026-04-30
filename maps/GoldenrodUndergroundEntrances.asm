	object_const_def
	const GOLDENRODUNDERGROUNDENTRANCES_TEACHER
	const GOLDENRODUNDERGROUNDENTRANCES_SUPER_NERD
	const GOLDENRODUNDERGROUNDENTRANCES_FISHER

GoldenrodUndergroundEntrances_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodUndergroundEntrancesSuperNerdScript:
	jumptextfaceplayer GoldenrodUndergroundEntrances_SuperNerdText

GoldenrodUndergroundEntrances_SuperNerdText:
	text "I was challenged"
	line "to a battle down-"
	cont "stairs."

	para "It's rough down"
	line "there. You'd"
	cont "better be careful."
	done

GoldenrodUndergroundEntrancesTeacherScript:
	jumptextfaceplayer GoldenrodUndergroundEntrances_TeacherText

GoldenrodUndergroundEntrances_TeacherText:
	text "There are some"
	line "shops downstairs…"

	para "But there are"
	line "also trainers."

	para "I'm scared to go"
	line "down there."
	done

GoldenrodUndergroundEntrancesFisherScript:
	jumptextfaceplayer GoldenrodUndergroundEntrances_FisherText

GoldenrodUndergroundEntrances_FisherText:
	text "I'm getting ready"
	line "to fight all the"
	cont "trainers below."

	para "They are tough,"
	line "but I think my"
	cont "#MON can win."
	done

GoldenrodUndergroundEntrancesLassScript:
	jumptextfaceplayer GoldenrodUndergroundEntrancesLassText

GoldenrodUndergroundEntrancesLassText:
	text "Sometimes, a"
	line "healthy #MON"

	para "may be unable to"
	line "use its moves."

	para "If that happens,"
	line "heal it at a #-"
	cont "MON CENTER or use"
	cont "an item."
	done

GoldenrodUndergroundEntrances_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 19, GOLDENROD_UNDERGROUND, 2
	warp_event  4, 23, GOLDENROD_CITY, 14
	warp_event  5, 23, GOLDENROD_CITY, 14
	warp_event  5,  5, GOLDENROD_UNDERGROUND, 1
	warp_event  4,  9, GOLDENROD_CITY, 13
	warp_event  5,  9, GOLDENROD_CITY, 13
	warp_event 21, 19, GOLDENROD_UNDERGROUND, 3
	warp_event 20, 23, GOLDENROD_CITY, 17
	warp_event 21, 23, GOLDENROD_CITY, 17
	warp_event 21,  5, GOLDENROD_UNDERGROUND, 4
	warp_event 20,  9, GOLDENROD_CITY, 7
	warp_event 21,  9, GOLDENROD_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3, 21, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundEntrancesTeacherScript, -1
	object_event  3,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundEntrancesSuperNerdScript, -1
	object_event 22, 21, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundEntrancesFisherScript, -1
	object_event 22,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundEntrancesLassScript, -1



