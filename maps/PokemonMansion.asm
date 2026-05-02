	object_const_def
	const POKEMONMANSION_ROCK1
	const POKEMONMANSION_ROCK2
	const POKEMONMANSION_ROCK3
	const POKEMONMANSION_ROCK4

PokemonMansion_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonMansionRock:
	jumpstd SmashRockScript

PokemonMansion_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 25, CINNABAR_ISLAND, 2
	warp_event  7, 25, CINNABAR_ISLAND, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 17,  7, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansionRock, -1
	object_event 11, 19, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansionRock, -1
	object_event 27, 12, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansionRock, -1
	object_event  8,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonMansionRock, -1
