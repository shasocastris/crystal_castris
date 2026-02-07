	object_const_def
	const VIOLETCEMETERY_MRFUJI
	const VIOLETCEMETERY_TEACHER
	const VIOLETCEMETERY_LASS
	const VIOLETCEMETERY_GRANNY

VioletCemetery_MapScripts:
	def_scene_scripts

	def_callbacks

CemeteryGrandpa:
	jumptextfaceplayer CemeteryGrandpaText

VioletCemeteryTeacherScript:
	jumptextfaceplayer VioletCemeteryTeacherText

VioletCemeteryLassScript:
	jumptextfaceplayer VioletCemeteryLassText

VioletCemeteryGrannyScript:
	jumptextfaceplayer VioletCemeteryGrannyText

CemeteryGrandpaText:
	text "Please enjoy your"
	line "stay at the VIOLET"
	cont "CEMETERY."

	para "Mr. Fuji was kind"
	line "enough to help us"
	cont "set up a memorial"
	cont "here,"

	para "similar to the one"
	line "he runs in"
	cont "LAVENDER TOWN."

	para "Now those in JOHTO"
	line "who lost #MON"
	cont "can more easily"
	cont "visit their dearly"
	cont "departed."
	done

VioletCemeteryTeacherText:
	text "It's very calming"
	line "to listen to the"
	cont "lake outside."

	para "I like to think"
	line "the #MON laying"
	cont "here enjoy it."
	done

VioletCemeteryLassText:
	text "The ELDER from"
	line "SPROUT TOWER often"
	cont "leads services"
	cont "here."
	done

VioletCemeteryGrannyText:
	text "I used to have a"
	line "very strong team."

	para "But I outlived all"
	line "of them…"
	done

VioletCemetery_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, VIOLET_CITY, 1
	warp_event  5,  7, VIOLET_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CemeteryGrandpa, -1
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletCemeteryTeacherScript, -1
	object_event  6,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletCemeteryLassScript, -1
	object_event  3,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletCemeteryGrannyScript, -1
