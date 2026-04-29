	object_const_def
	const MOUNTMOONPATH_POKE_BALL1
	const MOUNTMOONPATH_POKE_BALL2

MountMoonPath_MapScripts:
	def_scene_scripts

	def_callbacks
MountMoonPathMaxPotion:
	itemball MAX_POTION

MountMoonPathFullHeal:
	itemball FULL_HEAL

MountMoonPathHiddenMaxRepel:
	hiddenitem MAX_REPEL, EVENT_MT_MOON_PATH_HIDDEN_MAX_REPEL

MountMoonPathHiddenStardust:
	hiddenitem STARDUST, EVENT_MT_MOON_PATH_HIDDEN_STARDUST

MountMoonPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, MOUNT_MOON, 2
	warp_event 15, 15, MOUNT_MOON_SQUARE, 1

	def_coord_events

	def_bg_events
	bg_event 10,  5, BGEVENT_ITEM, MountMoonPathHiddenMaxRepel
	bg_event  6, 12, BGEVENT_ITEM, MountMoonPathHiddenStardust

	def_object_events
	object_event 13,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonPathMaxPotion, EVENT_MT_MOON_PATH_MAX_POTION
	object_event 14, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMoonPathFullHeal,   EVENT_MT_MOON_PATH_FULL_HEAL
