Route7UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

Route7UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_7, 3
	warp_event  4,  7, ROUTE_7, 3
	warp_event  4,  3, UNDERGROUND_PATH, 3

	def_coord_events

	def_bg_events

	def_object_events
