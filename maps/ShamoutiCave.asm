	object_const_def
	const SHAMOUTICAVE_ROCK1
	const SHAMOUTICAVE_ROCK2
	const SHAMOUTICAVE_ROCK3

ShamoutiCave_MapScripts:
	def_scene_scripts

	def_callbacks

ShamoutiCaveRock:
	jumpstd SmashRockScript

ShamoutiCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 15, SHAMOUTI_ISLAND, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShamoutiCaveRock, -1
	object_event 11, 12, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShamoutiCaveRock, -1
	object_event 15, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShamoutiCaveRock, -1
