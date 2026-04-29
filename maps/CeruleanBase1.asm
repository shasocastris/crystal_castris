	object_const_def
	const CERULEANBASE1_GRUNTM_6
	const CERULEANBASE1_GRUNTM_8
	const CERULEANBASE1_GRUNTM_10
	const CERULEANBASE1_GRUNTF_2
	const CERULEANBASE1_GRUNTF_4

CeruleanBase1_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGruntM6:
	trainer GRUNTM, GRUNTM_6, EVENT_BEAT_ROCKET_GRUNTM_6, GruntM6SeenText, GruntM6BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM6AfterBattleText
	waitbutton
	closetext
	end

GruntM6SeenText:
	text "You shouldn't be"
	line "in here."

	para "Nobody gets past"
	line "this point."
	done

GruntM6BeatenText:
	text "That's not…"
	line "possible…"
	done

GruntM6AfterBattleText:
	text "You beat me."
	line "Fine."

	para "But there are"
	line "more of us deeper"
	cont "in. A lot more."
	done

TrainerGruntM8:
	trainer GRUNTM, GRUNTM_8, EVENT_BEAT_ROCKET_GRUNTM_8, GruntM8SeenText, GruntM8BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM8AfterBattleText
	waitbutton
	closetext
	end

GruntM8SeenText:
	text "You found me."

	para "Most people run"
	line "from the dark."
	done

GruntM8BeatenText:
	text "Even the shadows"
	line "weren't enough…"
	done

GruntM8AfterBattleText:
	text "You have no idea"
	line "what's waiting"
	cont "for you in there."

	para "This CAVE is its"
	line "home. Not ours."
	cont "Not yours."
	done

TrainerGruntM10:
	trainer GRUNTM, GRUNTM_10, EVENT_BEAT_ROCKET_GRUNTM_10, GruntM10SeenText, GruntM10BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM10AfterBattleText
	waitbutton
	closetext
	end

GruntM10SeenText:
	text "No one authorized"
	line "to enter."

	para "That includes you."
	done

GruntM10BeatenText:
	text "Argh…!"
	done

GruntM10AfterBattleText:
	text "You're stronger"
	line "than you look."

	para "It won't matter."
	line "What we're doing"
	cont "here can't be"
	cont "undone by one"
	cont "trainer."
	done

TrainerGruntF2:
	trainer GRUNTF, GRUNTF_2, EVENT_BEAT_ROCKET_GRUNTF_2, GruntF2SeenText, GruntF2BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntF2AfterBattleText
	waitbutton
	closetext
	end

GruntF2SeenText:
	text "This area is"
	line "restricted."

	para "Turn back."
	done

GruntF2BeatenText:
	text "How did you get"
	line "this far…?"
	done

GruntF2AfterBattleText:
	text "You saw what"
	line "happened in JOHTO."
	cont "The wild #MON."

	para "That was just the"
	line "beginning."

	para "What's in this"
	line "CAVE will make"
	cont "that look like"
	cont "nothing."
	done

TrainerGruntF4:
	trainer GRUNTF, GRUNTF_4, EVENT_BEAT_ROCKET_GRUNTF_4, GruntF4SeenText, GruntF4BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntF4AfterBattleText
	waitbutton
	closetext
	end

GruntF4SeenText:
	text "You actually got"
	line "through the whole"
	cont "floor?"

	para "I'm the last one"
	line "before the stairs."
	cont "You're not passing."
	done

GruntF4BeatenText:
	text "I don't believe"
	line "this…"
	done

GruntF4AfterBattleText:
	text "Go then."

	para "The ones below are"
	line "stronger than me."

	para "And ARCHER is"
	line "below them."

	para "You won't make it"
	line "to whatever you"
	cont "came here for."
	done

CeruleanBase1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 24, CERULEAN_CAVE, 1
	warp_event 19,  2, CERULEAN_BASE_2, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 14, 14, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerGruntM6, EVENT_CLEARED_CERULEAN_CAVE
	object_event  2, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM8, EVENT_CLEARED_CERULEAN_CAVE
	object_event 20, 12, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM10, EVENT_CLEARED_CERULEAN_CAVE
	object_event  8,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGruntF2, EVENT_CLEARED_CERULEAN_CAVE
	object_event  9, 22, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerGruntF4, EVENT_CLEARED_CERULEAN_CAVE
