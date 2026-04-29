	object_const_def
	const CERULEANBASE2_GRUNTM_4
	const CERULEANBASE2_GRUNTM_5
	const CERULEANBASE2_GRUNTM_7
	const CERULEANBASE2_GRUNTM_9

CeruleanBase2_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGruntM4:
	trainer GRUNTM, GRUNTM_4, EVENT_BEAT_ROCKET_GRUNTM_4, GruntM4SeenText, GruntM4BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM4AfterBattleText
	waitbutton
	closetext
	end

GruntM4SeenText:
	text "You made it"
	line "this deep?"

	para "You're persistent."
	line "I'll give you that."
	done

GruntM4BeatenText:
	text "Unreal…"
	done

GruntM4AfterBattleText:
	text "We've been down"
	line "here for weeks."

	para "Setting everything"
	line "up. Making sure"
	cont "nothing could"
	cont "go wrong."

	para "And then you"
	line "walked in."
	done

TrainerGruntM5:
	trainer GRUNTM, GRUNTM_5, EVENT_BEAT_ROCKET_GRUNTM_5, GruntM5SeenText, GruntM5BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM5AfterBattleText
	waitbutton
	closetext
	end

GruntM5SeenText:
	text "Five #MON."

	para "You have no idea"
	line "what you're"
	cont "walking into."
	done

GruntM5BeatenText:
	text "All five…"
	done

GruntM5AfterBattleText:
	text "It's already"
	line "conditioned."

	para "The signal has"
	line "been running for"
	cont "three days."

	para "Whatever you came"
	line "here to stop…"
	cont "you're too late."
	done

TrainerGruntM7:
	trainer GRUNTM, GRUNTM_7, EVENT_BEAT_ROCKET_GRUNTM_7, GruntM7SeenText, GruntM7BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM7AfterBattleText
	waitbutton
	closetext
	end

GruntM7SeenText:
	text "The signal needs"
	line "amplification."

	para "That's what I'm"
	line "here for."
	cont "Stay back."
	done

GruntM7BeatenText:
	text "The frequency…!"
	done

GruntM7AfterBattleText:
	text "HYPNO can boost"
	line "the psychic range"
	cont "of any signal."

	para "We've been using"
	line "them to push the"
	cont "conditioning"
	cont "deeper into the"
	cont "CAVE."

	para "It doesn't matter"
	line "now. It's done."
	done

TrainerGruntM9:
	trainer GRUNTM, GRUNTM_9, EVENT_BEAT_ROCKET_GRUNTM_9, GruntM9SeenText, GruntM9BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM9AfterBattleText
	waitbutton
	closetext
	end

GruntM9SeenText:
	text "ARCHER is past"
	line "this point."

	para "You don't get to"
	line "walk in there."
	done

GruntM9BeatenText:
	text "How strong"
	line "are you…?!"
	done

GruntM9AfterBattleText:
	text "The most powerful"
	line "#MON in the"
	cont "world is in there."

	para "Captured. Conditioned."
	line "Ready to lead"
	cont "every #MON in"
	cont "this cave out into"
	cont "CERULEAN CITY."

	para "ARCHER is the"
	line "only thing between"
	cont "you and it."

	para "Good luck."
	done

TrainerScientistMarc:
	trainer SCIENTIST, MARC, EVENT_BEAT_SCIENTIST_MARC, ScientistMarcSeenText, ScientistMarcBeatenText, 0, .Script

.Script:
	opentext
	writetext ScientistMarcAfterBattleText
	waitbutton
	closetext
	end

ScientistMarcSeenText:
	text "Unauthorized"
	line "personnel."

	para "I can't allow any"
	line "disruption to the"
	cont "experiment."
	done

ScientistMarcBeatenText:
	text "The data…!"
	done

ScientistMarcAfterBattleText:
	text "Three weeks of"
	line "conditioning"
	cont "work."

	para "We mapped every"
	line "behavioral response"
	cont "to the signal."
	cont "Every threshold."

	para "You can stop us."
	line "You can't unlearn"
	cont "what we found."
	done

TrainerScientistRich:
	trainer SCIENTIST, RICH, EVENT_BEAT_SCIENTIST_RICH, ScientistRichSeenText, ScientistRichBeatenText, 0, .Script

.Script:
	opentext
	writetext ScientistRichAfterBattleText
	waitbutton
	closetext
	end

ScientistRichSeenText:
	text "The signal output"
	line "is at peak levels."

	para "I won't let you"
	line "near the equipment."
	done

ScientistRichBeatenText:
	text "Remarkable…"
	done

ScientistRichAfterBattleText:
	text "PORYGON2 was"
	line "designed to model"
	cont "broadcast patterns."

	para "We used it to"
	line "find the exact"
	cont "frequency that"
	cont "breaks down a"
	cont "#MON's resistance"
	cont "to suggestion."

	para "It works."
	line "Better than anyone"
	cont "expected."
	done

CeruleanBase2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27, 26, CERULEAN_BASE_1, 2
	warp_event  3,  2, CERULEAN_BASE_3, 1
	warp_event 13, 11, ROUTE_4, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 10, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN,  0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM4, EVENT_CLEARED_CERULEAN_CAVE
	object_event 21, 25, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW,0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM5, EVENT_CLEARED_CERULEAN_CAVE
	object_event  5, 19, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM7, EVENT_CLEARED_CERULEAN_CAVE
	object_event 17, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGruntM9, EVENT_CLEARED_CERULEAN_CAVE
	object_event  8, 26, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerScientistMarc, EVENT_CLEARED_CERULEAN_CAVE
	object_event 12,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerScientistRich, EVENT_CLEARED_CERULEAN_CAVE
