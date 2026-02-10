	object_const_def
	const OKECOMCENTERADMINOFFICEMOBILE_NURSE
	const OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST
	const OKECOMCENTERADMINOFFICEMOBILE_GAMEBOY_KID
	const OKECOMCENTERADMINOFFICEMOBILE_LASS
	const OKECOMCENTERADMINOFFICEMOBILE_POKEFAN_F

GoldenrodPokecomCenter_MapScripts:
	def_scene_scripts
	scene_const SCENE_OKECOMCENTERADMINOFFICEMOBILE_GS_BALL

	def_callbacks

GoldenrodPokecomCenterNurseScript:
	jumpstd PokecenterNurseScript

GoldenrodPokecomCenter_GSBallSceneLeft:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .gsball
	end

.gsball
	checkevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	iftrue .cancel
	playsound SFX_EXIT_BUILDING
	moveobject OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST, 0, 7
	disappear OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST
	appear OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokecomCenterLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement
	turnobject PLAYER, UP
	opentext
	writetext GoldenrodPokecomCenterLinkReceptionistPleaseAcceptGSBallText
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext GoldenrodPokecomCenterLinkReceptionistPleaseDoComeAgainText
	waitbutton
	closetext
	applymovement OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokecomCenterLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement
	special RestartMapMusic
	disappear OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

GoldenrodPokecomCenter_GSBallSceneRight:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .gsball
	end

.gsball
	checkevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	iftrue .cancel
	playsound SFX_EXIT_BUILDING
	moveobject OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST, 0, 7
	disappear OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST
	appear OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST
	playmusic MUSIC_SHOW_ME_AROUND
	applymovement OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokecomCenterLinkReceptionistApproachPlayerAtRightDoorwayTileMovement
	turnobject PLAYER, UP
	opentext
	writetext GoldenrodPokecomCenterLinkReceptionistPleaseAcceptGSBallText
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext GoldenrodPokecomCenterLinkReceptionistPleaseDoComeAgainText
	waitbutton
	closetext
	applymovement OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST, GoldenrodPokecomCenterLinkReceptionistWalkToStairsFromRightDoorwayTileMovement
	special RestartMapMusic
	disappear OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

GoldenrodPokecomCenterGameboyKidScript:
	jumptextfaceplayer GoldenrodPokecomCenterGameboyKidText

GoldenrodPokecomCenterLassScript:
	jumptextfaceplayer GoldenrodPokecomCenterLassText

GoldenrodPokecomCenterPokefanF:
	faceplayer
	opentext
	writetext GoldenrodPokecomCenterPokefanFDoYouHaveEonMailText
	waitbutton
	writetext GoldenrodPokecomCenterAskGiveAwayAnEonMailText
	yesorno
	iffalse .NoEonMail
	takeitem EON_MAIL
	iffalse .NoEonMail
	writetext GoldenrodPokecomCenterPlayerGaveAwayTheEonMailText
	waitbutton
	writetext GoldenrodPokecomCenterPokefanFThisIsForYouText
	waitbutton
	verbosegiveitem REVIVE
	iffalse .NoRoom
	writetext GoldenrodPokecomCenterPokefanFDaughterWillBeDelightedText
	waitbutton
	closetext
	end

.NoEonMail:
	writetext GoldenrodPokecomCenterPokefanFTooBadText
	waitbutton
	closetext
	end

.NoRoom:
	giveitem EON_MAIL
	writetext GoldenrodPokecomCenterPokefanFAnotherTimeThenText
	waitbutton
	closetext
	end

GoldenrodPokecomCenterBlisseyScript:
	opentext
	writetext GoldenrodPokecomCenterBlisseyText
	cry BLISSEY
	waitbutton
	callasm .Blissey
	special ShowPokedexEntry
	closetext
	end

.Blissey
	ld hl, BLISSEY
	call GetPokemonIDFromIndex
	ld [wScriptVar], a
	ret

WonderTradeReceptionistScript:
	faceplayer
	opentext
	writetext WonderTradeGreetingText
	waitbutton
	readvar VAR_WEEKDAY
	ifequal SUNDAY,    .Sunday
	ifequal MONDAY,    .Monday
	ifequal TUESDAY,   .Tuesday
	ifequal WEDNESDAY, .Wednesday
	ifequal THURSDAY,  .Thursday
	ifequal FRIDAY,    .Friday
	ifequal SATURDAY,  .Saturday
	closetext
	end

.Sunday:
	trade NPC_TRADE_BARRY
	waitbutton
	closetext
	end
.Monday:
	trade NPC_TRADE_TERRY
	waitbutton
	closetext
	end
.Tuesday:
	trade NPC_TRADE_RONIN
	waitbutton
	closetext
	end
