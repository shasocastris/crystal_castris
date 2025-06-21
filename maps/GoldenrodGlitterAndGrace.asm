DEF GLITTERANDGRACE_TM25_COINS      EQU 5500
DEF GLITTERANDGRACE_TM14_COINS      EQU 5500
DEF GLITTERANDGRACE_TM38_COINS      EQU 5500
DEF GLITTERANDGRACE_ABRA_COINS      EQU 100
DEF GLITTERANDGRACE_CUBONE_COINS    EQU 800
DEF GLITTERANDGRACE_WOBBUFFET_COINS EQU 1500

	object_const_def
	const GLITTERANDGRACE_CLERK
	const GLITTERANDGRACE_RECEPTIONIST1
	const GLITTERANDGRACE_RECEPTIONIST2
	const GLITTERANDGRACE_PHARMACIST1
	const GLITTERANDGRACE_PHARMACIST2
	const GLITTERANDGRACE_POKEFAN_M1
	const GLITTERANDGRACE_COOLTRAINER_M
	const GLITTERANDGRACE_POKEFAN_F
	const GLITTERANDGRACE_COOLTRAINER_F
	const GLITTERANDGRACE_GENTLEMAN
	const GLITTERANDGRACE_POKEFAN_M2
	const GLITTERANDGRACE_MOVETUTOR

GoldenrodGlitterAndGrace_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, GoldenrodGlitterAndGraceMoveTutorCallback

GoldenrodGlitterAndGraceMoveTutorCallback:
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .finish
	checkitem COIN_CASE
	iffalse .move_tutor_inside
	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, .move_tutor_outside
	ifequal SATURDAY, .move_tutor_outside
.move_tutor_inside
	appear GLITTERANDGRACE_MOVETUTOR
	endcallback

.move_tutor_outside
	checkflag ENGINE_DAILY_MOVE_TUTOR
	iftrue .finish
	disappear GLITTERANDGRACE_MOVETUTOR
.finish
	endcallback

GoldenrodGlitterAndGraceMoveTutorInsideScript:
	faceplayer
	opentext
	writetext GoldenrodGlitterAndGraceMoveTutorInsideText
	waitbutton
	closetext
	turnobject GLITTERANDGRACE_MOVETUTOR, RIGHT
	end

GoldenrodGlitterAndGraceCoinVendorScript:
	jumpstd GameCornerCoinVendorScript

GoldenrodGlitterAndGraceTMVendorScript:
	faceplayer
	opentext
	writetext GoldenrodGlitterAndGracePrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GoldenrodGlitterAndGracePrizeVendor_NoCoinCaseScript
	writetext GoldenrodGlitterAndGracePrizeVendorWhichPrizeText
GoldenrodGlitterAndGraceTMVendor_LoopScript:
	special DisplayCoinCaseBalance
	loadmenu GoldenrodGlitterAndGraceTMVendorMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Thunder
	ifequal 2, .Blizzard
	ifequal 3, .FireBlast
	sjump GoldenrodGlitterAndGracePrizeVendor_CancelPurchaseScript

.Thunder:
	checkcoins GLITTERANDGRACE_TM25_COINS
	ifequal HAVE_LESS, GoldenrodGlitterAndGracePrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, TM_THUNDER
	scall GoldenrodGlitterAndGracePrizeVendor_ConfirmPurchaseScript
	iffalse GoldenrodGlitterAndGracePrizeVendor_CancelPurchaseScript
	giveitem TM_THUNDER
	iffalse GoldenrodGlitterAndGracePrizeMonVendor_NoRoomForPrizeScript
	takecoins GLITTERANDGRACE_TM25_COINS
	sjump GoldenrodGlitterAndGraceTMVendor_FinishScript

.Blizzard:
	checkcoins GLITTERANDGRACE_TM14_COINS
	ifequal HAVE_LESS, GoldenrodGlitterAndGracePrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, TM_BLIZZARD
	scall GoldenrodGlitterAndGracePrizeVendor_ConfirmPurchaseScript
	iffalse GoldenrodGlitterAndGracePrizeVendor_CancelPurchaseScript
	giveitem TM_BLIZZARD
	iffalse GoldenrodGlitterAndGracePrizeMonVendor_NoRoomForPrizeScript
	takecoins GLITTERANDGRACE_TM14_COINS
	sjump GoldenrodGlitterAndGraceTMVendor_FinishScript

