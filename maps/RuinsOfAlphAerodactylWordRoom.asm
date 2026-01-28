	object_const_def
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_S
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_T
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_U
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_V
	const RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_W

RuinsOfAlphAerodactylWordRoom_MapScripts:
	def_scene_scripts

	def_callbacks

UnownS:
	faceplayer
	opentext
	writetext AerodactylWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_S
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_S
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_S, RuinsOfAlphAerodactylWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_S
	end

UnownT:
	faceplayer
	opentext
	writetext AerodactylWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_T
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_T
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_T, RuinsOfAlphAerodactylWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_T
	end

UnownU:
	faceplayer
	opentext
	writetext AerodactylWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_U
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_U
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_U, RuinsOfAlphAerodactylWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_U
	end

UnownV:
	faceplayer
	opentext
	writetext AerodactylWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_V
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_V
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_V, RuinsOfAlphAerodactylWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_V
	end

UnownW:
	faceplayer
	opentext
	writetext AerodactylWordRoom_UnownText
	cry UNOWN
	pause 15
	closetext
	setevent EVENT_FOUGHT_UNOWN_W
	loadvar VAR_BATTLETYPE, BATTLETYPE_UNOWN_W
	loadwildmon UNOWN, 35
	startbattle
	reloadmapafterbattle
	pause 15
	applymovement RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_W, RuinsOfAlphAerodactylWordRoomRockSmashMovement
	disappear RUINSOFALPH_KABUTO_WORD_ROOM_UNOWN_W
	end

AerodactylWordRoom_UnownText:
	text "UNOWN: UNOWN!"
	done

RuinsOfAlphAerodactylWordRoomRockSmashMovement:
	rock_smash 30
	step_end

RuinsOfAlphAerodactylWordRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  5, RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM, 3
	warp_event 10,  5, RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM, 4
	warp_event 17, 11, RUINS_OF_ALPH_INNER_CHAMBER, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event 16,  6, SPRITE_UNOWN_S, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownS, EVENT_FOUGHT_UNOWN_S
	object_event   6,  7, SPRITE_UNOWN_T, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownT, EVENT_FOUGHT_UNOWN_T
	object_event  10,  3, SPRITE_UNOWN_U, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownU, EVENT_FOUGHT_UNOWN_U
	object_event 12, 10, SPRITE_UNOWN_V, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownV, EVENT_FOUGHT_UNOWN_V
	object_event   4,  9, SPRITE_UNOWN_W, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnownW, EVENT_FOUGHT_UNOWN_W
