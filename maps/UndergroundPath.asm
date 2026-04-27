UndergroundPath_MapScripts:
	def_scene_scripts

	def_callbacks

UndergroundPathHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_UNDERGROUND_PATH_HIDDEN_FULL_RESTORE

UndergroundPathHiddenMaxRevive:
	hiddenitem MAX_REVIVE, EVENT_UNDERGROUND_PATH_HIDDEN_MAX_REVIVE

UndergroundPathHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_UNDERGROUND_PATH_HIDDEN_MAX_POTION

UndergroundPathHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_UNDERGROUND_PATH_HIDDEN_MAX_ELIXER

UndergroundPath_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  2, ROUTE_5_UNDERGROUND_PATH_ENTRANCE, 3
	warp_event 13, 24, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 3
	warp_event  3, 12, ROUTE_7_UNDERGROUND_PATH_ENTRANCE, 3
	warp_event 25, 12, ROUTE_8_UNDERGROUND_PATH_ENTRANCE, 3
	warp_event 13, 12, GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 1

	def_coord_events

	def_bg_events
	bg_event 13,  9, BGEVENT_ITEM, UndergroundPathHiddenFullRestore
	bg_event 11, 19, BGEVENT_ITEM, UndergroundPathHiddenMaxRevive
	bg_event  4, 13, BGEVENT_ITEM, UndergroundPathHiddenMaxPotion
	bg_event 20, 11, BGEVENT_ITEM, UndergroundPathHiddenMaxElixer

	def_object_events
