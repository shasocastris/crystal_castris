	object_const_def
	const SILVERCAVEUNDERBELLY_POKE_BALL1
	const SILVERCAVEUNDERBELLY_POKE_BALL2
	const SILVERCAVEUNDERBELLY_POKE_BALL3
	const SILVERCAVEUNDERBELLY_POKE_BALL4
	const SILVERCAVEUNDERBELLY_BOULDER1
	const SILVERCAVEUNDERBELLY_BOULDER2
	const SILVERCAVEUNDERBELLY_BOULDER3
	const SILVERCAVEUNDERBELLY_BOULDER4
	const SILVERCAVEUNDERBELLY_BOULDER5
	const SILVERCAVEUNDERBELLY_BOULDER6

SilverCaveUnderbelly_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCaveUnderbellyBoulder:
	jumpstd StrengthBoulderScript

SilverCaveUnderbellyMaxPotion:
	itemball MAX_POTION

SilverCaveUnderbellyZinc:
	itemball ZINC

SilverCaveUnderbellyNugget:
	itemball NUGGET

SilverCaveUnderbellySunStone:
	itemball SUN_STONE

SilverCaveUnderbellyPPUp:
	itemball PP_UP

SilverCaveUnderbellyHiddenSacredAsh:
	hiddenitem SACRED_ASH, EVENT_SILVER_CAVE_UNDERBELLY_HIDDEN_SACRED_ASH

SilverCaveUnderbellyHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_UNDERBELLY_HIDDEN_FULL_RESTORE

SilverCaveUnderbellyHiddenElixer:
	hiddenitem ELIXER, EVENT_SILVER_CAVE_UNDERBELLY_HIDDEN_ELIXER

SilverCaveUnderbelly_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24, 32, SILVER_CAVE_ROOM_1, 1
	warp_event  9,  1, SILVER_CAVE_ROOM_2, 1

	def_coord_events

	def_bg_events
	bg_event 15, 25, BGEVENT_ITEM, SilverCaveUnderbellyHiddenSacredAsh
	bg_event 26,  8, BGEVENT_ITEM, SilverCaveUnderbellyHiddenFullRestore
	bg_event 16,  6, BGEVENT_ITEM, SilverCaveUnderbellyHiddenElixer

	def_object_events
	object_event  5,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveUnderbellyMaxPotion, EVENT_SILVER_CAVE_UNDERBELLY_MAX_POTION
	object_event 27, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveUnderbellyZinc, EVENT_SILVER_CAVE_UNDERBELLY_ZINC
	object_event  4, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveUnderbellyNugget, EVENT_SILVER_CAVE_UNDERBELLY_NUGGET
	object_event  9, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveUnderbellySunStone, EVENT_SILVER_CAVE_UNDERBELLY_SUN_STONE
	object_event  6,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveUnderbellyPPUp, EVENT_SILVER_CAVE_UNDERBELLY_SUN_STONE
	object_event 21, 27, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCaveUnderbellyBoulder, -1
	object_event  7, 23, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCaveUnderbellyBoulder, -1
	object_event 16, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCaveUnderbellyBoulder, -1
	object_event 11, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCaveUnderbellyBoulder, -1
	object_event 11,  4, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCaveUnderbellyBoulder, -1
	object_event 22,  10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCaveUnderbellyBoulder, -1
