SafariZoneMainOffice_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneMainOfficePCNYTutorScript:
	faceplayer
	opentext
	writetext SafariZoneMainOfficePCNYTutorIntroText
	yesorno
	iffalse .Refused

	special PCNYMoveTutor
	ifequal FALSE, .Taught
	ifequal 1, .NoMove
	ifequal 2, .LineIncomplete
	ifequal 3, .AlreadyKnows
	ifequal 4, .NoRoom
	; 5 = the player backed out of the Pokemon selection; treat as refused.
	sjump .Refused

.Taught:
	writetext SafariZoneMainOfficePCNYTutorTaughtText
	waitbutton
	closetext
	end

.NoMove:
	writetext SafariZoneMainOfficePCNYTutorNoMoveText
	waitbutton
	closetext
	end

.LineIncomplete:
	writetext SafariZoneMainOfficePCNYTutorLineIncompleteText
	waitbutton
	closetext
	end

.AlreadyKnows:
	writetext SafariZoneMainOfficePCNYTutorAlreadyKnowsText
	waitbutton
	closetext
	end

.NoRoom:
	writetext SafariZoneMainOfficePCNYTutorNoRoomText
	waitbutton
	closetext
	end

.Refused:
	writetext SafariZoneMainOfficePCNYTutorRefusedText
	waitbutton
	closetext
	end

SafariZoneMainOfficePCNYTutorIntroText:
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

SafariZoneMainOfficePCNYTutorTaughtText:
	text "Fascinating! A"
	line "true master of"
	cont "that whole line!"
	done

SafariZoneMainOfficePCNYTutorNoMoveText:
	text "Hmm… That #MON"
	line "isn't one I've"
	cont "studied. Sorry!"
	done

SafariZoneMainOfficePCNYTutorLineIncompleteText:
	text "You've yet to"
	line "catch that whole"
	cont "evolution line."

	para "Come back once"
	line "you have!"
	done

SafariZoneMainOfficePCNYTutorAlreadyKnowsText:
	text "It already knows"
	line "that move!"
	done

SafariZoneMainOfficePCNYTutorNoRoomText:
	text "Maybe another"
	line "time, then."
	done

SafariZoneMainOfficePCNYTutorRefusedText:
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
	object_event  3,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneMainOfficePCNYTutorScript, -1
