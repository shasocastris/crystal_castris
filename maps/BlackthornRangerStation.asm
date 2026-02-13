	object_const_def
	const BLACKTHORNRANGERSTATION_OFFICER_1
	const BLACKTHORNRANGERSTATION_OFFICER_2
	const BLACKTHORNRANGERSTATION_OFFICER_3

BlackthornRangerStation_MapScripts:
	def_scene_scripts

	def_callbacks

BlackthornRangerStationRanger1Script:
	faceplayer
	opentext
	writetext BlackthornRangerStationRanger1Text
	waitbutton
	closetext
	turnobject BLACKTHORNRANGERSTATION_OFFICER_1, LEFT
	end

BlackthornRangerStationRanger2Script:
	faceplayer
	opentext
	writetext BlackthornRangerStationRanger2Text
	waitbutton
	closetext
	turnobject BLACKTHORNRANGERSTATION_OFFICER_2, RIGHT
	end

BlackthornRangerStationRanger3Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_BLACKTHORN_RANGER_STATION_MACHETE
	iftrue .GotMachete
	writetext BlackthornRangerStationReceiveMacheteText
	promptbutton
	verbosegiveitem MACHETE
	setevent EVENT_GOT_BLACKTHORN_RANGER_STATION_MACHETE
.GotMachete:
	writetext BlackthornRangerStationGotMacheteText
	waitbutton
	closetext
	end

BlackthornRangerStationRanger1Text:
	text "That PC lets us"
	line "retrieve #MON"
	cont "when we need to"
	cont "deploy."

	para "Feel free to use"
	line "it as well."
	done

BlackthornRangerStationRanger2Text:
	text "We built this"
	line "RANGER STATION to"
	cont "monitor the whole"
	cont "JOHTO region."

	para "We're currently"
	line "coordinating with"
	cont "teams in KANTO to"
	cont "track down any"
	cont "stragglers from"
	cont "TEAM ROCKET."
	done

BlackthornRangerStationReceiveMacheteText:
	text "Thanks so much for"
	line "your help with the"
	cont "WILD HUNT."

	para "The FIRST RANGER"
	line "wanted you to have"
	cont "this to help you"
	cont "on your travels."
	done

BlackthornRangerStationGotMacheteText:
	text "A MACHETE is how"
	line "we cut through"
	cont "small trees and"
	cont "brush out here."

	para "No need to have a"
	line "#MON that knows"
	cont "CUT in your team!"

	para "Try it out on any"
	line "small tree. You"
	cont "can register it"
	cont "to SELECT, too."
	done

BlackthornRangerStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 4
	warp_event  3,  7, BLACKTHORN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BlackthornRangerStationRanger1Script, -1
	object_event  5,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BlackthornRangerStationRanger2Script, -1
	object_event  0,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BlackthornRangerStationRanger3Script, -1