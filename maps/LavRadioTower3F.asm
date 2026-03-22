	object_const_def
	const LAVRADIOTOWER2F_GRUNT_NERD
	const LAVRADIOTOWER2F_GRUNT_GENT
	const LAVRADIOTOWER3F_GRUNT_PRESENTER
	const LAVRADIOTOWER3F_GRUNT_ROCKET
	const LAVRADIOTOWER3F_SUPER_NERD
	const LAVRADIOTOWER3F_GRAMPS

LavRadioTower3F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGruntM32:
	trainer GRUNTM, GRUNTM_32, EVENT_BEAT_ROCKET_GRUNTM_32, GruntM32SeenText, GruntM32BeatenText, 0, .Script
 
.Script:
	opentext
	writetext GruntM32AfterBattleText
	waitbutton
	closetext
	end
 
GruntM32SeenText:
	text "Hmm? Visitors"
	line "aren't permitted"
	cont "on this floor."
 
	para "This is a"
	line "restricted area."
	cont "Please leave."
	done
 
GruntM32BeatenText:
	text "How did you…!"
	done
 
GruntM32AfterBattleText:
	text "Fine. You got me."
 
	para "But someone else"
	line "will get you!"

	para "Nobody's coming"
	line "to help you here."
	done
 

TrainerGruntM33:
	trainer GRUNTM, GRUNTM_33, EVENT_BEAT_ROCKET_GRUNTM_33, GruntM33SeenText, GruntM33BeatenText, 0, .Script
 
.Script:
	opentext
	writetext GruntM33AfterBattleText
	waitbutton
	closetext
	end
 
GruntM33SeenText:
	text "I'm afraid you've"
	line "come at a bad"
	cont "time, young one."
 
	para "The tower is"
	line "closed today."
	cont "Do run along."
	done
 
GruntM33BeatenText:
	text "Blast it all!"
	done
 
GruntM33AfterBattleText:
	text "All that money on"
	line "this suit for"
	cont "nothing…"
 
	para "You won't find"
	line "any help at the"
	cont "POWER PLANT."
 
	para "We have people"
	line "there too. The"
	cont "whole region's"
	cont "grid is ours."
	done

TrainerGruntM34:
	trainer GRUNTM, GRUNTM_34, EVENT_BEAT_ROCKET_GRUNTM_34, GruntM34SeenText, GruntM34BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntM34AfterBattleText
	waitbutton
	closetext
	end

GruntM34SeenText:
	text "Hey! Big fan of"
	line "the programming"
	cont "here. Big fan."

	para "You should really"
	line "go back to 1F"
	cont "though. Really."
	done

GruntM34BeatenText:
	text "I went method"
	line "for this role!"
	done

GruntM34AfterBattleText:
	text "Three days I"
	line "studied radio."
	cont "For nothing."

	para "Even if you clear"
	line "this building, the"
	cont "real operation is"
	cont "already running."

	para "Something powerful"
	line "lives north of"
	cont "CERULEAN. When it"
	cont "moves… the whole"
	cont "city will know."
	done

TrainerGruntF11:
	trainer GRUNTF, GRUNTF_11, EVENT_BEAT_ROCKET_GRUNTF_11, GruntF11SeenText, GruntF11BeatenText, 0, .Script

.Script:
	opentext
	writetext GruntF11AfterBattleText
	waitbutton
	closetext
	end

GruntF11SeenText:
	text "You actually made"
	line "it up this far?"

	para "I'm impressed."
	line "But it ends here."
	done

GruntF11BeatenText:
	text "Not bad…"
	done

GruntF11AfterBattleText:
	text "Whatever."

	para "The SNORLAX on"
	line "ROUTE 11 isn't"
	cont "going anywhere."

	para "VERMILION is"
	line "completely cut"
	cont "off. Enjoy."
	done

LavRadioTower3FNerdScript:
	faceplayer
	opentext
	checkevent EVENT_LAV_TOWER_3F_GOT_MAX_ETHER
	iftrue .AlreadyGave
	writetext LavRadioTower3FNerdText
	promptbutton
	verbosegiveitem MAX_ETHER
	iffalse .NoRoom
	setevent EVENT_LAV_TOWER_3F_GOT_MAX_ETHER
	writetext LavRadioTower3FNerdGaveText
	waitbutton
	closetext
	end

.NoRoom:
	writetext LavRadioTower3FNerdNoRoomText
	waitbutton
.AlreadyGave:
	closetext
	end

LavRadioTower3FNerdText:
	text "A trainer!"
	line "Please, take this."

	para "I've been hiding"
	line "it since they"
	cont "showed up."

	para "You're going to"
	line "need it more"
	cont "than I do up"
	cont "there. Go. Please."
	done

LavRadioTower3FNerdGaveText:
	text "Come back safely."
	line "And bring the"
	cont "DIRECTOR with you."
	done

LavRadioTower3FNerdNoRoomText:
	text "Your bag is too"
	line "full. Come back"
	cont "when you have"
	cont "room. Hurry!"
	done

LavRadioTower3FGrampsScript:
	jumptextfaceplayer LavRadioTower3FGrampsText

LavRadioTower3FGrampsText:
	text "The men up top…"
	line "I heard them"
	cont "on the radio."

	para "They kept talking"
	line "about 'the CAVE'"
	cont "and 'when it"
	cont "starts moving.'"

	para "They called it"
	line "'phase two.'"
	cont "Something about"
	cont "CERULEAN CITY."

	para "I don't know what"
	line "lives in that"
	cont "cave, but those"
	cont "men were excited."

	para "That worries me"
	line "more than anything"
	done

LavRadioTower3FPersonnelSign:
	jumptext LavRadioTower3FPersonnelSignText

LavRadioTower3FPersonnelSignText:
	text "3F PERSONNEL"
	done

LavRadioTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, LAV_RADIO_TOWER_2F, 1
	warp_event 15,  0, LAV_RADIO_TOWER_4F, 2

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, LavRadioTower3FPersonnelSign

	def_object_events
	object_event  5,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerGruntM32, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 14,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM33, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 10,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerGruntM34, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  8,  3, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntF11, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  1,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavRadioTower3FNerdScript, -1
	object_event 18,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavRadioTower3FGrampsScript, -1
