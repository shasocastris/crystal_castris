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

SafariZoneMainOfficeOakAideScript:
	faceplayer
	opentext
	writetext SafariZoneMainOfficeOakAideText
	waitbutton
	closetext
	end

SafariZoneMainOfficeEvolutionFieldNotes1:
	jumptext SafariZoneMainOfficeEvolutionFieldNotes1Text

SafariZoneMainOfficeEvolutionFieldNotes2:
	jumptext SafariZoneMainOfficeEvolutionFieldNotes2Text

SafariZoneMainOfficeEvolutionFieldNotes3:
	jumptext SafariZoneMainOfficeEvolutionFieldNotes3Text

SafariZoneMainOfficeEvolutionFieldNotes4:
	jumptext SafariZoneMainOfficeEvolutionFieldNotes4Text

SafariZoneMainOfficeOakAideText:
	text "I'm on loan from"
	line "OAK's LAB in a"
	cont "joint project."

	para "We're studying"
	line "#MON in the"
	cont "SAFARI ZONE and"
	cont "we discovered"
	cont "something new!"

	para "#MON learn new"
	line "moves if their"
	cont "entire line is"
	cont "caught."

	para "I'm writing a"
	line "paper about it for"
	cont "PROF.ELM."

	para "You should check"
	line "out our notes on"
	cont "those bookshelves."
	done

SafariZoneMainOfficeEvolutionFieldNotes1Text:
	text "<PLAYER> skimmed"
	line "the evolution line"
	cont "field notes:"

	para "These #MON can"
	line "learn unique moves"
	cont "once their entire"
	cont "line has been"
	cont "carefully studied"
	cont "(part 1 of 4):"

	para "BULBASAUR,"
	line "CHARMANDER,"
	cont "SQUIRTLE, SPEAROW,"
	cont "NIDORAN♀,"
	cont "NIDORAN♂, ZUBAT,"
	cont "ODDISH, PARAS,"

	para "PSYDUCK, POLIWAG,"
	line "ABRA, MACHOP,"
	cont "BELLSPROUT,"
	cont "TENTACOOL,"
	cont "GEODUDE, PONYTA,"
	cont "MAGNEMITE,"

	para "FARFETCH'D, DODUO,"
	line "SEEL, ONIX,"
	cont "DROWZEE."
	done

SafariZoneMainOfficeEvolutionFieldNotes2Text:
	text "<PLAYER> skimmed"
	line "the evolution line"
	cont "field notes:"

	para "These #MON can"
	line "learn unique moves"
	cont "once their entire"
	cont "line has been"
	cont "carefully studied"
	cont "(part 2 of 4):"

	para "KRABBY, VOLTORB,"
	line "EXEGGCUTE, CUBONE,"
	cont "LICKITUNG,"
	cont "CHANSEY, TANGELA,"
	cont "KANGASKHAN,"
	cont "HORSEA, GOLDEEN,"

	para "STARYU, MR.MIME,"
	line "SCYTHER, PINSIR,"
	cont "TAUROS, MAGIKARP,"
	cont "LAPRAS, EEVEE,"
	cont "PORYGON, OMANYTE,"
	cont "KABUTO,"

	para "AERODACTYL,"
	line "SNORLAX, DRATINI."
	done

SafariZoneMainOfficeEvolutionFieldNotes3Text:
	text "<PLAYER> skimmed"
	line "the evolution line"
	cont "field notes:"

	para "These #MON can"
	line "learn unique moves"
	cont "once their entire"
	cont "line has been"
	cont "carefully studied"
	cont "(part 3 of 4):"

	para "CHIKORITA,"
	line "CYNDAQUIL,"
	cont "TOTODILE, SENTRET,"
	cont "HOOTHOOT, LEDYBA,"
	cont "SPINARAK,"

	para "CHINCHOU, PICHU,"
	line "CLEFFA, IGGLYBUFF,"
	cont "TOGEPI, NATU,"
	cont "MAREEP, MARILL,"
	cont "SUDOWOODO, HOPPIP,"
	cont "AIPOM, SUNKERN,"

	para "YANMA, WOOPER,"
	line "MURKROW."
	done

SafariZoneMainOfficeEvolutionFieldNotes4Text:
	text "<PLAYER> skimmed"
	line "the evolution line"
	cont "field notes:"

	para "These #MON can"
	line "learn unique moves"
	cont "once their entire"
	cont "line has been"
	cont "carefully studied"
	cont "(part 4 of 4):"

	para "MISDREAVUS,"
	line "WOBBUFFET, PINECO,"
	cont "DUNSPARCE,"
	cont "SNUBBULL,"
	cont "QWILFISH,"
	cont "HERACROSS,"

	para "SNEASEL,"
	line "TEDDIURSA, SWINUB,"
	cont "REMORAID,"
	cont "DELIBIRD, MANTINE,"
	cont "SKARMORY, PHANPY,"
	cont "STANTLER, TYROGUE,"

	para "SMOOCHUM, ELEKID,"
	line "MAGBY, MILTANK,"
	cont "LARVITAR."
	done

SafariZoneMainOffice_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 2
	warp_event  3,  7, FUCHSIA_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, SafariZoneMainOfficeEvolutionFieldNotes1
	bg_event  7,  1, BGEVENT_READ, SafariZoneMainOfficeEvolutionFieldNotes2
	bg_event  8,  1, BGEVENT_READ, SafariZoneMainOfficeEvolutionFieldNotes3
	bg_event  9,  1, BGEVENT_READ, SafariZoneMainOfficeEvolutionFieldNotes4

	def_object_events
	object_event  4,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneMainOfficeMoveTutorScript, -1
	object_event  9,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneMainOfficeOakAideScript, -1
