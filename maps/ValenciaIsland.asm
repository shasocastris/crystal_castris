	object_const_def

ValenciaIsland_MapScripts:
	def_scene_scripts

	def_callbacks

ValenciaIslandFlypointScript:
; Scene id -1 so this fires whatever the scene: CheckScenes returns -1 for a map
; with no entry in MapScenes, and this map has none.
	setflag ENGINE_FLYPOINT_VALENCIA
	end

ValenciaIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 13, VALENCIA_PORT, 2
	warp_event  9, 13, VALENCIA_PORT, 1

	def_coord_events
	coord_event  9,  6, -1, ValenciaIslandFlypointScript

	def_bg_events

	def_object_events
