	object_const_def
	const GOLDENRODPOKECOMCENTER_NURSE
	const GOLDENRODPOKECOMCENTER_BLISSEY
	const GOLDENRODPOKECOMCENTER_PCC_TRADE_CORNER_RECEPTIONIST
	const GOLDENRODPOKECOMCENTER_GAMEBOY_KID
	const GOLDENRODPOKECOMCENTER_LASS_1
	const GOLDENRODPOKECOMCENTER_POKEFAN_F
	const GOLDENRODPOKECOMCENTER_COOLTRAINER_M
	const GOLDENRODPOKECOMCENTER_ROCKER
	const GOLDENRODPOKECOMCENTER_SUPER_NERD
	const GOLDENRODPOKECOMCENTER_TEACHER

GoldenrodPokecomCenter_MapScripts:
	def_scene_scripts

	def_callbacks

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

	; === Season ===
	checkseason SPRING
	iftrue .SeasonSpring
	checkseason SUMMER
	iftrue .SeasonSummer
	checkseason AUTUMN
	iftrue .SeasonAutumn
	writetext BulletinSeasonWinterText
	waitbutton
	sjump .SeasonCycle
.SeasonSpring:
	writetext BulletinSeasonSpringText
	waitbutton
	sjump .SeasonCycle
.SeasonSummer:
	writetext BulletinSeasonSummerText
	waitbutton
	sjump .SeasonCycle
.SeasonAutumn:
	writetext BulletinSeasonAutumnText
	waitbutton
.SeasonCycle:
	writetext BulletinSeasonCycleText
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

GoldenrodPokecomCenterNurseScript:
	jumpstd PokecenterNurseScript

GoldenrodPokecomCenterGameboyKidScript:
	jumptextfaceplayer GoldenrodPokecomCenterGameboyKidText

GoldenrodPokecomCenterLassScript:
	jumptextfaceplayer GoldenrodPokecomCenterLassText

GoldenrodPokecomCenterCooltrainerMScript:
	jumptextfaceplayer GoldenrodPokecomCenterCooltrainerMText

GoldenrodPokecomCenterRockerScript:
	jumptextfaceplayer GoldenrodPokecomCenterRockerText

GoldenrodPokecomCenterSuperNerdScript:
	jumptextfaceplayer GoldenrodPokecomCenterSuperNerdText

GoldenrodPokecomCenterTeacherScript:
	jumptextfaceplayer GoldenrodPokecomCenterTeacherText

GoldenrodPokecomCenterInfoSign:
	jumptext GoldenrodPokecomCenterInfoSignText





GoldenrodPokecomCenterGameboyKidText:
	text "This place is way"
	line "cooler than a"
	cont "normal #MON"
	cont "CENTER."

	para "You can trade with"
	line "trainers in KANTO"
	cont "without even"
	cont "knowing them!"
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
	line "#MON CENTER"

	para "Center:"
	line "#COM TRADE"
	cont "CENTER"

	para "Right:"
	line "#COM BULLETIN"
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
	text "#COM BULLETIN"
	line "ーーーーーーーーーーーーーーー"

	para "Ranger field"
	line "reports and local"
	cont "notices follow."
	done

BulletinSeasonSpringText:
	text "SEASON ALMANAC:"
	line "It is SPRING."

	para "New growth on the"
	line "routes. Grass"
	cont "#MON are"
	cont "thriving."

	para "Daylight lasts"
	line "5 AM to 8 PM."
	done

BulletinSeasonSummerText:
	text "SEASON ALMANAC:"
	line "It is SUMMER."

	para "#MON keep to"
	line "their usual"
	cont "haunts."

	para "Daylight lasts"
	line "4 AM to 9 PM."
	done

BulletinSeasonAutumnText:
	text "SEASON ALMANAC:"
	line "It is AUTUMN."

	para "#MON are"
	line "foraging before"
	cont "the cold."

	para "Evening falls"
	line "by 4 PM."
	done

BulletinSeasonWinterText:
	text "SEASON ALMANAC:"
	line "It is WINTER."

	para "Fewer #MON"
	line "are out, but"
	cont "cold-weather"
	cont "kinds appear."

	para "Dark by 6 PM."
	done

BulletinSeasonCycleText:
	text "The season turns"
	line "each week."

	para "Wild #MON and"
	line "daylight change"
	cont "with it."
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

GoldenrodPokecomCenterCooltrainerMText:
	text "You should check"
	line "the #COM TRADE"
	cont "CENTER every day."

	para "They arrange swaps"
	line "with trainers in"
	cont "KANTO."

	para "You never know"
	line "what they'll have!"
	done

GoldenrodPokecomCenterRockerText:
	text "Have you tried the"
	line "bulletin board?"

	para "It posts RANGER"
	line "field reports, so"
	cont "you can find rare"
	cont "#MON."

	para "Way better than"
	line "wandering around"
	cont "hoping to get"
	cont "lucky!"
	done

GoldenrodPokecomCenterSuperNerdText:
	text "This place used to"
	line "run on some old"
	cont "wireless system."

	para "Nobody could ever"
	line "get it working."

	para "But now they've"
	line "set up the #COM"
	cont "TRADE CENTER and"
	cont "the bulletin"
	cont "board."

	para "Honestly? It's way"
	line "more useful than"
	cont "it ever was."
	done

GoldenrodPokecomCenterTeacherText:
	text "Most #MON"
	line "CENTERS just have"
	cont "a healing station."

	para "This one has trade"
	line "services and a"
	cont "news terminal!"

	para "GOLDENROD really"
	line "is the big city."
	done

GoldenrodPokecomCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 15, GOLDENROD_CITY, 15
	warp_event  7, 15, GOLDENROD_CITY, 15

	def_coord_events

	def_bg_events
	bg_event  2,  9, BGEVENT_READ, GoldenrodPokecomCenterInfoSign
	bg_event 25, 11, BGEVENT_READ, BulletinBoardScript
	bg_event 26, 11, BGEVENT_READ, BulletinBoardScript
	bg_event 27, 11, BGEVENT_READ, BulletinBoardScript
	bg_event 28, 11, BGEVENT_READ, BulletinBoardScript
	bg_event 24,  4, BGEVENT_READ, BulletinBoardScript
	bg_event 24,  5, BGEVENT_READ, BulletinBoardScript
	bg_event 24,  6, BGEVENT_READ, BulletinBoardScript
	bg_event 24,  7, BGEVENT_READ, BulletinBoardScript
	bg_event 24,  8, BGEVENT_READ, BulletinBoardScript
	bg_event 24,  9, BGEVENT_READ, BulletinBoardScript
	bg_event 29,  4, BGEVENT_READ, BulletinBoardScript
	bg_event 29,  5, BGEVENT_READ, BulletinBoardScript
	bg_event 29,  6, BGEVENT_READ, BulletinBoardScript
	bg_event 29,  7, BGEVENT_READ, BulletinBoardScript
	bg_event 29,  8, BGEVENT_READ, BulletinBoardScript
	bg_event 29,  9, BGEVENT_READ, BulletinBoardScript

	def_object_events
	object_event  7,  7, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterNurseScript, -1
	object_event  8,  7, SPRITE_BLISSEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterBlisseyScript, -1
	object_event 18,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WonderTradeReceptionistScript, -1
	object_event 14, 12, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterGameboyKidScript, -1
	object_event  3, 12, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterLassScript, -1
	object_event 11, 14, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterPokefanF, -1
	object_event  7, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterCooltrainerMScript, -1
	object_event 19, 12, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterRockerScript, -1
	object_event 22, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterSuperNerdScript, -1
	object_event 12,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecomCenterTeacherScript, -1
