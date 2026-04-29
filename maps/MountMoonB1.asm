	object_const_def
	const MOUNTMOON_B1_POKE_BALL1
	const MOUNTMOON_B1_POKE_BALL2
	const MOUNTMOON_B1_POKE_BALL3
	const MOUNTMOON_B1_POKE_BALL4

MountMoonB1_MapScripts:
	def_scene_scripts

	def_callbacks

MountMoonB1RareCandy:
	itemball RARE_CANDY

MountMoonB1Carbos:
	itemball CARBOS

MountMoonB1MaxRevive:
	itemball MAX_REVIVE

MountMoonB1UltraBall:
	itemball ULTRA_BALL

MountMoonB1HiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_MT_MOON_B1_HIDDEN_FULL_RESTORE

MountMoonB1HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_MT_MOON_B1_HIDDEN_MAX_ETHER

MountMoonB1HiddenStarPiece:
	hiddenitem STAR_PIECE, EVENT_MT_MOON_B1_HIDDEN_STAR_PIECE

MountMoonB1HiddenEscapeRope:
	hiddenitem ESCAPE_ROPE, EVENT_MT_MOON_B1_HIDDEN_ESCAPE_ROPE

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
	bg_event  4, 10, BGEVENT_ITEM, MountMoonB1HiddenFullRestore
	bg_event 14,  4, BGEVENT_ITEM, MountMoonB1HiddenMaxEther
	bg_event  4, 25, BGEVENT_ITEM, MountMoonB1HiddenStarPiece
	bg_event 25, 15, BGEVENT_ITEM, MountMoonB1HiddenEscapeRope
 
	def_object_events
	object_event  4, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonB1RareCandy, EVENT_MT_MOON_B1_RARE_CANDY
	object_event 21,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonB1Carbos, EVENT_MT_MOON_B1_CARBOS
	object_event  7, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonB1MaxRevive, EVENT_MT_MOON_B1_MAX_REVIVE
	object_event 20, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonB1UltraBall, EVENT_MT_MOON_B1_ULTRA_BALL
