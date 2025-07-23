	object_const_def

Route45New_MapScripts:
	def_scene_scripts
	scene_script Route45NewSetBridgeEvents, SCENE_ROUTE45_NEW_SET_BRIDGE_EVENTS
	scene_script Route45NewSetNoop1Scene, SCENE_ROUTE45_NEW_OVERHEAD
	scene_script Route45NewSetNoop2Scene, SCENE_ROUTE45_NEW_UNDERFOOT

	def_callbacks

Route45NewSetBridgeEvents:
	setscene SCENE_ROUTE45_NEW_OVERHEAD
	end

Route45NewSetNoop1Scene:
	end

Route45NewSetNoop2Scene:
	end

Route45Bridge6OverheadTrigger:
	changeblock 6, 82, $94 ; surfable river
	changeblock 8, 82, $95 ; surfable river
	refreshmap
;	pause 150
	setscene SCENE_ROUTE45_NEW_UNDERFOOT
	end

Route45Bridge6UnderfootTrigger:
	changeblock 6, 82, $98 ; walkable bridge
	changeblock 8, 82, $99 ; walkable bridge
	refreshmap
;	pause 150
	setscene SCENE_ROUTE45_NEW_OVERHEAD
	end

Route45New_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 89, BLACKTHORN_PASS, 1

	def_coord_events
	coord_event  5, 82, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger
	coord_event  5, 83, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger
	coord_event  5, 81, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
	coord_event  4, 82, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
	coord_event  4, 83, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
	coord_event  5, 84, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
	coord_event 10, 82, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger
	coord_event 10, 83, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger
	coord_event 11, 82, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
	coord_event 11, 83, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger

	def_bg_events

	def_object_events
