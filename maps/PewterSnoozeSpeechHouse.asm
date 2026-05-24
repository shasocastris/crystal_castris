	object_const_def
	const PEWTERSNOOZESPEECHHOUSE_GRAMPS

PewterSnoozeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterSnoozeSpeechHouseGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_PEWTER_GRAMPS_JACKHAMMER
	iftrue .GotJackhammer
	writetext PewterSnoozeSpeechHouseReceiveJackhammerText
	promptbutton
	verbosegiveitem JACKHAMMER
	setevent EVENT_GOT_PEWTER_GRAMPS_JACKHAMMER
.GotJackhammer:
	writetext PewterSnoozeSpeechHouseGotJackhammerText
	waitbutton
	closetext
	end

PewterSnoozeSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

PewterSnoozeSpeechHouseReceiveJackhammerText:
	text "A young trainer!"
	line "I used to mine"
	cont "PEWTER mountains"
	cont "for thirty years."

	para "I don't get around"
	line "like I once did."
	cont "Put my JACKHAMMER"
	cont "to better use."
	done

PewterSnoozeSpeechHouseGotJackhammerText:
	text "That JACKHAMMER'll"
	line "crack any rock you"
	cont "come across."

	para "No need for a"
	line "#MON that knows"
	cont "ROCK SMASH!"

	para "Try it out on any"
	line "loose boulder."
	done

PewterSnoozeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 5
	warp_event  3,  7, PEWTER_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PewterSnoozeSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, PewterSnoozeSpeechHouseBookshelf

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterSnoozeSpeechHouseGrampsScript, -1
