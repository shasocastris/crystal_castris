	object_const_def
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_L
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_M
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_N
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_O
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_P
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_Q
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_R

RuinsOfAlphOmanyteWordRoom_MapScripts:
	def_scene_scripts

	def_callbacks

UnownL:
	faceplayer
	opentext
	writetext OmanyteWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_L
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_L
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_L, RuinsOfAlphOmanyteWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_L
	end

UnownM:
	faceplayer
	opentext
	writetext OmanyteWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_M
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_M
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_M, RuinsOfAlphOmanyteWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_M
	end

UnownN:
	faceplayer
	opentext
	writetext OmanyteWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_N
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_N
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_N, RuinsOfAlphOmanyteWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_N
	end

UnownO:
	faceplayer
	opentext
	writetext OmanyteWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_O
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_O
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_O, RuinsOfAlphOmanyteWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_O
	end

UnownP:
	faceplayer
	opentext
	writetext OmanyteWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_P
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_P
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_P, RuinsOfAlphOmanyteWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_P
	end

UnownQ:
	faceplayer
	opentext
	writetext OmanyteWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_Q
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_Q
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_Q, RuinsOfAlphOmanyteWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_Q
	end

UnownR:
	faceplayer
	opentext
	writetext OmanyteWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_R
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_R
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_R, RuinsOfAlphOmanyteWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_R
	end

OmanyteWordRoom_UnownText:
	text "UNOWN: UNOWN!"
	done

RuinsOfAlphOmanyteWordRoomRockSmashMovement:
	rock_smash 30
	step_end

RuinsOfAlphOmanyteWordRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  7, RUINS_OF_ALPH_OMANYTE_ITEM_ROOM, 3
	warp_event 10,  7, RUINS_OF_ALPH_OMANYTE_ITEM_ROOM, 4
	warp_event 17, 13, RUINS_OF_ALPH_INNER_CHAMBER, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event   7,  3, SPRITE_UNOWN_L, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownL, EVENT_FOUGHT_UNOWN_L
	object_event  13,  8, SPRITE_UNOWN_M, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownM, EVENT_FOUGHT_UNOWN_M
	object_event   5, 11, SPRITE_UNOWN_N, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownN, EVENT_FOUGHT_UNOWN_N
	object_event  16,  4, SPRITE_UNOWN_O, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownO, EVENT_FOUGHT_UNOWN_O
	object_event   8, 12, SPRITE_UNOWN_P, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownP, EVENT_FOUGHT_UNOWN_P
	object_event  12,  6, SPRITE_UNOWN_Q, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownQ, EVENT_FOUGHT_UNOWN_Q
	object_event   3,  4, SPRITE_UNOWN_R, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownR, EVENT_FOUGHT_UNOWN_R
