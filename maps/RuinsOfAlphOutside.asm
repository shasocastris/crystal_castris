	object_const_def
	const RUINSOFALPHOUTSIDE_SCIENTIST1
	const RUINSOFALPHOUTSIDE_SCIENTIST2
	const RUINSOFALPHOUTSIDE_SCIENTIST3
	const RUINSOFALPHOUTSIDE_SCIENTIST4
	const RUINSOFALPHOUTSIDE_SCIENTIST5

RuinsOfAlphOutside_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphOutsideNoop1Scene, SCENE_RUINSOFALPHOUTSIDE_NOOP
	scene_script RuinsOfAlphOutsideNoop2Scene, SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX

	def_callbacks

RuinsOfAlphOutsideNoop1Scene:
	end

RuinsOfAlphOutsideNoop2Scene:
	end

RuinsOfAlphOutsideScientist1_Script:
	jumptextfaceplayer RuinsOfAlphOutsideScientist1_Text

RuinsOfAlphOutsideScientist2_Script:
	jumptextfaceplayer RuinsOfAlphOutsideScientist2_Text

RuinsOfAlphOutsideScientist3_Script:
	jumptextfaceplayer RuinsOfAlphOutsideScientist3_Text

RuinsOfAlphOutsideScientist4_Script:
	jumptextfaceplayer RuinsOfAlphOutsideScientist4_Text

RuinsOfAlphOutsideScientist5_Script:
	jumptextfaceplayer RuinsOfAlphOutsideScientist5_Text

RuinsOfAlphOutsideMysteryChamberSign:
	jumptext RuinsOfAlphOutsideMysteryChamberSignText

RuinsOfAlphSign:
	jumptext RuinsOfAlphSignText

RuinsOfAlphResearchCenterSign:
	jumptext RuinsOfAlphResearchCenterSignText

RuinsOfAlphOutsideScientistWalkToLabMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

RuinsOfAlphOutsidePlayerEnterLabMovement:
	step UP
	step_end

RuinsOfAlphOutsideScientistText:
	text "Hm? That's a #-"
	line "DEX, isn't it?"
	cont "May I see it?"

	para "There are so many"
	line "kinds of #MON."

	para "Hm? What's this?"

	para "What is this"
	line "#MON?"

	para "It looks like the"
	line "strange writing on"

	para "the walls of the"
	line "RUINS."

	para "If those drawings"
	line "are really #-"
	cont "MON, there should"
	cont "be many more."

	para "I know! Let me up-"
	line "grade your #-"
	cont "DEX. Follow me."
	done

RuinsOfAlphOutsideScientist1_Text:
RuinsOfAlphOutsideScientist2_Text:
RuinsOfAlphOutsideScientist3_Text:
RuinsOfAlphOutsideScientist4_Text:
RuinsOfAlphOutsideScientist5_Text:
	text "Get lost, kid!"
	done

RuinsOfAlphOutsideMysteryChamberSignText:
	text "MYSTERY STONE"
	line "PANEL CHAMBER"
	done

RuinsOfAlphSignText:
	text "RUINS OF ALPH"
	line "VISITORS WELCOME"
	done

RuinsOfAlphResearchCenterSignText:
	text "RUINS OF ALPH"
	line "RESEARCH CENTER"

	para "THE AUTHORITY ON"
	line "THE RUINS OF ALPH"
	done

RuinsOfAlphOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, RUINS_OF_ALPH_HO_OH_CHAMBER, 1
	warp_event 16,  7, RUINS_OF_ALPH_KABUTO_CHAMBER, 1
	warp_event  4, 29, RUINS_OF_ALPH_OMANYTE_CHAMBER, 1
	warp_event 18, 33, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 1
	warp_event 12, 13, RUINS_OF_ALPH_INNER_CHAMBER, 1
	warp_event 19, 11, RUINS_OF_ALPH_RESEARCH_CENTER, 1
	warp_event  6, 19, UNION_CAVE_B1F, 1
	warp_event  8, 27, UNION_CAVE_B1F, 2
	warp_event  9,  5, ROUTE_36_RUINS_OF_ALPH_GATE, 3
	warp_event 15, 20, ROUTE_32_RUINS_OF_ALPH_GATE, 1
	warp_event 15, 21, ROUTE_32_RUINS_OF_ALPH_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 18,  8, BGEVENT_READ, RuinsOfAlphOutsideMysteryChamberSign
	bg_event 14, 16, BGEVENT_READ, RuinsOfAlphSign
	bg_event 20, 12, BGEVENT_READ, RuinsOfAlphResearchCenterSign

	def_object_events
	object_event 12, 14, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientist1_Script, -1
	object_event 16,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientist2_Script, -1
	object_event  2, 18, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientist3_Script, -1
	object_event  4, 30, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientist4_Script, -1
	object_event 18, 34, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientist5_Script, -1