.FireBlast:
	checkcoins GLITTERANDGRACE_TM38_COINS
	ifequal HAVE_LESS, GoldenrodGlitterAndGracePrizeVendor_NotEnoughCoinsScript
	getitemname STRING_BUFFER_3, TM_FIRE_BLAST
	scall GoldenrodGlitterAndGracePrizeVendor_ConfirmPurchaseScript
	iffalse GoldenrodGlitterAndGracePrizeVendor_CancelPurchaseScript
	giveitem TM_FIRE_BLAST
	iffalse GoldenrodGlitterAndGracePrizeMonVendor_NoRoomForPrizeScript
	takecoins GLITTERANDGRACE_TM38_COINS
	sjump GoldenrodGlitterAndGraceTMVendor_FinishScript

GoldenrodGlitterAndGracePrizeVendor_ConfirmPurchaseScript:
	writetext GoldenrodGlitterAndGracePrizeVendorConfirmPrizeText
	yesorno
	end

GoldenrodGlitterAndGraceTMVendor_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGlitterAndGracePrizeVendorHereYouGoText
	waitbutton
	sjump GoldenrodGlitterAndGraceTMVendor_LoopScript

GoldenrodGlitterAndGracePrizeVendor_NotEnoughCoinsScript:
	writetext GoldenrodGlitterAndGracePrizeVendorNeedMoreCoinsText
	waitbutton
	closetext
	end

GoldenrodGlitterAndGracePrizeMonVendor_NoRoomForPrizeScript:
	writetext GoldenrodGlitterAndGracePrizeVendorNoMoreRoomText
	waitbutton
	closetext
	end

GoldenrodGlitterAndGracePrizeVendor_CancelPurchaseScript:
	writetext GoldenrodGlitterAndGracePrizeVendorQuitText
	waitbutton
	closetext
	end

GoldenrodGlitterAndGracePrizeVendor_NoCoinCaseScript:
	writetext GoldenrodGlitterAndGracePrizeVendorNoCoinCaseText
	waitbutton
	closetext
	end

GoldenrodGlitterAndGraceTMVendorMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "TM25    5500@"
	db "TM14    5500@"
	db "TM38    5500@"
	db "CANCEL@"

GoldenrodGlitterAndGracePrizeMonVendorScript:
	faceplayer
	opentext
	writetext GoldenrodGlitterAndGracePrizeVendorIntroText
	waitbutton
	checkitem COIN_CASE
	iffalse GoldenrodGlitterAndGracePrizeVendor_NoCoinCaseScript
.loop
	writetext GoldenrodGlitterAndGracePrizeVendorWhichPrizeText
	special DisplayCoinCaseBalance
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Abra
	ifequal 2, .Cubone
	ifequal 3, .Wobbuffet
	sjump GoldenrodGlitterAndGracePrizeVendor_CancelPurchaseScript

.Abra:
	checkcoins GLITTERANDGRACE_ABRA_COINS
	ifequal HAVE_LESS, GoldenrodGlitterAndGracePrizeVendor_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GoldenrodGlitterAndGracePrizeMonVendor_NoRoomForPrizeScript
	getmonname STRING_BUFFER_3, ABRA
	scall GoldenrodGlitterAndGracePrizeVendor_ConfirmPurchaseScript
	iffalse GoldenrodGlitterAndGracePrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGlitterAndGracePrizeVendorHereYouGoText
	waitbutton
	loadmonindex 1, ABRA
	special GameCornerPrizeMonCheckDex
	givepoke ABRA, 5
	takecoins GLITTERANDGRACE_ABRA_COINS
	sjump .loop

.Cubone:
	checkcoins GLITTERANDGRACE_CUBONE_COINS
	ifequal HAVE_LESS, GoldenrodGlitterAndGracePrizeVendor_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GoldenrodGlitterAndGracePrizeMonVendor_NoRoomForPrizeScript
	getmonname STRING_BUFFER_3, CUBONE
	scall GoldenrodGlitterAndGracePrizeVendor_ConfirmPurchaseScript
	iffalse GoldenrodGlitterAndGracePrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGlitterAndGracePrizeVendorHereYouGoText
	waitbutton
	loadmonindex 2, CUBONE
	special GameCornerPrizeMonCheckDex
	givepoke CUBONE, 15
	takecoins GLITTERANDGRACE_CUBONE_COINS
	sjump .loop

