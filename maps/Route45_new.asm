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

Route45Bridge5OverheadTrigger:
	changeblock  8, 66, $94 ; surfable river
	changeblock 10, 66, $95 ; surfable river
	setscene SCENE_ROUTE45_NEW_UNDERFOOT
	refreshmap
	end

Route45Bridge5UnderfootTrigger:
	changeblock  8, 66, $98 ; walkable bridge
	changeblock 10, 66, $99 ; walkable bridge
	setscene SCENE_ROUTE45_NEW_OVERHEAD
	refreshmap
	end

Route45Bridge6OverheadTrigger:
	changeblock 6, 80, $94 ; surfable river
	changeblock 8, 80, $95 ; surfable river
	setscene SCENE_ROUTE45_NEW_UNDERFOOT
	refreshmap
	end

Route45Bridge6UnderfootTrigger:
	changeblock 6, 80, $98 ; walkable bridge
	changeblock 8, 80, $99 ; walkable bridge
	setscene SCENE_ROUTE45_NEW_OVERHEAD
	refreshmap
	end

Route45BridgeAllOverheadTrigger:
	changeblock  8, 68, $94 ; surfable river
	changeblock 10, 68, $95 ; surfable river

	changeblock 6, 82, $94 ; surfable river
	changeblock 8, 82, $95 ; surfable river
	refreshmap
	setscene SCENE_ROUTE45_NEW_UNDERFOOT
	end

Route45BridgeAllUnderfootTrigger:
	changeblock  8, 68, $98 ; walkable bridge
	changeblock 10, 68, $99 ; walkable bridge

	changeblock 6, 82, $98 ; walkable bridge
	changeblock 8, 82, $99 ; walkable bridge
	refreshmap
	setscene SCENE_ROUTE45_NEW_OVERHEAD
	end

Route45New_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 89, BLACKTHORN_PASS, 1

	def_coord_events
	; Approach triggers - make bridge walkable when approaching from 1 steps away
;	coord_event  7, 68, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge5UnderfootTrigger
;	coord_event  7, 69, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge5UnderfootTrigger
;	coord_event 12, 68, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge5UnderfootTrigger
;	coord_event 12, 69, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge5UnderfootTrigger

;	coord_event  5, 82, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger
;	coord_event  5, 83, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger
;	coord_event 10, 82, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger
;	coord_event 10, 83, SCENE_ROUTE45_NEW_UNDERFOOT, Route45Bridge6UnderfootTrigger

	; Exit triggers - restore water when leaving bridge area
;	coord_event  6, 68, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge5OverheadTrigger
;	coord_event  6, 69, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge5OverheadTrigger
;	coord_event  7, 70, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge5OverheadTrigger
;	coord_event 12, 67, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge5OverheadTrigger
;	coord_event 13, 68, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge5OverheadTrigger
;	coord_event 13, 69, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge5OverheadTrigger
;	coord_event 12, 70, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge5OverheadTrigger

;	coord_event  5, 81, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
;	coord_event  4, 82, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
;	coord_event  4, 83, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
;	coord_event  5, 84, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
;	coord_event 11, 82, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger
;	coord_event 11, 83, SCENE_ROUTE45_NEW_OVERHEAD, Route45Bridge6OverheadTrigger

	coord_event 20, 89, SCENE_ROUTE45_NEW_OVERHEAD, Route45BridgeAllOverheadTrigger

	coord_event  4, 75, SCENE_ROUTE45_NEW_UNDERFOOT, Route45BridgeAllUnderfootTrigger
	coord_event  5, 75, SCENE_ROUTE45_NEW_UNDERFOOT, Route45BridgeAllUnderfootTrigger

	def_bg_events

	def_object_events
