	object_const_def
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_X
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_Y
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_Z

RuinsOfAlphHoOhWordRoom_MapScripts:
	def_scene_scripts

	def_callbacks

UnownX:
    faceplayer
    opentext
    writetext HoOhWordRoom_UnownText
    cry UNOWN
    pause 15
    closetext
    setevent EVENT_FOUGHT_UNOWN_X
    loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_X
    loadwildmon UNOWN, 35
    startbattle
    reloadmapafterbattle
    pause 15
    applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_X, RuinsOfAlphHoOhWordRoomRockSmashMovement
    disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_X
    end

UnownY:
    faceplayer
    opentext
    writetext HoOhWordRoom_UnownText
    cry UNOWN
    pause 15
    closetext
    setevent EVENT_FOUGHT_UNOWN_Y
    loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_Y
    loadwildmon UNOWN, 35
    startbattle
    reloadmapafterbattle
    pause 15
    applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_Y, RuinsOfAlphHoOhWordRoomRockSmashMovement
    disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_Y
    end

UnownZ:
    faceplayer
    opentext
    writetext HoOhWordRoom_UnownText
    cry UNOWN
    pause 15
    closetext
    setevent EVENT_FOUGHT_UNOWN_Z
    loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_Z
    loadwildmon UNOWN, 35
    startbattle
    reloadmapafterbattle
    pause 15
    applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_Z, RuinsOfAlphHoOhWordRoomRockSmashMovement
    disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_Z
    end

HoOhWordRoom_UnownText:
	text "UNOWN: UNOWN!"
	done

RuinsOfAlphHoOhWordRoomRockSmashMovement:
	rock_smash 30
	step_end

RuinsOfAlphHoOhWordRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  9, RUINS_OF_ALPH_HO_OH_ITEM_ROOM, 3
	warp_event 10,  9, RUINS_OF_ALPH_HO_OH_ITEM_ROOM, 4
	warp_event 17, 21, RUINS_OF_ALPH_INNER_CHAMBER, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 16, SPRITE_UNOWN_X, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownX, EVENT_FOUGHT_UNOWN_X
	object_event   9,  4, SPRITE_UNOWN_Y, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownY, EVENT_FOUGHT_UNOWN_Y
	object_event  14, 12, SPRITE_UNOWN_Z, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownZ, EVENT_FOUGHT_UNOWN_Z
