	object_const_def

Route45New_MapScripts:
	def_scene_scripts
;	scene_script

	def_callbacks

Route45Bridge6OverheadTrigger:
	changeblock 6, 82, $94 ; floor
	refreshmap
	changeblock 8, 82, $95 ; floor
	refreshmap
	end

Route45Bridge6UnderfootTrigger:
	changeblock 6, 82, $98 ; floor
	refreshmap
	changeblock 8, 82, $99 ; floor
	refreshmap
	end

Route45New_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 89, BLACKTHORN_PASS, 1
;	warp_event  4,  6, ROUTE_45, 1
;	warp_event  4,  7, ROUTE_45, 1

	def_coord_events
	coord_event  5, 82, 1, Route45Bridge6UnderfootTrigger
	coord_event  5, 83, 1, Route45Bridge6UnderfootTrigger
	coord_event  5, 81, 0, Route45Bridge6OverheadTrigger
	coord_event  4, 82, 1, Route45Bridge6OverheadTrigger
	coord_event  4, 83, 1, Route45Bridge6OverheadTrigger
	coord_event  5, 84, 0, Route45Bridge6OverheadTrigger
	coord_event 10, 82, 0, Route45Bridge6UnderfootTrigger
	coord_event 10, 83, 0, Route45Bridge6UnderfootTrigger
	coord_event 11, 82, 1, Route45Bridge6OverheadTrigger
	coord_event 11, 83, 1, Route45Bridge6OverheadTrigger

	def_bg_events

	def_object_events
