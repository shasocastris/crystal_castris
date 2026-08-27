ShamoutiIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ShamoutiIslandFlypointCallback

ShamoutiIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_SHAMOUTI
	endcallback

ShamoutiIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 22, 13, SHAMOUTI_CAVE, 1

	def_coord_events

	def_bg_events

	def_object_events
