	object_const_def
	const ICEPATHB1F_BOULDER1
	const ICEPATHB1F_BOULDER2
	const ICEPATHB1F_BOULDER3
	const ICEPATHB1F_BOULDER4
	const ICEPATHB1F_POKE_BALL
	const ICEPATHB1F_SKIER
	const ICEPATHB1F_BOARDER
	const ICEPATHB1F_COOLTRAINER_M

IcePathB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, IcePathB1FSetUpStoneTableCallback

IcePathB1FSetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable ; check if any stones are sitting on a warp

.StoneTable:
	stonetable 3, ICEPATHB1F_BOULDER1, .Boulder1
	stonetable 4, ICEPATHB1F_BOULDER2, .Boulder2
	stonetable 5, ICEPATHB1F_BOULDER3, .Boulder3
	stonetable 6, ICEPATHB1F_BOULDER4, .Boulder4
	db -1 ; end

.Boulder1:
	disappear ICEPATHB1F_BOULDER1
	clearevent EVENT_BOULDER_IN_ICE_PATH_1A
	sjump .FinishBoulder

.Boulder2:
	disappear ICEPATHB1F_BOULDER2
	clearevent EVENT_BOULDER_IN_ICE_PATH_2A
	sjump .FinishBoulder

.Boulder3:
	disappear ICEPATHB1F_BOULDER3
	clearevent EVENT_BOULDER_IN_ICE_PATH_3A
	sjump .FinishBoulder

.Boulder4:
	disappear ICEPATHB1F_BOULDER4
	clearevent EVENT_BOULDER_IN_ICE_PATH_4A
; fallthrough
.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
	opentext
	writetext IcePathBoulderFellThroughText
	waitbutton
	closetext
	end

.BoulderFallsThrough:
	playsound SFX_STRENGTH
	earthquake 80
	end

TrainerSkierFlora:
	trainer SKIER, FLORA, EVENT_BEAT_SKIER_FLORA, SkierFloraSeenText, SkierFloraBeatenText, 0, .Script

.Script:
	opentext
	writetext SkierFloraAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderDamon:
	trainer BOARDER, DAMON, EVENT_BEAT_BOARDER_DAMON, BoarderDamonSeenText, BoarderDamonBeatenText, 0, .Script

.Script:
	opentext
	writetext BoarderDamonAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermLogan:
	trainer COOLTRAINERM, LOGAN, EVENT_BEAT_COOLTRAINERM_LOGAN, CooltrainermLoganSeenText, CooltrainermLoganBeatenText, 0, .Script

.Script:
	opentext
	writetext CooltrainermLoganAfterBattleText
	waitbutton
	closetext
	end

IcePathB1FBoulder:
	jumpstd StrengthBoulderScript

IcePathB1FIron:
	itemball IRON

IcePathB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_ICE_PATH_B1F_HIDDEN_MAX_POTION

SkierFloraSeenText:
	text "Oh! I wasn't"
	line "expecting company"
	cont "down here!"
	done

SkierFloraBeatenText:
	text "You're tougher"
	line "than the cold!"
	done

SkierFloraAfterBattleText:
	text "The ice puzzles"
	line "here are gnarly."

	para "You gotta push"
	line "those boulders"
	cont "just right."
	done

BoarderDamonSeenText:
	text "Almost to"
	line "BLACKTHORN!"

	para "One last battle"
	line "before the summit!"
	done

BoarderDamonBeatenText:
	text "Aw, bummer!"
	done

BoarderDamonAfterBattleText:
	text "I ride these caves"
	line "for the thrill."

	para "But BLACKTHORN's"
	line "GYM is the real"
	cont "challenge ahead."
	done

CooltrainermLoganSeenText:
	text "I train at the"
	line "DRAGON'S DEN,"

	para "but I come here"
	line "to harden my"
	cont "dragons."

	para "Ice is a dragon's"
	line "greatest foe!"
	done

CooltrainermLoganBeatenText:
	text "Even here, my"
	line "dragons fall…"
	done

CooltrainermLoganAfterBattleText:
	text "LANCE conquered"
	line "the ICE PATH with"
	cont "dragons alone."

	para "I have a long way"
	line "to go before I'm"
	cont "on his level."
	done

IcePathBoulderFellThroughText:
	text "The boulder fell"
	line "through."
	done

IcePathB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, ICE_PATH_1F, 3
	warp_event 17,  3, ICE_PATH_B2F_MAHOGANY_SIDE, 1
	warp_event 11,  2, ICE_PATH_B2F_MAHOGANY_SIDE, 3 ; hole
	warp_event  4,  7, ICE_PATH_B2F_MAHOGANY_SIDE, 4 ; hole
	warp_event  5, 12, ICE_PATH_B2F_MAHOGANY_SIDE, 5 ; hole
	warp_event 12, 13, ICE_PATH_B2F_MAHOGANY_SIDE, 6 ; hole
	warp_event  5, 25, ICE_PATH_1F, 4
	warp_event 11, 27, ICE_PATH_B2F_BLACKTHORN_SIDE, 1

	def_coord_events

	def_bg_events
	bg_event 17, 30, BGEVENT_ITEM, IcePathB1FHiddenMaxPotion

	def_object_events
	object_event 11,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcePathB1FBoulder, EVENT_BOULDER_IN_ICE_PATH_1
	object_event  7,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcePathB1FBoulder, EVENT_BOULDER_IN_ICE_PATH_2
	object_event  8,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcePathB1FBoulder, EVENT_BOULDER_IN_ICE_PATH_3
	object_event 17,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IcePathB1FBoulder, EVENT_BOULDER_IN_ICE_PATH_4
	object_event  5, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePathB1FIron, EVENT_ICE_PATH_B1F_IRON
	object_event  2,  1, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSkierFlora, -1
	object_event  9, 26, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBoarderDamon, -1
	object_event 11, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermLogan, -1