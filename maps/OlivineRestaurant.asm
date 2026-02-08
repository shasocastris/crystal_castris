	object_const_def
	const OLIVINERESTAURANT_LASS

OlivineRestaurant_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineRestaurantLassScript:
	jumptextfaceplayer OlivineRestaurantLassText

OlivineRestaurantKangaskhanScript:
OlivineRestaurantJigglypuffScript:
	jumptextfaceplayer OlivineRestaurantPokemonText

OlivineRestaurantLassText:
	text "Welcome!"
	done

OlivineRestaurantPokemonText:
	text " !"
	done

OlivineRestaurant_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  9, OLIVINE_CITY, 7
	warp_event  3,  9, OLIVINE_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLACK, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantLassScript, -1
	object_event  2,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantKangaskhanScript, -1
	object_event  2,  3, SPRITE_EKANS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantJigglypuffScript, -1
	object_event  8,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantJigglypuffScript, -1
	object_event  5,  3, SPRITE_BAYLEEF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantJigglypuffScript, -1
	object_event 11,  3, SPRITE_SPEAROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantJigglypuffScript, -1
	object_event 11,  4, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantJigglypuffScript, -1
	object_event 11,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantJigglypuffScript, -1
	object_event 11,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantJigglypuffScript, -1
	object_event  8,  7, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantJigglypuffScript, -1



; ampharos, arcanine, bayleef, caterpie, crocanaw, cyndaquil, delibird
; donphan, dunsparce, eevee, ekans, flaafy, furret, girafarig, gyarados
; horsea, houndoom, houndour, kingdra, lanturn, lapras, larvitar, magcargo
; magikarp, mantine, mareep, meganium, murkrow, natu, omanyte, omastar, persian
; phanpy, ponyta, porygon, porygon2, quagsire, rapidash, remoraid, rhydon
; scizor, seadra, seaking, shuckle, skarmory, slugma, smeargle, spearow
; totodile, tyranitar, xatu