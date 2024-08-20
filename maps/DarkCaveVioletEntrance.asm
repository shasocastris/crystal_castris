	object_const_def
	const DARKCAVEVIOLETENTRANCE_POKE_BALL1
	const DARKCAVEVIOLETENTRANCE_ROCK1
	const DARKCAVEVIOLETENTRANCE_ROCK2
	const DARKCAVEVIOLETENTRANCE_ROCK3
	const DARKCAVEVIOLETENTRANCE_ROCK4
	const DARKCAVEVIOLETENTRANCE_POKE_BALL2
	const DARKCAVEVIOLETENTRANCE_POKE_BALL3
	const DARKCAVEVIOLETENTRANCE_POKE_BALL4
	const DARKCAVEVIOLETENTRANCE_POKE_BALL5
	const DARKCAVEVIOLETENTRANCE_POKE_BALL6
	const DARKCAVEVIOLETENTRANCE_POKE_BALL7
	const DARKCAVEVIOLETENTRANCE_POKE_BALL8

DarkCaveVioletEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

DarkCaveVioletEntranceEther:
	itemball ETHER

DarkCaveVioletEntranceFullHeal:
	itemball FULL_HEAL

DarkCaveVioletEntranceHyperPotion:
	itemball HYPER_POTION

DarkCaveVioletEntranceNugget:
	itemball NUGGET

DarkCaveVioletEntranceRareCandy:
	itemball RARE_CANDY

DarkCaveVioletEntranceRevive:
	itemball REVIVE

DarkCaveVioletEntranceProtein:
	itemball PROTEIN

DarkCaveVioletEntranceKingsRock:
	itemball KINGS_ROCK

DarkCaveVioletEntranceRock:
	jumpstd SmashRockScript

DarkCaveVioletEntranceHiddenElixer:
	hiddenitem ELIXER, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_ELIXER

DarkCaveVioletEntranceHiddenMoonStone:
	hiddenitem MOON_STONE, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_MOON_STONE

DarkCaveVioletEntranceHiddenMaxRepel:
	hiddenitem MAX_REPEL, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_MAX_REPEL

DarkCaveVioletEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, ROUTE_31, 3
	warp_event 17,  1, DARK_CAVE_BLACKTHORN_ENTRANCE, 2
	warp_event 35, 33, ROUTE_46, 3
	warp_event 37,  5, DARK_CAVE_VIOLET_ENTRANCE, 5
	warp_event  7, 25, DARK_CAVE_VIOLET_ENTRANCE, 4

	def_coord_events

	def_bg_events
	bg_event 26,  3, BGEVENT_ITEM, DarkCaveVioletEntranceHiddenElixer
	bg_event 22, 33, BGEVENT_ITEM, DarkCaveVioletEntranceHiddenMoonStone
	bg_event  3, 31, BGEVENT_ITEM, DarkCaveVioletEntranceHiddenMaxRepel

	def_object_events
	object_event  6,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceEther, EVENT_DARK_CAVE_VIOLET_ENTRANCE_ETHER
	object_event 16, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 27,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event  7, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 36, 31, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 36, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceFullHeal, EVENT_DARK_CAVE_VIOLET_ENTRANCE_FULL_HEAL
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceHyperPotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HYPER_POTION
	object_event 30, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceNugget, EVENT_DARK_CAVE_VIOLET_ENTRANCE_NUGGET
	object_event 21, 28, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 17, 32, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 19, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceRareCandy, EVENT_DARK_CAVE_VIOLET_ENTRANCE_RARE_CANDY
	object_event 18, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceRevive, EVENT_DARK_CAVE_VIOLET_ENTRANCE_REVIVE
	object_event  4, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceProtein, EVENT_DARK_CAVE_VIOLET_ENTRANCE_PROTEIN
	object_event 12, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceKingsRock, EVENT_DARK_CAVE_VIOLET_ENTRANCE_KINGS_ROCK