.Wobbuffet:
	checkcoins GLITTERANDGRACE_WOBBUFFET_COINS
	ifequal HAVE_LESS, GoldenrodGlitterAndGracePrizeVendor_NotEnoughCoinsScript
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, GoldenrodGlitterAndGracePrizeMonVendor_NoRoomForPrizeScript
	getmonname STRING_BUFFER_3, WOBBUFFET
	scall GoldenrodGlitterAndGracePrizeVendor_ConfirmPurchaseScript
	iffalse GoldenrodGlitterAndGracePrizeVendor_CancelPurchaseScript
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGlitterAndGracePrizeVendorHereYouGoText
	waitbutton
	loadmonindex 3, WOBBUFFET
	special GameCornerPrizeMonCheckDex
	givepoke WOBBUFFET, 15
	takecoins GLITTERANDGRACE_WOBBUFFET_COINS
	sjump .loop

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "ABRA        100@"
	db "CUBONE      800@"
	db "WOBBUFFET  1500@"
	db "CANCEL@"

GoldenrodGlitterAndGracePharmacistScript:
	faceplayer
	opentext
	writetext GoldenrodGlitterAndGracePharmacistText
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	end

GoldenrodGlitterAndGracePokefanM1Script:
	faceplayer
	opentext
	writetext GoldenrodGlitterAndGracePokefanM1Text
	waitbutton
	closetext
	turnobject GLITTERANDGRACE_POKEFAN_M1, RIGHT
	end

GoldenrodGlitterAndGraceCooltrainerMScript:
	faceplayer
	opentext
	writetext GoldenrodGlitterAndGraceCooltrainerMText
	waitbutton
	closetext
	turnobject GLITTERANDGRACE_COOLTRAINER_M, LEFT
	end

GoldenrodGlitterAndGracePokefanFScript:
	faceplayer
	opentext
	writetext GoldenrodGlitterAndGracePokefanFText
	waitbutton
	closetext
	turnobject GLITTERANDGRACE_POKEFAN_F, RIGHT
	end

GoldenrodGlitterAndGraceCooltrainerFScript:
	jumptextfaceplayer GoldenrodGlitterAndGraceCooltrainerFText

GoldenrodGlitterAndGraceGentlemanScript:
	faceplayer
	opentext
	writetext GoldenrodGlitterAndGraceGentlemanText
	waitbutton
	closetext
	turnobject GLITTERANDGRACE_GENTLEMAN, RIGHT
	end

GoldenrodGlitterAndGracePokefanM2Script:
	jumptextfaceplayer GoldenrodGlitterAndGracePokefanM2Text

GoldenrodGlitterAndGraceLeftTheirDrinkScript:
	jumptext GoldenrodGlitterAndGraceLeftTheirDrinkText

GoldenrodGlitterAndGraceSlotsMachineScript:
	random 6
	ifequal 0, GoldenrodGlitterAndGraceLuckySlotsMachineScript
	reanchormap
	setval FALSE
	special SlotMachine
	closetext
	end

GoldenrodGlitterAndGraceLuckySlotsMachineScript:
	reanchormap
	setval TRUE
	special SlotMachine
	closetext
	end

GoldenrodGlitterAndGraceCardFlipMachineScript:
	reanchormap
	special CardFlip
	closetext
	end

GoldenrodGlitterAndGracePrizeVendorIntroText:
	text "Welcome!"

	para "We exchange your"
	line "game coins for"
	cont "fabulous prizes!"
	done

GoldenrodGlitterAndGracePrizeVendorWhichPrizeText:
	text "Which prize would"
	line "you like?"
	done

GoldenrodGlitterAndGracePrizeVendorConfirmPrizeText:
	text_ram wStringBuffer3
	text "."
	line "Is that right?"
	done

GoldenrodGlitterAndGracePrizeVendorHereYouGoText:
	text "Here you go!"
	done

GoldenrodGlitterAndGracePrizeVendorNeedMoreCoinsText:
	text "Sorry! You need"
	line "more coins."
	done

