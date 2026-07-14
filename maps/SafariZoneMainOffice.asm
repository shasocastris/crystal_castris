SafariZoneMainOffice_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneMainOfficeMoveTutorScript:
	faceplayer
	opentext
	writetext SafariZoneMainOfficeMoveTutorIntroText
	yesorno
	iffalse .Refused

	special SafariZoneMoveTutor
	ifequal FALSE, .Taught
	ifequal 1, .NoMove
	ifequal 2, .LineIncomplete
	ifequal 3, .AlreadyKnows
	ifequal 4, .NoRoom
	; 5 = the player backed out of the Pokemon selection; treat as refused.
	sjump .Refused

.Taught:
	writetext SafariZoneMainOfficeMoveTutorTaughtText
	waitbutton
	closetext
	end

.NoMove:
	writetext SafariZoneMainOfficeMoveTutorNoMoveText
	waitbutton
	closetext
	end

.LineIncomplete:
	writetext SafariZoneMainOfficeMoveTutorLineIncompleteText
	waitbutton
	closetext
	end

.AlreadyKnows:
	writetext SafariZoneMainOfficeMoveTutorAlreadyKnowsText
	waitbutton
	closetext
	end

.NoRoom:
	writetext SafariZoneMainOfficeMoveTutorNoRoomText
	waitbutton
	closetext
	end

.Refused:
	writetext SafariZoneMainOfficeMoveTutorRefusedText
	waitbutton
	closetext
	end

SafariZoneMainOfficeMoveTutorIntroText:
	text "I'm an aide from"
	line "ELM's LAB,"
	cont "studying evolution"
	cont "lines out here."

	para "Bring me the"
	line "earliest form in"
	cont "an evolution line"

	para "and I'll teach it"
	line "a rare move."

	para "Shall I take a"
	line "look?"
	done

SafariZoneMainOfficeMoveTutorTaughtText:
	text "Fascinating! A"
	line "true master of"
	cont "that whole line!"
	done

SafariZoneMainOfficeMoveTutorNoMoveText:
	text "Hmm… That #MON"
	line "isn't one I've"
	cont "studied. Sorry!"
	done

SafariZoneMainOfficeMoveTutorLineIncompleteText:
	text "You've yet to"
	line "catch that whole"
	cont "evolution line."

	para "Come back once"
	line "you have!"
	done

SafariZoneMainOfficeMoveTutorAlreadyKnowsText:
	text "It already knows"
	line "that move!"
	done

SafariZoneMainOfficeMoveTutorNoRoomText:
	text "Maybe another"
	line "time, then."
	done

SafariZoneMainOfficeMoveTutorRefusedText:
	text "Oh? Do come by"
	line "again sometime."
	done

SafariZoneMainOffice_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 2
	warp_event  3,  7, FUCHSIA_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneMainOfficeMoveTutorScript, -1
