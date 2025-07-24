	object_const_def

Route45New_MapScripts:
	def_scene_scripts
	scene_script Route45NewSetBridgeEvents, SCENE_ROUTE45_NEW_SET_BRIDGE_EVENTS
	scene_script Route45NewSetNoop1Scene, SCENE_ROUTE45_NEW_UNDERFOOT
	scene_script Route45NewSetNoop2Scene, SCENE_ROUTE45_NEW_OVERHEAD

	def_callbacks

Route45NewSetBridgeEvents:
	setscene SCENE_ROUTE45_NEW_OVERHEAD
	end

Route45NewSetNoop1Scene:
	end

Route45NewSetNoop2Scene:
	end

Route45Bridge6OverheadTrigger:
	changeblock 6, 80, $94 ; surfable river
	changeblock 8, 80, $95 ; surfable river
	refreshmap
	setscene SCENE_ROUTE45_NEW_UNDERFOOT
	end

Route45Bridge6UnderfootTrigger:
	changeblock 6, 80, $98 ; walkable bridge
	changeblock 8, 80, $99 ; walkable bridge
	refreshmap
	setscene SCENE_ROUTE45_NEW_OVERHEAD
	end

Route45New_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 87, BLACKTHORN_PASS, 1

	def_coord_events
	; Approach triggers - make bridge walkable when approaching from 1 steps away
	coord_event  5, 80, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger
	coord_event  5, 81, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger
	coord_event 10, 80, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger
	coord_event 10, 81, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger

	; Exit triggers - restore water when leaving bridge area
	coord_event  5, 79, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
	coord_event  4, 80, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
	coord_event  4, 81, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
	coord_event  5, 82, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
	coord_event 11, 80, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
	coord_event 11, 81, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger

	def_bg_events

	def_object_events
