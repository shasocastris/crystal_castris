	object_const_def
	const ROUTE38ECRUTEAKGATE_OFFICER_1
	const ROUTE38ECRUTEAKGATE_OFFICER_2
	const ROUTE38ECRUTEAKGATE_OFFICER_3
	const ROUTE38ECRUTEAKGATE_OFFICER_4

Route38EcruteakGate_MapScripts:
	def_scene_scripts

	def_callbacks
Route38EcruteakGateRanger1Script:
	faceplayer
	opentext
	writetext Route38EcruteakGateRanger1Text
	waitbutton
	closetext
	turnobject ROUTE38ECRUTEAKGATE_OFFICER_1, LEFT
	end

Route38EcruteakGateRanger2Script:
	faceplayer
	opentext
	writetext Route38EcruteakGateRanger2Text
	waitbutton
	closetext
	turnobject ROUTE38ECRUTEAKGATE_OFFICER_2, LEFT
	end

Route38EcruteakGateRanger3Script:
	clearevent EVENT_QUELL_WILD_HUNT
	jumptextfaceplayer Route38EcruteakGateRanger3Text

Route38EcruteakGateOfficerScript:
	jumptextfaceplayer Route38EcruteakGateOfficerText

Route38EcruteakGateRanger1Text:
	text "The TAUROS herd"
	line "on ROUTE 38 has"
	cont "gone berserk."

	para "We can't let"
	line "anyone through"
	cont "until it's safe."
	done

Route38EcruteakGateRanger2Text:
	text "Something set off"
	line "the wild TAUROS."

	para "If they stampede,"
	line "they'll attack"
	cont "anything in sight."

	para "Stay back for your"
	line "own safety!"
	done

Route38EcruteakGateRanger3Text:
	text "We're trying to"
	line "contain the TAUROS"
	cont "before they reach"
	cont "ECRUTEAK CITY."

	para "If they form a"
	line "WILD HUNT, the"
	cont "whole town could"
	cont "be overrun!"
	done

Route38EcruteakGateOfficerText:
	text "Where did you say"
	line "you're from?"

	para "NEW BARK TOWN?"

	para "If PROF.ELM gave"
	line "you a #MON, you"
	cont "are going to go"
	cont "far."
	done

Route38EcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_38, 1
	warp_event  0,  5, ROUTE_38, 2
	warp_event  9,  4, ECRUTEAK_CITY, 14
	warp_event  9,  5, ECRUTEAK_CITY, 15

	def_coord_events

	def_bg_events

	def_object_events
;	object_event  3,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route38EcruteakGateRanger1Script, -1
;	object_event  4,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route38EcruteakGateRanger2Script, -1
	object_event  7,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route38EcruteakGateRanger3Script, -1
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route38EcruteakGateOfficerScript, EVENT_QUELL_WILD_HUNT
