	object_const_def
	const KURTSHOUSE_KURT1
	const KURTSHOUSE_TWIN1
	const KURTSHOUSE_SLOWPOKE
	const KURTSHOUSE_KURT2
	const KURTSHOUSE_TWIN2
	const KURTSHOUSE_DOLL

KurtsHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, KurtsHouseKurtCallback

KurtsHouseKurtCallback:
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iffalse .Done
	checkevent EVENT_FOREST_IS_RESTLESS
	iftrue .Done
	checkflag ENGINE_KURT_MAKING_BALLS
	iftrue .MakingBalls
	disappear KURTSHOUSE_KURT2
	appear KURTSHOUSE_KURT1
	disappear KURTSHOUSE_TWIN2
	appear KURTSHOUSE_TWIN1
	endcallback

.MakingBalls:
	disappear KURTSHOUSE_KURT1
	appear KURTSHOUSE_KURT2
	disappear KURTSHOUSE_TWIN1
	appear KURTSHOUSE_TWIN2
.Done:
	endcallback

Kurt1:
	faceplayer
	opentext
	checkevent EVENT_KURT_GAVE_YOU_EXP_SHARE
	iftrue .GotExpShare
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .ClearedSlowpokeWell
	writetext KurtsHouseKurtMakingBallsMustWaitText
	waitbutton
	closetext
	special FadeOutMusic
	setevent EVENT_AZALEA_TOWN_SLOWPOKETAIL_ROCKET
	readvar VAR_FACING
	ifequal UP, .RunAround
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtExitHouseMovement
	playsound SFX_EXIT_BUILDING
	disappear KURTSHOUSE_KURT1
	waitsfx
	special RestartMapMusic
	end

.RunAround:
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtGoAroundPlayerThenExitHouseMovement
	playsound SFX_EXIT_BUILDING
	disappear KURTSHOUSE_KURT1
	waitsfx
	special RestartMapMusic
	end

.ClearedSlowpokeWell:
	writetext KurtsHouseKurtHonoredToMakeBallsText
	promptbutton
	verbosegiveitem EXP_SHARE
	iffalse .NoRoomForBall
	setevent EVENT_KURT_GAVE_YOU_EXP_SHARE
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	end

.GotExpShare:
	checkevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	iftrue .CanGiveGSBallToKurt
.NoGSBall:
	writetext AzaleaTownKurtMoveTutorText
	waitbutton
	checkitem POKE_DOLL
	iffalse .NoPokeDoll
	writetext AzaleaTownKurtMoveTutorText2
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .PayDay
	ifequal 2, .Teleport
	ifequal 3, .Softboiled
	sjump .Incompatible

.NoPokeDoll:
	writetext AzaleaTownKurtMoveTutorNoDoll
	waitbutton
	closetext
	end

.PayDay:
	loadmoveindex PAY_DAY
	writetext AzaleaTownKurtMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.Teleport:
	loadmoveindex TELEPORT
	writetext AzaleaTownKurtMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.Softboiled:
	loadmoveindex SOFTBOILED
	writetext AzaleaTownKurtMoveText
	special MoveTutor
	ifequal FALSE, .TeachMove
	sjump .Incompatible

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "PAY DAY@"
	db "TELEPORT@"
	db "SOFTBOILED@"
	db "CANCEL@"

.TeachMove:
	writetext AzaleaTownKurtPayment
	takeitem POKE_DOLL
	waitbutton
	writetext AzaleaTownTutorMoveTaught
	waitbutton
	closetext
	end

.Incompatible:
	writetext AzaleaTownComeBackText
	waitbutton
	closetext
	end

.NoRoomForBall:
	closetext
	end

.CanGiveGSBallToKurt:
	checkevent EVENT_GAVE_GS_BALL_TO_KURT
	iftrue .GaveGSBallToKurt
	checkitem GS_BALL
	iffalse .NoGSBall
	writetext KurtsHouseKurtWhatIsThatText
	waitbutton
	closetext
	setevent EVENT_GAVE_GS_BALL_TO_KURT
	takeitem GS_BALL
	setflag ENGINE_KURT_MAKING_BALLS
	end

.GaveGSBallToKurt:
	checkflag ENGINE_KURT_MAKING_BALLS
	iffalse .NotMakingBalls
	writetext KurtsHouseKurtImCheckingItNowText
	waitbutton
	writetext KurtsHouseKurtAhHaISeeText
	waitbutton
	closetext
	end

