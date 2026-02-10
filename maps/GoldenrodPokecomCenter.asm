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

BulletinBoardScript:
	opentext
	writetext BulletinHeaderText
	waitbutton

	; === Swarms ===
	checkflag ENGINE_DUNSPARCE_SWARM
	iftrue .DunsparceSwarm
	sjump .CheckYanma
.DunsparceSwarm:
	writetext BulletinDunsparceText
	waitbutton
.CheckYanma:
	checkflag ENGINE_YANMA_SWARM
	iftrue .YanmaSwarm
	sjump .CheckContest
.YanmaSwarm:
	writetext BulletinYanmaText
	waitbutton

	; === Bug Catching Contest ===
.CheckContest:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .ContestToday
	ifequal THURSDAY, .ContestToday
	ifequal SATURDAY, .ContestToday
	sjump .CheckLapras
.ContestToday:
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .ContestOver
	writetext BulletinContestText
	waitbutton
	sjump .CheckLapras
.ContestOver:
	writetext BulletinContestOverText
	waitbutton

	; === Union Cave Lapras (Friday) ===
.CheckLapras:
	readvar VAR_WEEKDAY
	ifequal FRIDAY, .LaprasToday
	sjump .CheckClefairy
.LaprasToday:
	writetext BulletinLaprasText
	waitbutton

	; === Mt. Moon Clefairy (Monday night) ===
.CheckClefairy:
	readvar VAR_WEEKDAY
	ifequal MONDAY, .MondayCheck
	sjump .CheckSale
.MondayCheck:
	checktime NITE
	iftrue .ClefairyTonight
	writetext BulletinClefairyTonightText
	waitbutton
	sjump .CheckSale
.ClefairyTonight:
	writetext BulletinClefairyNowText
	waitbutton

	; === Dept Store Sale ===
.CheckSale:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .SaleOn
	sjump .CheckBuena
.SaleOn:
	writetext BulletinSaleText
	waitbutton

	; === Buena's Password ===
.CheckBuena:
	checkflag ENGINE_BUENAS_PASSWORD
	iffalse .BuenaAvailable
	sjump .Footer
.BuenaAvailable:
	checktime NITE | EVE
	iftrue .BuenaNow
	writetext BulletinBuenaLaterText
	waitbutton
	sjump .Footer
.BuenaNow:
	writetext BulletinBuenaNowText
	waitbutton

.Footer:
	writetext BulletinFooterText
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

BulletinHeaderText:
	text "POKECOM BULLETIN"
	line "ーーーーーーーーーーーーーーー"

	para "Ranger field"
	line "reports and local"
	cont "notices follow."
	done

BulletinDunsparceText:
	text "FIELD REPORT:"
	line "Large numbers of"
	cont "DUNSPARCE spotted"
	cont "in DARK CAVE."

	para "Rangers advise"
	line "this is temporary."
	done

BulletinYanmaText:
	text "FIELD REPORT:"
	line "A swarm of YANMA"
	cont "has been seen on"
	cont "ROUTE 35."

	para "Catch them while"
	line "you can!"
	done

BulletinContestText:
	text "NOTICE:"
	line "A Bug-Catching"
	cont "Contest is being"
	cont "held today at the"
	cont "NATIONAL PARK."

	para "Registration is"
	line "at the North Gate."
	done

BulletinContestOverText:
	text "NOTICE:"
	line "Today's Bug-"
	cont "Catching Contest"
	cont "has concluded."

	para "Winners will be"
	line "posted shortly."
	done

BulletinLaprasText:
	text "FIELD REPORT:"
	line "A LAPRAS has been"
	cont "sighted deep in"
	cont "UNION CAVE."

	para "Appearance may be"
	line "time sensitive."
	done

BulletinClefairyTonightText:
	text "FIELD REPORT:"
	line "CLEFAIRY gather"
	cont "at MT. MOON SQUARE"
	cont "on Monday nights."

	para "Check back after"
	line "dark."
	done

BulletinClefairyNowText:
	text "FIELD REPORT:"
	line "CLEFAIRY have"
	cont "been spotted at"
	cont "MT. MOON SQUARE!"

	para "They may not stay"
	line "for long."
	done

BulletinSaleText:
	text "ADVERTISEMENT:"
	line "The GOLDENROD"
	cont "DEPT. STORE is"
	cont "holding a rooftop"
	cont "bargain sale!"

	para "Great deals on"
	line "rare items!"
	done

BulletinBuenaNowText:
	text "RADIO LISTING:"
	line "BUENA'S PASSWORD"
	cont "is on the air!"

	para "Tune in and earn"
	line "prizes at the"
	cont "RADIO TOWER."
	done

BulletinBuenaLaterText:
	text "RADIO LISTING:"
	line "BUENA'S PASSWORD"
	cont "airs in the"
	cont "evening."

	para "Tune in for a"
	line "chance at prizes."
	done

BulletinFooterText:
	text "ーーーーーーーーーーーーーーー"
	line "END OF BULLETIN"

	para "Check back for"
	line "updated reports."
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
	bg_event 25, 17, BGEVENT_READ, BulletinBoardScript
	bg_event 26, 17, BGEVENT_READ, BulletinBoardScript
	bg_event 27, 17, BGEVENT_READ, BulletinBoardScript
	bg_event 28, 17, BGEVENT_READ, BulletinBoardScript
	bg_event 24, 10, BGEVENT_READ, BulletinBoardScript
	bg_event 24, 11, BGEVENT_READ, BulletinBoardScript
	bg_event 24, 12, BGEVENT_READ, BulletinBoardScript
	bg_event 24, 13, BGEVENT_READ, BulletinBoardScript
	bg_event 24, 14, BGEVENT_READ, BulletinBoardScript
	bg_event 24, 15, BGEVENT_READ, BulletinBoardScript
	bg_event 29, 10, BGEVENT_READ, BulletinBoardScript
	bg_event 29, 11, BGEVENT_READ, BulletinBoardScript
	bg_event 29, 12, BGEVENT_READ, BulletinBoardScript
	bg_event 29, 13, BGEVENT_READ, BulletinBoardScript
	bg_event 29, 14, BGEVENT_READ, BulletinBoardScript
	bg_event 29, 15, BGEVENT_READ, BulletinBoardScript

	def_object_events
	object_event  7, 13, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterNurseScript, -1
	object_event  8, 13, SPRITE_BLISSEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterBlisseyScript, -1
	object_event 18, 14, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WonderTradeReceptionistScript, -1
	object_event 10, 18, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterGameboyKidScript, -1
	object_event  3, 18, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterLassScript, -1
	object_event 11, 20, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterPokefanF, -1
