	object_const_def

MountMoonPath_MapScripts:
	def_scene_scripts

	def_callbacks

MountMoonPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, MOUNT_MOON, 2
	warp_event 15, 15, MOUNT_MOON_SQUARE, 1

	def_coord_events

	def_bg_events

	def_object_events