.NotMakingBalls:
	writetext KurtsHouseKurtThisBallStartedToShakeText
	waitbutton
	closetext
	setevent EVENT_FOREST_IS_RESTLESS
	clearevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	clearevent EVENT_GAVE_GS_BALL_TO_KURT
	special FadeOutMusic
	pause 20
	showemote EMOTE_SHOCK, KURTSHOUSE_KURT1, 30
	readvar VAR_FACING
	ifequal UP, .GSBallRunAround
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtExitHouseMovement
	sjump .KurtHasLeftTheBuilding

.GSBallRunAround:
	turnobject PLAYER, DOWN
	playsound SFX_FLY
	applymovement KURTSHOUSE_KURT1, KurtsHouseKurtGoAroundPlayerThenExitHouseMovement
.KurtHasLeftTheBuilding:
	playsound SFX_EXIT_BUILDING
	disappear KURTSHOUSE_KURT1
	clearevent EVENT_AZALEA_TOWN_KURT
	waitsfx
	special RestartMapMusic
	setmapscene AZALEA_TOWN, SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL
	end

Kurt2:
	faceplayer
	opentext
	checkevent EVENT_GAVE_GS_BALL_TO_KURT
	iftrue KurtScript_ImCheckingItNow

KurtScript_ImCheckingItNow:
	writetext KurtsHouseKurtImCheckingItNowText
	waitbutton
	turnobject KURTSHOUSE_KURT2, UP
	writetext KurtsHouseKurtAhHaISeeText
	waitbutton
	closetext
	end

KurtsGranddaughter1:
	faceplayer
	checkevent EVENT_FOREST_IS_RESTLESS
	iftrue .Excited
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue .Dad
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .SlowpokeBack
	checkevent EVENT_AZALEA_TOWN_SLOWPOKETAIL_ROCKET
	iftrue .Lonely
	opentext
	writetext KurtsGranddaughterSlowpokeGoneText
	waitbutton
	closetext
	end

.Excited:
	opentext
	writetext KurtsGranddaughterExcitedText
	waitbutton
	closetext
	end

.SlowpokeBack:
	opentext
	writetext KurtsGranddaughterSellApricornsText
	waitbutton
	closetext
	end

.Lonely:
	opentext
	writetext KurtsGranddaughterLonelyText
	waitbutton
	closetext
	end

.Dad:
	opentext
	writetext KurtsGranddaughterDadText
	waitbutton
	closetext
	end

KurtsGranddaughter2:
	faceplayer
	opentext
	writetext KurtsGranddaughterGSBallText
	waitbutton
	closetext
	turnobject KURTSHOUSE_TWIN2, RIGHT
	end

KurtsHouseSlowpoke:
	faceplayer
	opentext
	writetext KurtsHouseSlowpokeText
	cry SLOWPOKE
	waitbutton
	callasm .Slowpoke
	special ShowPokedexEntry
	closetext
	end

.Slowpoke
	ld hl, SLOWPOKE
	call GetPokemonIDFromIndex
	ld [wScriptVar], a
	ret

KurtsHouseOakPhoto:
	jumptext KurtsHouseOakPhotoText

KurtsHouseCelebiStatue:
	jumptext KurtsHouseCelebiStatueText

KurtsHouseBookshelf:
	jumpstd DifficultBookshelfScript

KurtsHouseRadio:
	jumpstd Radio2Script

KurtsHouseKurtExitHouseMovement:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

KurtsHouseKurtGoAroundPlayerThenExitHouseMovement:
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

ClefairyDollScript:
	jumptext ClefairyDollText

KurtsHouseKurtMakingBallsMustWaitText:
	text "Hm? Who are you?"

	para "<PLAYER>, eh? You"
	line "want me to make"
	cont "some BALLS?"

	para "You can just buy"
	line "them at the AZALEA"
	cont "MART."

	para "Do you know TEAM"
	line "ROCKET? Ah, don't"

	para "worry. I'll tell"
	line "you anyhow."

	para "TEAM ROCKET's an"
	line "evil gang that"

	para "uses #MON for"
	line "their dirty work."

	para "They're supposed"
	line "to have disbanded"
	cont "three years ago."

	para "Anyway, they're at"
	line "the WELL, cutting"

	para "off SLOWPOKETAILS"
	line "for sale!"

	para "So I'm going to"
	line "go give them a"
	cont "lesson in pain!"

	para "Hang on, SLOWPOKE!"
	line "Old KURT is on his"
	cont "way!"
	done

KurtsHouseKurtHonoredToMakeBallsText:
	text "KURT: Hi, <PLAYER>!"

	para "You handled your-"
	line "self like a real"
	cont "hero at the WELL."

	para "I like your style!"

	para "Make sure to check"
	line "out the AZALEA"
	cont "MART to buy the"
	cont "# BALLS that"

	para "Maizie and I make."

	para "And when you have"
	line "some extra time, I"

	para "want to teach your"
	line "#MON some new"
	cont "moves."

	para "Until then, here's"
	line "a gift."
	done