.Wednesday:
	trade NPC_TRADE_DARREL
	waitbutton
	closetext
	end
.Thursday:
	trade NPC_TRADE_ELYSSA
	waitbutton
	closetext
	end
.Friday:
	trade NPC_TRADE_OSCAR
	waitbutton
	closetext
	end
.Saturday:
	trade NPC_TRADE_LINDA
	waitbutton
	closetext
	end

GoldenrodPokecomCenterInfoSign:
	jumptext GoldenrodPokecomCenterInfoSignText

GoldenrodPokecomCenterLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

GoldenrodPokecomCenterLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

GoldenrodPokecomCenterLinkReceptionistApproachPlayerAtRightDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

GoldenrodPokecomCenterLinkReceptionistWalkToStairsFromRightDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

GoldenrodPokecomCenterGameboyKidText:
	text "The COLOSSEUM"
	line "upstairs is for"
	cont "link battles."

	para "Battle records are"
	line "posted on the"

	para "wall, so I can't"
	line "afford to lose."
	done

GoldenrodPokecomCenterLassText:
	text "A higher level"
	line "#MON doesn't"
	cont "always win."

	para "After all, it may"
	line "have a type dis-"
	cont "advantage."

	para "I don't think"
	line "there is a single"

	para "#MON that is"
	line "the toughest."
	done

GoldenrodPokecomCenterLinkReceptionistPleaseAcceptGSBallText:
	text "<PLAYER>, isn't it?"

	para "Congratulations!"

	para "As a special deal,"
	line "a GS BALL has been"
	cont "sent just for you!"

	para "Please accept it!"
	done

GoldenrodPokecomCenterLinkReceptionistPleaseDoComeAgainText:
	text "Please do come"
	line "again!"
	done

GoldenrodPokecomCenterPokefanFDoYouHaveEonMailText:
	text "Oh my, your pack"
	line "looks so heavy!"

	para "Oh! Do you happen"
	line "to have something"
	cont "named EON MAIL?"

	para "My daughter is"
	line "after one."

	para "You can part with"
	line "one, can't you?"
	done

GoldenrodPokecomCenterAskGiveAwayAnEonMailText:
	text "Give away an EON"
	line "MAIL?"
	done

GoldenrodPokecomCenterPokefanFThisIsForYouText:
	text "Oh, that's great!"
	line "Thank you, honey!"

	para "Here, this is for"
	line "you in return!"
	done

GoldenrodPokecomCenterPokefanFDaughterWillBeDelightedText:
	text "My daughter will"
	line "be delighted!"
	done

GoldenrodPokecomCenterPokefanFTooBadText:
	text "Oh? You don't have"
	line "one? Too bad."
	done

GoldenrodPokecomCenterPokefanFAnotherTimeThenText:
	text "Oh… Well, another"
	line "time, then."
	done

GoldenrodPokecomCenterPlayerGaveAwayTheEonMailText:
	text "<PLAYER> gave away"
	line "the EON MAIL."
	done

GoldenrodPokecomCenterBlisseyText:
	text "BLISSEY: Blissey!"
	done

GoldenrodPokecomCenterInfoSignText:
	text "#Com Center"
	line "Information"

	para "Left:"
	line "Administration"

	para "Center:"
	line "Trade Hub"

	para "Right:"
	line "Judge Machine"
	done

WonderTradeGreetingText:
	text "Welcome to the"
	line "#COM TRADE"
	cont "CENTER."

	para "We arrange trades"
	line "with pen pals"
	cont "from KANTO."
	done

GoldenrodPokecomCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 21, GOLDENROD_CITY, 15
	warp_event  7, 21, GOLDENROD_CITY, 15
	warp_event  0, 12, GOLDENROD_POKECOM_CENTER, 5
	warp_event  0,  7, GOLDENROD_POKECOM_CENTER, 3
	warp_event  1,  7, GOLDENROD_POKECOM_CENTER, 3

	def_coord_events
	coord_event  6, 21, SCENE_OKECOMCENTERADMINOFFICEMOBILE_GS_BALL, GoldenrodPokecomCenter_GSBallSceneLeft
	coord_event  7, 21, SCENE_OKECOMCENTERADMINOFFICEMOBILE_GS_BALL, GoldenrodPokecomCenter_GSBallSceneRight

	def_bg_events
	bg_event  2, 15, BGEVENT_READ, GoldenrodPokecomCenterInfoSign

	def_object_events
	object_event  7, 13, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterNurseScript, -1
	object_event  8, 13, SPRITE_BLISSEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterBlisseyScript, -1
	object_event 18, 14, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WonderTradeReceptionistScript, -1
	object_event 10, 18, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterGameboyKidScript, -1
	object_event  3, 18, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterLassScript, -1
	object_event 11, 20, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterPokefanF, -1
