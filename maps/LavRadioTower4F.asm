	object_const_def
	const LAVRADIOTOWER4F_GRUNT
	const LAVRADIOTOWER4F_GRUNT_POKEFAN_M
	const LAVRADIOTOWER4F_GRUNT_CLERK
	const LAVRADIOTOWER4F_GRUNT_COOLTRAINER_F
	const LAVRADIOTOWER4F_GRUNT_TEACHER
	const LAVRADIOTOWER4F_SUPER_NERD

LavRadioTower4F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGruntM35:
	trainer GRUNTM, GRUNTM_35, EVENT_BEAT_ROCKET_GRUNTM_35, GruntM35SeenText, GruntM35BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM35AfterBattleText
	waitbutton
	closetext
	end

GruntM35SeenText:
	text "You shouldn't"
	line "have made it"
	cont "this far, kid."

	para "I'm not going"
	line "to pretend I'm"
	cont "anyone but me."
	done

GruntM35BeatenText:
	text "Unbelievable…"
	done

GruntM35AfterBattleText:
	text "Go ahead. Go up."

	para "It won't matter."
	line "Every important"
	cont "route in KANTO"
	cont "is blocked."
	done

TrainerGruntM36:
	trainer GRUNTM, GRUNTM_36, EVENT_BEAT_ROCKET_GRUNTM_36, GruntM36SeenText, GruntM36BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM36AfterBattleText
	waitbutton
	closetext
	end

GruntM36SeenText:
	text "I'm here for an"
	line "interview about"
	cont "all my #MON!"

	para "HA!"

	para "As if!"
	done

GruntM36BeatenText:
	text "Impossible!"
	done

GruntM36AfterBattleText:
	text "Fine. Look around."
	line "It doesn't matter"
	cont "what you do here."

	para "Little brat…"
	done

TrainerGruntM37:
	trainer GRUNTM, GRUNTM_37, EVENT_BEAT_ROCKET_GRUNTM_37, GruntM37SeenText, GruntM37BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM37AfterBattleText
	waitbutton
	closetext
	end

GruntM37SeenText:
	text "You stopped the"
	line "WILD HUNT outside"
	cont "of ECRUTEAK."

	para "Imagine that."
	line "But bigger."
	cont "Much bigger."
	cont "A whole city."
	done

GruntM37BeatenText:
	text "What a wretch."
	done

GruntM37AfterBattleText:
	text "Something powerful"
	line "lives in that cave"
	cont "north of CERULEAN"
	cont "CITY."

	para "When it moves,"

	para "the entire region"
	line "won't know what"
	cont "hit it."
	done

TrainerGruntF12:
	trainer GRUNTF, GRUNTF_12, EVENT_BEAT_ROCKET_GRUNTF_12, GruntF12SeenText, GruntF12BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntF12AfterBattleText
	waitbutton
	closetext
	end

GruntF12SeenText:
	text "You've got nerve"
	line "coming up here."

	para "Let me show you"
	line "how that ends."
	done

GruntF12BeatenText:
	text "Hmph!"
	done

GruntF12AfterBattleText:
	text "You think this"
	line "changes anything?"

	cont "No power means"
	cont "no broadcast."
	cont "No broadcast"
	cont "means no rescue."
	done

TrainerGruntF13:
	trainer GRUNTF, GRUNTF_13, EVENT_BEAT_ROCKET_GRUNTF_13, GruntF13SeenText, GruntF13BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntF13AfterBattleText
	waitbutton
	closetext
	end

GruntF13SeenText:
	text "Stop right there!"

	para "You're not getting"
	line "past this floor."
	done

GruntF13BeatenText:
	text "How…?!"
	done

GruntF13AfterBattleText:
	text "PROTON won't be"
	line "as easy as me."

	para "He's been waiting"
	line "for a trainer"
	cont "worth fighting."

	para "You might just"
	line "qualify."
	done

LavRadioTower4FTechScript:
	faceplayer
	opentext
	checkevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	iftrue .Cleared
	writetext LavRadioTower4FTechText
	waitbutton
	closetext
	end

.Cleared:
	writetext LavRadioTower4FTechTextAfter
	waitbutton
	closetext
	end

LavRadioTower4FTechText:
	text "I've been tracking"
	line "the signal from"
	cont "this floor."

	para "Please get to the"
	line "DIRECTOR before"
	cont "anything happens"
	cont "to him."
	done

LavRadioTower4FTechTextAfter:
	text "We still need the"
	line "POWER PLANT back"
	cont "online,"

	para "but at least the"
	line "DIRECTOR is safe."
	cont "Thank you."
	done

LavRadioTower4FDJScript:
	faceplayer
	opentext
	checkevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	iftrue .Cleared
	writetext LavRadioTower4FDJText
	waitbutton
	closetext
	end

.Cleared:
	writetext LavRadioTower4FDJTextAfter
	waitbutton
	closetext
	end

LavRadioTower4FDJText:
	text "I really just want"
	line "to make music."

	para "Why is TEAM ROCKET"
	line "stopping me?"
	done

LavRadioTower4FDJTextAfter:
	text "Thanks for getting"
	line "rid of those goons"
	cont "and clearing the"
	cont "tower."

	para "We can now resume"
	line "our regular broad-"
	cont "casts."
	done

LavRadioTower4FProductionSign:
	jumptext LavRadioTower4FProductionSignText

LavRadioTower4FProductionSignText:
	text "4F PRODUCTION"
	done

LavRadioTower4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, LAV_RADIO_TOWER_5F, 1
	warp_event 15,  0, LAV_RADIO_TOWER_3F, 2

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, LavRadioTower4FProductionSign

	def_object_events
	object_event 13,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM35, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  5,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerGruntM36, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  9,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM37, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 14,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerGruntF12, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  4,  2, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntF13, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  2,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavRadioTower4FTechScript, -1
	object_event 17,  5, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavRadioTower4FDJScript, -1
