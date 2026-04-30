	object_const_def
	const CERULEANBASE2_GRUNTM_4
	const CERULEANBASE2_GRUNTM_5
	const CERULEANBASE2_GRUNTM_7
	const CERULEANBASE2_GRUNTM_9
	const CERULEANBASE2_SCIENTIST_1
	const CERULEANBASE2_SCIENTIST_2
	const CERULEANBASE2_RIVAL
	const CERULEANBASE2_RED

CeruleanBase2_MapScripts:
	def_scene_scripts
	scene_script CeruleanBase2RivalScene, SCENE_CERULEANBASE2_RIVAL
	scene_script CeruleanBase2Noop,       SCENE_CERULEANBASE2_NOOP

	def_callbacks

CeruleanBase2RivalScene:
	sdefer CeruleanBase2RivalScript
	end

CeruleanBase2Noop:
	end


TrainerGruntM4:
	trainer GRUNTM, GRUNTM_4, EVENT_BEAT_ROCKET_GRUNTM_4, GruntM4SeenText, GruntM4BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM4AfterBattleText
	waitbutton
	closetext
	end

GruntM4SeenText:
	text "You're persistent."
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
	text "You have no idea"
	line "what you're"
	cont "walking into."
	done

GruntM5BeatenText:
	text "How…?!"
	done

GruntM5AfterBattleText:
	text "Whatever. The"
	line "profits we'll make"
	cont "will outweigh any"
	cont "losses we take"
	cont "now."
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
	text "Back off."

	para "I'm in the middle"
	line "of something."
	done

GruntM7BeatenText:
	text "Tch…"
	done

GruntM7AfterBattleText:
	text "It doesn't matter"
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
	text "You're not getting"
	line "past me."
	done

GruntM9BeatenText:
	text "How strong"
	line "are you…?!"
	done

GruntM9AfterBattleText:
	text "I don't get it."
	line "How did you beat"
	cont "everyone?"

	para "Keep going then."
	line "See how far"
	cont "it gets you."
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
	text "CERULEAN CAVE had"
	line "a cave-in three"
	cont "years ago."

	para "I was on the team"
	line "that found the new"
	cont "path inside."
	done

ScientistMarcBeatenText:
	text "What a brat!"
	done

ScientistMarcAfterBattleText:
	text "It took a lot of"
	line "GRUNT work to get"
	cont "all the materials"
	cont "and equipment"
	cont "inside."

	para "Worth it though."
	line "No one from the"
	cont "#MON LEAGUE or"
	cont "the RANGERs ever"
	cont "found us."
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
	text "I planned how to"
	line "seize a shipment"
	cont "of a MASTER BALL"
	cont "to the GOLDENROD"
	cont "RADIO TOWER."
	done

ScientistRichBeatenText:
	text "Remarkable…"
	done

ScientistRichAfterBattleText:
	text "The whisper was"
	line "that the #MON"
	cont "cloned in the"
	cont "CINNABAR LAB was"
	cont "captured and then"
	cont "released."

	para "It's rumored to be"
	line "the most powerful"
	cont "#MON ever seen."

	para "And now, finally,"
	line "that power is"
	cont "controlled by TEAM"
	cont "ROCKET."
	done

CeruleanBase2RivalScript:
	appear CERULEANBASE2_RIVAL
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, CERULEANBASE2_RIVAL, 30
	pause 15
	opentext
	writetext CeruleanBase2RivalText
	waitbutton
	closetext
	appear CERULEANBASE2_RED
	applymovement CERULEANBASE2_RED, CeruleanBase2RedApproachMovement
	turnobject PLAYER, RIGHT
	turnobject CERULEANBASE2_RIVAL, RIGHT
	showemote EMOTE_SHOCK, CERULEANBASE2_RED, 30
	pause 30
	showemote EMOTE_SHOCK, PLAYER, 30
	pause 30
	applymovement CERULEANBASE2_RED, CeruleanBase2RedDepartMovement
	disappear CERULEANBASE2_RED
	opentext
	writetext CeruleanBase2RivalText2
	waitbutton
	closetext
	applymovement CERULEANBASE2_RIVAL, CeruleanBase2RivalDepartMovement
	disappear CERULEANBASE2_RIVAL
	setscene SCENE_CERULEANBASE2_NOOP
	playmapmusic
	end

CeruleanBase2RedApproachMovement:
	step LEFT
	step LEFT
	step_end

CeruleanBase2RedDepartMovement:
	step RIGHT
	step RIGHT
	step_end

CeruleanBase2RivalDepartMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

CeruleanBase2RivalText:
	text "<PLAY_G>."

	para "You actually did"
	line "it!"

	para "I heard the battle"
	line "from up here and"
	cont "knew it was you."

	para "The grunts already"
	line "cleared out."
	done

CeruleanBase2RivalText2:
	text "Who was that?"

	para "No matter. Let's"
	line "get out of this"
	cont "place."

	para "There's a teleport"
	line "pad nearby."
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
	object_event  9,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN,  0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerGruntM4, EVENT_CLEARED_CERULEAN_CAVE
	object_event 21, 25, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW,0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM5, EVENT_CLEARED_CERULEAN_CAVE
	object_event  5, 19, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerGruntM7, EVENT_CLEARED_CERULEAN_CAVE
	object_event 17, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGruntM9, EVENT_CLEARED_CERULEAN_CAVE
	object_event  8, 26, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerScientistMarc, EVENT_CLEARED_CERULEAN_CAVE
	object_event 12,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerScientistRich, EVENT_CLEARED_CERULEAN_CAVE
	object_event  3,  3, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DISCOVERED_CERULEAN_CAVE
	object_event  9,  2, SPRITE_RED, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DISCOVERED_CERULEAN_CAVE
