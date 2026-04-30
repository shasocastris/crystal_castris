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

	para "But there are more"
	line "of us further in."
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
	text "Hey!"

	para "This area is off"
	line "limits."
	done

GruntM8BeatenText:
	text "You're strong…"
	done

GruntM8AfterBattleText:
	text "Fine. Keep going."

	para "There's plenty"
	line "more of us between"
	cont "here and the boss."
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
	text "Nobody told me a"
	line "trainer got this"
	cont "far."

	para "Doesn't matter."
	line "You're done here."
	done

GruntF4BeatenText:
	text "Unbelievable…"
	done

GruntF4AfterBattleText:
	text "Go ahead."

	para "You'll hit tougher"
	line "grunts below, and"
	cont "ARCHER past them."
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
	object_event  2, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerGruntM8, EVENT_CLEARED_CERULEAN_CAVE
	object_event 20, 12, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerGruntM10, EVENT_CLEARED_CERULEAN_CAVE
	object_event  8,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGruntF2, EVENT_CLEARED_CERULEAN_CAVE
	object_event  9, 22, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerGruntF4, EVENT_CLEARED_CERULEAN_CAVE
