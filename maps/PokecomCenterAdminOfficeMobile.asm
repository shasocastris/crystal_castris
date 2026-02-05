	object_const_def
	const OKECOMCENTERADMINOFFICEMOBILE_NURSE
	const OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST
	const OKECOMCENTERADMINOFFICEMOBILE_GAMEBOY_KID
	const OKECOMCENTERADMINOFFICEMOBILE_LASS
	const OKECOMCENTERADMINOFFICEMOBILE_POKEFAN_F

PokecomCenterAdminOfficeMobile_MapScripts:
	def_scene_scripts
	scene_const SCENE_OKECOMCENTERADMINOFFICEMOBILE_GS_BALL

	def_callbacks

PokecomCenterAdminOfficeMobileNurseScript:
	jumpstd PokecenterNurseScript

PokecomCenterAdminOfficeMobile_GSBallSceneLeft:
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
	applymovement OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST, PokecomCenterAdminOfficeMobileLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement
	turnobject PLAYER, UP
	opentext
	writetext PokecomCenterAdminOfficeMobileLinkReceptionistPleaseAcceptGSBallText
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext PokecomCenterAdminOfficeMobileLinkReceptionistPleaseDoComeAgainText
	waitbutton
	closetext
	applymovement OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST, PokecomCenterAdminOfficeMobileLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement
	special RestartMapMusic
	disappear OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

PokecomCenterAdminOfficeMobile_GSBallSceneRight:
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
	applymovement OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST, PokecomCenterAdminOfficeMobileLinkReceptionistApproachPlayerAtRightDoorwayTileMovement
	turnobject PLAYER, UP
	opentext
	writetext PokecomCenterAdminOfficeMobileLinkReceptionistPleaseAcceptGSBallText
	waitbutton
	verbosegiveitem GS_BALL
	setevent EVENT_GOT_GS_BALL_FROM_GOLDENROD_POKEMON_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	writetext PokecomCenterAdminOfficeMobileLinkReceptionistPleaseDoComeAgainText
	waitbutton
	closetext
	applymovement OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST, PokecomCenterAdminOfficeMobileLinkReceptionistWalkToStairsFromRightDoorwayTileMovement
	special RestartMapMusic
	disappear OKECOMCENTERADMINOFFICEMOBILE_PCC_TRADE_CORNER_RECEPTIONIST
	playsound SFX_EXIT_BUILDING
.cancel
	end

PokecomCenterAdminOfficeMobileGameboyKidScript:
	jumptextfaceplayer PokecomCenterAdminOfficeMobileGameboyKidText

PokecomCenterAdminOfficeMobileLassScript:
	jumptextfaceplayer PokecomCenterAdminOfficeMobileLassText

PokecomCenterAdminOfficeMobilePokefanF:
	faceplayer
	opentext
	writetext PokecomCenterAdminOfficeMobilePokefanFDoYouHaveEonMailText
	waitbutton
	writetext PokecomCenterAdminOfficeMobileAskGiveAwayAnEonMailText
	yesorno
	iffalse .NoEonMail
	takeitem EON_MAIL
	iffalse .NoEonMail
	writetext PokecomCenterAdminOfficeMobilePlayerGaveAwayTheEonMailText
	waitbutton
	writetext PokecomCenterAdminOfficeMobilePokefanFThisIsForYouText
	waitbutton
	verbosegiveitem REVIVE
	iffalse .NoRoom
	writetext PokecomCenterAdminOfficeMobilePokefanFDaughterWillBeDelightedText
	waitbutton
	closetext
	end

.NoEonMail:
	writetext PokecomCenterAdminOfficeMobilePokefanFTooBadText
	waitbutton
	closetext
	end

.NoRoom:
	giveitem EON_MAIL
	writetext PokecomCenterAdminOfficeMobilePokefanFAnotherTimeThenText
	waitbutton
	closetext
	end

PokecomCenterAdminOfficeMobileLinkReceptionistApproachPlayerAtLeftDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

PokecomCenterAdminOfficeMobileLinkReceptionistWalkToStairsFromLeftDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

PokecomCenterAdminOfficeMobileLinkReceptionistApproachPlayerAtRightDoorwayTileMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head DOWN
	step_end

PokecomCenterAdminOfficeMobileLinkReceptionistWalkToStairsFromRightDoorwayTileMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

PokecomCenterAdminOfficeMobileGameboyKidText:
	text "The COLOSSEUM"
	line "upstairs is for"
	cont "link battles."

	para "Battle records are"
	line "posted on the"

	para "wall, so I can't"
	line "afford to lose."
	done

PokecomCenterAdminOfficeMobileLassText:
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

PokecomCenterAdminOfficeMobileLinkReceptionistPleaseAcceptGSBallText:
	text "<PLAYER>, isn't it?"

	para "Congratulations!"

	para "As a special deal,"
	line "a GS BALL has been"
	cont "sent just for you!"

	para "Please accept it!"
	done

PokecomCenterAdminOfficeMobileLinkReceptionistPleaseDoComeAgainText:
	text "Please do come"
	line "again!"
	done

PokecomCenterAdminOfficeMobilePokefanFDoYouHaveEonMailText:
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

PokecomCenterAdminOfficeMobileAskGiveAwayAnEonMailText:
	text "Give away an EON"
	line "MAIL?"
	done

PokecomCenterAdminOfficeMobilePokefanFThisIsForYouText:
	text "Oh, that's great!"
	line "Thank you, honey!"

	para "Here, this is for"
	line "you in return!"
	done

PokecomCenterAdminOfficeMobilePokefanFDaughterWillBeDelightedText:
	text "My daughter will"
	line "be delighted!"
	done

PokecomCenterAdminOfficeMobilePokefanFTooBadText:
	text "Oh? You don't have"
	line "one? Too bad."
	done

PokecomCenterAdminOfficeMobilePokefanFAnotherTimeThenText:
	text "Oh… Well, another"
	line "time, then."
	done

PokecomCenterAdminOfficeMobilePlayerGaveAwayTheEonMailText:
	text "<PLAYER> gave away"
	line "the EON MAIL."
	done

PokecomCenterAdminOfficeMobile_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 15, GOLDENROD_CITY, 15
	warp_event  7, 15, GOLDENROD_CITY, 15
	warp_event  0,  6, POKECOM_CENTER_ADMIN_OFFICE_MOBILE, 6
	warp_event  0, 15, POKECENTER_2F, 1
	warp_event  0, 31, POKECOM_CENTER_ADMIN_OFFICE_MOBILE, 3
	warp_event  1, 31, POKECOM_CENTER_ADMIN_OFFICE_MOBILE, 3

	def_coord_events
	coord_event  6, 15, SCENE_OKECOMCENTERADMINOFFICEMOBILE_GS_BALL, PokecomCenterAdminOfficeMobile_GSBallSceneLeft
	coord_event  7, 15, SCENE_OKECOMCENTERADMINOFFICEMOBILE_GS_BALL, PokecomCenterAdminOfficeMobile_GSBallSceneRight

	def_bg_events

	def_object_events
	object_event  7,  7, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokecomCenterAdminOfficeMobileNurseScript, -1
	object_event 16,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 10, 12, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokecomCenterAdminOfficeMobileGameboyKidScript, -1
	object_event  3, 12, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokecomCenterAdminOfficeMobileLassScript, -1
	object_event 11, 14, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PokecomCenterAdminOfficeMobilePokefanF, -1