KurtsHouseKurtWhatIsThatText:
	text "Wh-what is that?"

	para "I've never seen"
	line "one before."

	para "It looks a lot"
	line "like a # BALL,"

	para "but it appears to"
	line "be something else."

	para "Let me check it"
	line "for you."
	done

KurtsHouseKurtImCheckingItNowText:
	text "I'm checking it"
	line "now."
	done

KurtsHouseKurtAhHaISeeText:
	text "Ah-ha! I see!"
	line "So…"
	done

KurtsHouseKurtThisBallStartedToShakeText:
	text "<PLAYER>!"

	para "This BALL started"
	line "to shake while I"
	cont "was checking it."

	para "There must be"
	line "something to this!"
	done

KurtsGranddaughterSlowpokeGoneText:
	text "The SLOWPOKE are"
	line "gone… Were they"

	para "taken away by bad"
	line "people?"
	done

KurtsGranddaughterLonelyText:
	text "Grandpa's gone…"
	line "I'm so lonely…"

	para "Even the SLOWPOKE"
	line "my dad gave me has"
	cont "disappeared…"
	done

KurtsGranddaughterExcitedText:
	text "I've never seen my"
	line "Grandpa so excited"

	para "about any other"
	line "# BALL!"
	done

KurtsGranddaughterSellApricornsText:
	text "If you ever find"
	line "APRICORNS, you can"
	cont "sell them at any"
	cont "# MART."

	para "They get shipped"
	line "here so Grandpa"
	cont "and I can make our"
	cont "specialty BALLS."
	done

KurtsGranddaughterDadText:
	text "Dad works at SILPH"
	line "where he studies"
	cont "# BALLS."

	para "I have to stay"
	line "home with Grandpa"
	cont "and SLOWPOKE."
	done

KurtsGranddaughterGSBallText:
	text "Grandpa's checking"
	line "a BALL right now."

	para "So I'm waiting"
	line "till he's done."
	done

KurtsHouseSlowpokeText:
	text "SLOWPOKE: …"
	line "Yawn?"
	done

KurtsHouseOakPhotoText:
	text "…A young PROF."
	line "OAK?"
	done

KurtsHouseCelebiStatueText:
	text "It's a statue of"
	line "the forest's pro-"
	cont "tector."
	done

AzaleaTownKurtMoveTutorText:
	text "KURT: I can teach"
	line "your #MON new"
	cont "moves."

	para "These were well"
	line "known when I was"
	cont "younger, but are"
	cont "more obscure now."
	done

AzaleaTownKurtMoveTutorText2:
	text "What technique"
	line "would you like to"
	cont "have one of your"
	cont "#MON learn?"
	done

AzaleaTownKurtPayment:
	text "<PLAYER> gave Kurt"
	line "the #DOLL."
	done

AzaleaTownKurtMoveTutorNoDoll:
	text "Ah, but before I"
	line "do, could you get"

	para "a #DOLL for"
	line "Maizie?"

	para "She collects the"
	line "ones they sell in"
	cont "GOLDENROD CITY."
	done

ClefairyDollText:
	text "One of Maizie's"
	line "many #DOLLs."
	done

AzaleaTownTutorMoveTaught:
	text "You'll definitely"
	line "go far as a"
	cont "#MON trainer."
	done

AzaleaTownComeBackText:
	text "Come back when"
	line "you're ready."
	done

AzaleaTownKurtMoveText:
	text_start
	done

KurtsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 4
	warp_event  4,  7, AZALEA_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, KurtsHouseRadio
	bg_event  8,  0, BGEVENT_READ, KurtsHouseOakPhoto
	bg_event  9,  0, BGEVENT_READ, KurtsHouseOakPhoto
	bg_event  5,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  2,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  3,  1, BGEVENT_READ, KurtsHouseBookshelf
	bg_event  4,  1, BGEVENT_READ, KurtsHouseCelebiStatue

	def_object_events
	object_event  3,  2, SPRITE_KURT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Kurt1, EVENT_KURTS_HOUSE_KURT_1
	object_event  5,  3, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtsGranddaughter1, EVENT_KURTS_HOUSE_GRANDDAUGHTER_1
	object_event  6,  3, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtsHouseSlowpoke, EVENT_KURTS_HOUSE_SLOWPOKE
	object_event 14,  3, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Kurt2, EVENT_KURTS_HOUSE_KURT_2
	object_event 11,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, KurtsGranddaughter2, EVENT_KURTS_HOUSE_GRANDDAUGHTER_2
	object_event  7,  4, SPRITE_CLEFAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ClefairyDollScript, EVENT_KURTS_HOUSE_SLOWPOKE
