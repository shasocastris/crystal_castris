	object_const_def
	const OLIVINERESTAURANT_LASS

OlivineRestaurant_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineRestaurantLassScript:
	jumptextfaceplayer OlivineRestaurantLassText

OlivineRestaurantLassText:
	text "Welcome!"
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
