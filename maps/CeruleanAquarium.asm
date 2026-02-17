	object_const_def
	const CERULEANAQUARIUM_LINK_RECEPTIONIST
	const CERULEANAQUARIUM_SUPER_NERD
	const CERULEANAQUARIUM_YOUNGSTER
	const CERULEANAQUARIUM_TEACHER
	const CERULEANAQUARIUM_LASS

CeruleanAquarium_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanAquariumLinkReceptionistScript:
	jumptextfaceplayer CeruleanAquariumLinkReceptionistText

CeruleanAquariumSuperNerdScript:
	jumptextfaceplayer CeruleanAquariumSuperNerdText

CeruleanAquariumYoungsterScript:
	jumptextfaceplayer CeruleanAquariumYoungsterText

CeruleanAquariumTeacherScript:
	jumptextfaceplayer CeruleanAquariumTeacherText

CeruleanAquariumLassScript:
	jumptextfaceplayer CeruleanAquariumLassText

CeruleanExhibit1Sign:
	jumptext CeruleanExhibit1SignText

CeruleanExhibit2Sign:
	jumptext CeruleanExhibit2SignText

CeruleanExhibit3Sign:
	jumptext CeruleanExhibit3SignText

CeruleanAquariumLinkReceptionistText:
	text "We take care of"
	line "all the #MON in"
	cont "the exhibits."

	para "If they ever get"
	line "sick, we heal them"
	cont "here."
	done

CeruleanAquariumSuperNerdText:
	text "Whoa, check out"
	line "the LANTURN tank!"

	para "It's so dark in"
	line "there, all you"
	cont "can see are their"
	cont "glowing antennae!"

	para "I want to catch"
	line "one SO bad!"
	done

CeruleanAquariumYoungsterText:
	text "The glass in these"
	line "tanks is rated to"
	cont "withstand a direct"
	cont "HYDRO PUMP."

	para "They learned that"
	line "lesson the hard"
	cont "way when a KINGLER"
	cont "got startled."
	done

CeruleanAquariumTeacherText:
	text "MISTY used to come"
	line "here as a child."

	para "They say watching"
	line "the tanks is what"
	cont "inspired her to"
	cont "train WATER-types."

	para "It's a wonderful"
	line "place to learn"
	cont "about aquatic"
	cont "#MON."
	done

CeruleanAquariumLassText:
	text "I like coming here"
	line "after school."

	para "The CHINCHOU swim"
	line "in little circles"
	cont "when they're"
	cont "happy!"

	para "I wonder if my"
	line "GOLDEEN does that"
	cont "at home…"
	done

CeruleanExhibit1SignText:
	text "You often find"
	line "REMORAID swimming"
	cont "alongside MANTINE"
	cont "while they strive"
	cont "to evolve."
	done

CeruleanExhibit2SignText:
	text "MAGIKARP are found"
	line "in almost every"
	cont "aquatic biome."

	para "While weak in"
	line "battle, they are"
	cont "able to survive in"
	cont "most climates."
	done

CeruleanExhibit3SignText:
	text "The swirl on the a"
	line "POLIWAG's belly"
	cont "makes #MON"
	cont "lethargic if they"
	cont "stare it at for"
	cont "too long."
	done

CeruleanAquarium_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 13, CERULEAN_CITY, 6
	warp_event  9, 13, CERULEAN_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  4,  5, BGEVENT_READ, CeruleanExhibit1Sign
	bg_event  5,  5, BGEVENT_READ, CeruleanExhibit1Sign
	bg_event  4, 11, BGEVENT_READ, CeruleanExhibit2Sign
	bg_event  5, 11, BGEVENT_READ, CeruleanExhibit2Sign
	bg_event 14, 11, BGEVENT_READ, CeruleanExhibit3Sign
	bg_event 15, 11, BGEVENT_READ, CeruleanExhibit3Sign

	def_object_events
	object_event 15,  1, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanAquariumLinkReceptionistScript, -1
	object_event  5,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanAquariumSuperNerdScript, -1
	object_event 16,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanAquariumYoungsterScript, -1
	object_event  4, 12, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanAquariumTeacherScript, -1
	object_event 15, 12, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanAquariumLassScript, -1