GoldenrodGlitterAndGracePrizeVendorNoMoreRoomText:
	text "Sorry. You can't"
	line "carry any more."
	done

GoldenrodGlitterAndGracePrizeVendorQuitText:
	text "OK. Please save"
	line "your coins and"
	cont "come again!"
	done

GoldenrodGlitterAndGracePrizeVendorNoCoinCaseText:
	text "Oh? You don't have"
	line "a COIN CASE."
	done

GoldenrodGlitterAndGracePharmacistText:
	text "I always play this"
	line "slot machine. It"

	para "pays out more than"
	line "others, I think."
	done

GoldenrodGlitterAndGracePokefanM1Text:
	text "I just love this"
	line "new slot machine."

	para "It's more of a"
	line "challenge than the"
	cont "ones in CELADON."
	done

GoldenrodGlitterAndGraceCooltrainerMText:
	text "Life is a gamble."
	line "I'm going to flip"
	cont "cards till I drop!"
	done

GoldenrodGlitterAndGracePokefanFText:
	text "Card flip…"

	para "I prefer it over"
	line "the slots because"

	para "it's easier to"
	line "figure the odds."

	para "But the payout is"
	line "much lower."
	done

GoldenrodGlitterAndGraceCooltrainerFText:
	text "I won't quit until"
	line "I win!"
	done

GoldenrodGlitterAndGraceGentlemanText:
	text "I taught BLIZZARD"
	line "to my #MON."

	para "It was hard to get"
	line "enough coins for"

	para "it, but it was"
	line "worth it."
	done

GoldenrodGlitterAndGracePokefanM2Text:
	text "WELCOME to …"
	line "GLITTER & GRACE!"
	done

GoldenrodGlitterAndGraceMoveTutorInsideText:
	text "Wahahah! The coins"
	line "keep rolling in!"
	done

GoldenrodGlitterAndGraceLeftTheirDrinkText:
	text "Someone left their"
	line "drink."

	para "It smells sweet."
	done

GoldenrodGlitterAndGrace_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 13, GOLDENROD_CITY, 16
	warp_event  3, 13, GOLDENROD_CITY, 16

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event  6,  7, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event  6,  8, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event  6,  9, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event  6, 10, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event  6, 11, BGEVENT_RIGHT, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event  7,  6, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event  7,  7, BGEVENT_READ, GoldenrodGlitterAndGraceLuckySlotsMachineScript
	bg_event  7,  8, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event  7,  9, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event  7, 10, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event  7, 11, BGEVENT_LEFT, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event 12,  6, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event 12,  7, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event 12,  8, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event 12,  9, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event 12, 10, BGEVENT_READ, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event 12, 11, BGEVENT_RIGHT, GoldenrodGlitterAndGraceSlotsMachineScript
	bg_event 13,  6, BGEVENT_READ, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 13,  7, BGEVENT_READ, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 13,  8, BGEVENT_READ, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 13,  9, BGEVENT_READ, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 13, 10, BGEVENT_READ, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 13, 11, BGEVENT_LEFT, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 18,  6, BGEVENT_READ, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 18,  7, BGEVENT_READ, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 18,  8, BGEVENT_READ, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 18,  9, BGEVENT_READ, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 18, 10, BGEVENT_READ, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 18, 11, BGEVENT_RIGHT, GoldenrodGlitterAndGraceCardFlipMachineScript
	bg_event 12,  1, BGEVENT_LEFT, GoldenrodGlitterAndGraceLeftTheirDrinkScript

	def_object_events
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceCoinVendorScript, -1
	object_event 16,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceTMVendorScript, -1
	object_event 18,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGracePrizeMonVendorScript, -1
	object_event  8,  7, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGracePharmacistScript, -1
	object_event  8,  7, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, NITE, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGracePharmacistScript, -1
	object_event 11, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGracePokefanM1Script, -1
	object_event 14,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceCooltrainerMScript, -1
	object_event 17,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGracePokefanFScript, -1
	object_event 10,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceCooltrainerFScript, -1
	object_event  5, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceGentlemanScript, -1
	object_event  2,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGracePokefanM2Script, -1
	object_event 17, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceMoveTutorInsideScript, EVENT_GOLDENROD_GAME_CORNER_MOVE_TUTOR
