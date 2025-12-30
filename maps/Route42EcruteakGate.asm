	object_const_def
	const ROUTE42ECRUTEAKGATE_OFFICER

Route42EcruteakGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route42EcruteakGateOfficerScript:
	jumptextfaceplayer Route42EcruteakGateOfficerText

Route42EcruteakGateOfficerText:
	text "MT.MORTAR and"
	line "ROUTE 42 are home"
	cont "to many powerful"
	cont "wild #MON."

	para "Please don't"
	line "disturb them."

	para "We've had enough"
	line "trouble with wild"

	para "#MON west of"
	line "here already."

	para "The last thing we"
	line "need is another"
	cont "incident."
	done

Route42EcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ECRUTEAK_CITY, 1
	warp_event  0,  5, ECRUTEAK_CITY, 2
	warp_event  9,  4, ROUTE_42, 1
	warp_event  9,  5, ROUTE_42, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateOfficerScript, -1
