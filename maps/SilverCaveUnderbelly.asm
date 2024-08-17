	object_const_def
	const SILVERCAVEUNDERBELLY_POKE_BALL1
	const SILVERCAVEUNDERBELLY_POKE_BALL2
	const SILVERCAVEUNDERBELLY_POKE_BALL3
	const SILVERCAVEUNDERBELLY_POKE_BALL4

SilverCaveUnderbelly_MapScripts:
	def_scene_scripts

	def_callbacks

SilverCaveUnderbellyMaxPotion:
	itemball MAX_POTION

SilverCaveUnderbellyZinc:
	itemball ZINC

SilverCaveUnderbellyNugget:
	itemball NUGGET

SilverCaveUnderbellySunStone:
	itemball SUN_STONE

SilverCaveUnderbellyHiddenSacredAsh:
	hiddenitem SACRED_ASH, EVENT_SILVER_CAVE_UNDERBELLY_HIDDEN_SACRED_ASH

SilverCaveUnderbellyHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_SILVER_CAVE_UNDERBELLY_HIDDEN_FULL_HEAL

SilverCaveUnderbelly_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24, 32, SILVER_CAVE_ROOM_1, 1
	warp_event  9,  1, SILVER_CAVE_ROOM_2, 1

	def_coord_events

	def_bg_events
	bg_event 15, 24, BGEVENT_ITEM, SilverCaveUnderbellyHiddenSacredAsh
	bg_event 26,  8, BGEVENT_ITEM, SilverCaveUnderbellyHiddenFullHeal

	def_object_events
	object_event  5,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveUnderbellyMaxPotion, EVENT_SILVER_CAVE_UNDERBELLY_MAX_POTION
	object_event 27, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveUnderbellyZinc, EVENT_SILVER_CAVE_UNDERBELLY_ZINC
	object_event  4, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveUnderbellyNugget, EVENT_SILVER_CAVE_UNDERBELLY_NUGGET
	object_event 11, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveUnderbellySunStone, EVENT_SILVER_CAVE_UNDERBELLY_SUN_STONE
