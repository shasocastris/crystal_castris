	object_const_def

MountMoonB1_MapScripts:
	def_scene_scripts

	def_callbacks

MountMoonB1RivalEncounterScene:
	end

MountMoonB1NoopScene:
	end

MountMoonB1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, MOUNT_MOON, 6
	warp_event 25,  3, MOUNT_MOON, 5
	warp_event  3, 23, MOUNT_MOON, 4
	warp_event 23, 15, MOUNT_MOON, 3
	warp_event 15, 15, MOUNT_MOON_B2, 3
	warp_event 17,  7, MOUNT_MOON_B2, 2
	warp_event 15, 25, MOUNT_MOON_B2, 1

	def_coord_events

	def_bg_events

	def_object_events
