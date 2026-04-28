	object_const_def

MountMoonB2_MapScripts:
	def_scene_scripts

	def_callbacks

MountMoonB2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 25, MOUNT_MOON_B1, 7
	warp_event 25,  9, MOUNT_MOON_B1, 6
	warp_event 21, 17, MOUNT_MOON_B1, 5
	warp_event  5, 11, ROUTE_4, 1
	warp_event 33, 10, CERULEAN_CAVE, 1

	def_coord_events

	def_bg_events

	def_object_events
