	object_const_def
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_A
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_B
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_C
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_D
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_E
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_F
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_G
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_H
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_I
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_J
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_K

RuinsOfAlphKabutoWordRoom_MapScripts:
	def_scene_scripts

	def_callbacks

UnownA:
	faceplayer
	opentext
	writetext KabutoWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_A
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_A
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_A, RuinsOfAlphKabutoWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_A
	end

UnownB:
	faceplayer
	opentext
	writetext KabutoWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_B
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_B
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_B, RuinsOfAlphKabutoWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_B
	end

UnownC:
	faceplayer
	opentext
	writetext KabutoWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_C
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_C
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_C, RuinsOfAlphKabutoWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_C
	end

UnownD:
	faceplayer
	opentext
	writetext KabutoWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_D
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_D
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_D, RuinsOfAlphKabutoWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_D
	end

UnownE:
	faceplayer
	opentext
	writetext KabutoWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_E
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_E
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_E, RuinsOfAlphKabutoWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_E
	end

UnownF:
	faceplayer
	opentext
	writetext KabutoWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_F
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_F
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_F, RuinsOfAlphKabutoWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_F
	end

UnownG:
	faceplayer
	opentext
	writetext KabutoWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_G
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_G
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_G, RuinsOfAlphKabutoWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_G
	end

UnownH:
	faceplayer
	opentext
	writetext KabutoWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_H
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_H
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_H, RuinsOfAlphKabutoWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_H
	end

UnownI:
	faceplayer
	opentext
	writetext KabutoWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_I
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_I
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_I, RuinsOfAlphKabutoWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_I
	end

UnownJ:
	faceplayer
	opentext
	writetext KabutoWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_J
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_J
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_J, RuinsOfAlphKabutoWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_J
	end

UnownK:
	faceplayer
	opentext
	writetext KabutoWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_K
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_K
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_K, RuinsOfAlphKabutoWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_K
	end

KabutoWordRoom_UnownText:
	text "UNOWN: UNOWN!"
	done

RuinsOfAlphKabutoWordRoomRockSmashMovement:
	rock_smash 30
	step_end

RuinsOfAlphKabutoWordRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  5, RUINS_OF_ALPH_KABUTO_ITEM_ROOM, 3
	warp_event 10,  5, RUINS_OF_ALPH_KABUTO_ITEM_ROOM, 4
	warp_event 17, 11, RUINS_OF_ALPH_INNER_CHAMBER, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  14,  5, SPRITE_UNOWN_A, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownA, EVENT_FOUGHT_UNOWN_A
	object_event   2,  2, SPRITE_UNOWN_B, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownB, EVENT_FOUGHT_UNOWN_B
	object_event   4,  5, SPRITE_UNOWN_C, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownC, EVENT_FOUGHT_UNOWN_C
	object_event   9,  9, SPRITE_UNOWN_D, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownD, EVENT_FOUGHT_UNOWN_D
	object_event  11,  2, SPRITE_UNOWN_E, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownE, EVENT_FOUGHT_UNOWN_E
	object_event   3,  8, SPRITE_UNOWN_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownF, EVENT_FOUGHT_UNOWN_F
	object_event  16,  2, SPRITE_UNOWN_G, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownG, EVENT_FOUGHT_UNOWN_G
	object_event  17,  7, SPRITE_UNOWN_H, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownH, EVENT_FOUGHT_UNOWN_H
	object_event  15, 10, SPRITE_UNOWN_I, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownI, EVENT_FOUGHT_UNOWN_I
	object_event  11,  7, SPRITE_UNOWN_J, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownJ, EVENT_FOUGHT_UNOWN_J
	object_event   6, 10, SPRITE_UNOWN_K, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownK, EVENT_FOUGHT_UNOWN_K
