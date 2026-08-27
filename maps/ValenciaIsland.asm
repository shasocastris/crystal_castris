	object_const_def

ValenciaIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ValenciaIslandFlypointCallback

ValenciaIslandFlypointCallback:
; On the island, not the port: the player still has to cross from Valencia Port
; to earn it. A callback rather than a coord event so it cannot be walked past
; -- where the flypoint sits is where SPAWN_VALENCIA lands you, nothing more.
	setflag ENGINE_FLYPOINT_VALENCIA
	endcallback

ValenciaIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 13, VALENCIA_PORT, 2
	warp_event  9, 13, VALENCIA_PORT, 1

	def_coord_events

	def_bg_events

	def_object_events
