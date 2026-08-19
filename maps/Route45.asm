	object_const_def
	const ROUTE45_POKEFAN_M1
	const ROUTE45_POKEFAN_M2
	const ROUTE45_POKEFAN_M3
	const ROUTE45_POKEFAN_M4
	const ROUTE45_BLACK_BELT
	const ROUTE45_COOLTRAINER_M
	const ROUTE45_COOLTRAINER_F
	const ROUTE45_FRUIT_TREE1
	const ROUTE45_FRUIT_TREE2
	const ROUTE45_FRUIT_TREE3
	const ROUTE45_POKE_BALL1
	const ROUTE45_POKE_BALL2
	const ROUTE45_POKE_BALL3
	const ROUTE45_POKE_BALL4
	const ROUTE45_YOUNGSTER

Route45_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route45BridgeCallback

; scene 0 = surf under (the .ablk default), scene 1 = walk over.
; ifequal 1, not iftrue: checkscene returns -1 when wCurMapSceneScriptPointer is null.
Route45BridgeCallback:
	checkscene
	ifequal 1, .deck
	callasm Route45BridgePaintWater
	endcallback

.deck:
	callasm Route45BridgePaintDeck
	endcallback

; $89 is the same bridge art with FLOOR collision and no priority bit.
Route45BridgePaintDeck:
	changebridgeblock 10,  4, $89, ROUTE_45
	changebridgeblock 12,  4, $89, ROUTE_45
	changebridgeblock  8, 24, $89, ROUTE_45
	changebridgeblock 10, 24, $89, ROUTE_45
	changebridgeblock 10, 36, $89, ROUTE_45
	changebridgeblock 12, 36, $89, ROUTE_45
	changebridgeblock 10, 48, $89, ROUTE_45
	changebridgeblock 12, 48, $89, ROUTE_45
	changebridgeblock  8, 66, $89, ROUTE_45
	changebridgeblock 10, 66, $89, ROUTE_45
	changebridgeblock  6, 82, $89, ROUTE_45
	changebridgeblock  8, 82, $89, ROUTE_45
	jmp BufferScreen

; $98/$99 keep the WALL abutments and set priority over the two channel tiles between them.
; All six crossings share wRoute45SceneID, so every trigger repaints all twelve blocks. They
; are 20+ tiles apart against a 9-tile viewport, so two are never on screen together.
Route45BridgePaintWater:
	changebridgeblock 10,  4, $98, ROUTE_45
	changebridgeblock 12,  4, $99, ROUTE_45
	changebridgeblock  8, 24, $98, ROUTE_45
	changebridgeblock 10, 24, $99, ROUTE_45
	changebridgeblock 10, 36, $98, ROUTE_45
	changebridgeblock 12, 36, $99, ROUTE_45
	changebridgeblock 10, 48, $98, ROUTE_45
	changebridgeblock 12, 48, $99, ROUTE_45
	changebridgeblock  8, 66, $98, ROUTE_45
	changebridgeblock 10, 66, $99, ROUTE_45
	changebridgeblock  6, 82, $98, ROUTE_45
	changebridgeblock  8, 82, $99, ROUTE_45
	jmp BufferScreen

Route45BridgeSurfTrigger:
	callasm Route45BridgePaintWater
	callthisasm
	xor a
	jr Route45Bridge_Finish

Route45BridgeWalkTrigger:
	callasm Route45BridgePaintDeck
	callthisasm
	ld a, $1
Route45Bridge_Finish:
	ld [wRoute45SceneID], a
	jmp GenericFinishBridge

TrainerBlackbeltKenji:
	trainer BLACKBELT_T, KENJI, EVENT_BEAT_BLACKBELT_KENJI, BlackbeltKenji3SeenText, BlackbeltKenji3BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_BLACKBELT_KENJI
	opentext
	checkcellnum PHONE_BLACKBELT_KENJI
	iftrue .Registered
	checkevent EVENT_KENJI_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	special SampleKenjiBreakCountdown
	writetext BlackbeltKenjiAfterBattleText
	waitbutton
	setevent EVENT_KENJI_ASKED_FOR_PHONE_NUMBER
	scall Route45AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route45AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_BLACKBELT_KENJI
	ifequal PHONE_CONTACTS_FULL, Route45PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route45NumberDeclinedM
	gettrainername STRING_BUFFER_3, BLACKBELT_T, KENJI
	scall Route45RegisteredNumberM
	sjump Route45NumberAcceptedM

.Registered:
	checkflag ENGINE_KENJI_HAS_BIG_MUSHROOM
	iftrue .GiveMushrooms
	readvar VAR_KENJI_BREAK
	ifnotequal 1, Route45NumberAcceptedM
	checktime MORN
	iftrue .Morning
	checktime EVE | NITE
	iftrue .Night
	checkevent EVENT_KENJI_ON_BREAK
	iffalse Route45NumberAcceptedM
	scall Route45GiftM
	verbosegiveitem PP_UP
	iffalse .NoRoom
	clearevent EVENT_KENJI_ON_BREAK
	special SampleKenjiBreakCountdown
	sjump Route45NumberAcceptedM

.Morning:
	writetext BlackbeltKenjiMorningText
	waitbutton
	closetext
	end

.Night:
	writetext BlackbeltKenjiNightText
	waitbutton
	closetext
	end

.GiveMushrooms:
	scall Route45GiftM
	verbosegiveitem BIG_MUSHROOM, 3
	iffalse .NoRoom
	clearflag ENGINE_KENJI_HAS_BIG_MUSHROOM
	sjump Route45NumberAcceptedM

.NoRoom:
	sjump Route45PackFullM

Route45AskNumber1M:
	jumpstd AskNumber1MScript
	end

Route45AskNumber2M:
	jumpstd AskNumber2MScript
	end

Route45RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end

Route45NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end

Route45NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end

Route45PhoneFullM:
	jumpstd PhoneFullMScript
	end

Route45RematchM:
	jumpstd RematchMScript
	end

Route45GiftM:
	jumpstd GiftMScript
	end

Route45PackFullM:
	jumpstd PackFullMScript
	end

HikerParryHasIron:
	setevent EVENT_PARRY_IRON
	jumpstd PackFullMScript
	end

Route45RematchGiftM:
	jumpstd RematchGiftMScript
	end

TrainerHikerErik:
	trainer HIKER, ERIK, EVENT_BEAT_HIKER_ERIK, HikerErikSeenText, HikerErikBeatenText, 0, .Script

.Script:
	opentext
	writetext HikerErikAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerMichael:
	trainer HIKER, MICHAEL, EVENT_BEAT_HIKER_MICHAEL, HikerMichaelSeenText, HikerMichaelBeatenText, 0, .Script

.Script:
	opentext
	writetext HikerMichaelAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerParry:
	trainer HIKER, PARRY1, EVENT_BEAT_HIKER_PARRY, HikerParry3SeenText, HikerParry3BeatenText, 0, .Script

.Script:
	loadvar VAR_CALLERID, PHONE_HIKER_PARRY
	opentext
	checkflag ENGINE_PARRY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_HIKER_PARRY
	iftrue Route45NumberAcceptedM
	checkevent EVENT_PARRY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext HikerParryAfterBattleText
	promptbutton
	setevent EVENT_PARRY_ASKED_FOR_PHONE_NUMBER
	scall Route45AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route45AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_HIKER_PARRY
	ifequal PHONE_CONTACTS_FULL, Route45PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route45NumberDeclinedM
	gettrainername STRING_BUFFER_3, HIKER, PARRY1
	scall Route45RegisteredNumberM
	sjump Route45NumberAcceptedM

.WantsBattle:
	scall Route45RematchM
	winlosstext HikerParry3BeatenText, 0
	checkevent EVENT_GOT_MASTER_BALL_FROM_ELM
	iftrue .LoadFight3
; fallthrough
	loadtrainer HIKER, PARRY2
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARRY_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer HIKER, PARRY3
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_PARRY_READY_FOR_REMATCH
	checkevent EVENT_PARRY_IRON
	iftrue .HasIron
	checkevent EVENT_GOT_IRON_FROM_PARRY
	iftrue .GotIron
	scall Route45RematchGiftM
	verbosegiveitem IRON
	iffalse HikerParryHasIron
	setevent EVENT_GOT_IRON_FROM_PARRY
	sjump Route45NumberAcceptedM

.GotIron:
	end

.HasIron:
	opentext
	writetext HikerParryGivesIronText
	waitbutton
	verbosegiveitem IRON, 3
	iffalse HikerParryHasIron
	clearevent EVENT_PARRY_IRON
	setevent EVENT_GOT_IRON_FROM_PARRY
	sjump Route45NumberAcceptedM

TrainerHikerTimothy:
	trainer HIKER, TIMOTHY, EVENT_BEAT_HIKER_TIMOTHY, HikerTimothySeenText, HikerTimothyBeatenText, 0, .Script

.Script:
	opentext
	writetext HikerTimothyAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermRyan:
	trainer COOLTRAINERM, RYAN, EVENT_BEAT_COOLTRAINERM_RYAN, CooltrainermRyanSeenText, CooltrainermRyanBeatenText, 0, .Script

.Script:
	opentext
	writetext CooltrainermRyanAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfKelly:
	trainer COOLTRAINERF, KELLY, EVENT_BEAT_COOLTRAINERF_KELLY, CooltrainerfKellySeenText, CooltrainerfKellyBeatenText, 0, .Script

.Script:
	opentext
	writetext CooltrainerfKellyAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperQuentin:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CAMPER_QUENTIN
	iftrue .Defeated
	writetext CamperQuentinSeenText
	waitbutton
	closetext
	winlosstext CamperQuentinBeatenText, 0
	loadtrainer CAMPER, QUENTIN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CAMPER_QUENTIN
	closetext
	end

.Defeated:
	writetext CamperQuentinAfterBattleText
	waitbutton
	closetext
	end

Route45Sign:
	jumptext Route45SignText

Route45FruitTree1:
	fruittree FRUITTREE_ROUTE_45_1

Route45FruitTree2:
	fruittree FRUITTREE_ROUTE_45_2

Route45FruitTree3:
	fruittree FRUITTREE_ROUTE_45_3

Route45Nugget:
	itemball NUGGET

Route45Revive:
	itemball REVIVE

Route45Elixer:
	itemball ELIXER

Route45MaxPotion:
	itemball MAX_POTION

Route45HiddenPpUp:
	hiddenitem PP_UP, EVENT_ROUTE_45_HIDDEN_PP_UP

HikerErikSeenText:
	text "Be prepared for"
	line "anything!"

	para "Let me see if your"
	line "#MON have been"
	cont "raised properly!"
	done

HikerErikBeatenText:
	text "Oh, I lost that!"
	done

HikerErikAfterBattleText:
	text "I'll head back to"
	line "BLACKTHORN's ICE"

	para "PATH and train"
	line "some more."
	done

HikerMichaelSeenText:
	text "Yo! You're spunky!"
	line "But you know what?"

	para "When it comes to"
	line "sheer spunkiness,"
	cont "I'm the man!"
	done

HikerMichaelBeatenText:
	text "My #MON weren't"
	line "spunky enough!"
	done

HikerMichaelAfterBattleText:
	text "Boy, do I love"
	line "HP UP! Mmmm, yum!"

	para "I keep drinking my"
	line "#MON's!"

	para "I can't help it!"
	done

HikerParry3SeenText:
	text "My #MON are"
	line "power packed!"
	done

HikerParry3BeatenText:
	text "Wahahah! I'm the"
	line "big loser!"
	done

HikerParryAfterBattleText:
	text "I'm not much good"
	line "at thinking, see?"

	para "So, I just plow"
	line "ahead with power!"
	done

HikerTimothySeenText:
	text "Why do I climb"
	line "mountains?"

	para "Because they're"
	line "there."

	para "Why do I train"
	line "#MON?"

	para "Because they're"
	line "there!"
	done

HikerTimothyBeatenText:
	text "Losses…"
	line "They're there too!"
	done

HikerTimothyAfterBattleText:
	text "The best thing to"
	line "ever happen to me"

	para "was discovering"
	line "#MON."
	done

HikerParryGivesIronText:
	text "I just can't find"
	line "a way to win!"

	para "Keep it up!"

	para "Oh, and take this"
	line "--it's the gift"

	para "you couldn't take"
	line "when we last met."
	done

BlackbeltKenji3SeenText:
	text "I was training"
	line "here alone."

	para "Behold the fruits"
	line "of my labor!"
	done

BlackbeltKenji3BeatenText:
	text "Waaaargh!"
	done

BlackbeltKenjiAfterBattleText:
	text "This calls for"
	line "extreme measures."

	para "I must take to the"
	line "hills and train in"
	cont "solitude."
	done

BlackbeltKenjiMorningText:
	text "I'm going to train"
	line "a bit more before"
	cont "I break for lunch."
	done

BlackbeltKenjiNightText:
	text "We had plenty of"
	line "rest at lunch, so"

	para "now we're all"
	line "ready to go again!"

	para "We're going to"
	line "train again!"
	done

CooltrainermRyanSeenText:
	text "What are your"
	line "thoughts on rais-"
	cont "ing #MON?"
	done

CooltrainermRyanBeatenText:
	text "You've won my"
	line "respect."
	done

CooltrainermRyanAfterBattleText:
	text "I see you're rais-"
	line "ing your #MON"
	cont "with care."

	para "The bond you build"
	line "will save you in"
	cont "tough situations."
	done

CooltrainerfKellySeenText:
	text "What is your"
	line "battle strategy?"

	para "It is foolish to"
	line "use strong moves"
	cont "indiscriminately."
	done

CooltrainerfKellyBeatenText:
	text "Fine. I lost."
	done

CooltrainerfKellyAfterBattleText:
	text "I'm not in favor"
	line "of overly power-"
	cont "ful moves."

	para "I want to win, but"
	line "I also don't want"
	cont "to harm #MON."
	done

CamperQuentinSeenText:
	text "I'm really, really"
	line "tough!"
	done

CamperQuentinBeatenText:
	text "I was tough at the"
	line "BATTLE TOWER…"
	done

CamperQuentinAfterBattleText:
	text "Have you been to"
	line "the BATTLE TOWER?"

	para "I never, ever lose"
	line "there, but…"
	done

Route45SignText:
	text "ROUTE 45"
	line "MOUNTAIN RD. AHEAD"
	done

Route45_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  3, DARK_CAVE_BLACKTHORN_ENTRANCE, 1
	warp_event 17, 87, BLACKTHORN_PASS, 1
	warp_event 17, 88, BLACKTHORN_PASS, 2
	warp_event 17, 89, BLACKTHORN_PASS, 3

	def_coord_events
	; Six crossings, all the same shape: WALL abutment, two water tiles, WALL abutment.
	; Engage sits one tile out from the deck, revert two tiles out, so walking in always
	; crosses revert (gated on scene 1, so it is inert) before engage, and walking out
	; always crosses engage (gated on scene 0, inert) before revert.
	; The trailing entries per crossing are flanking reverts. The engage tiles sit on the
	; open riverbank, so a player can step off them sideways instead of onto the deck, which
	; would leave the bridge walkable and block the river. HOP_DOWN ledges count here: they
	; are LAND_TILE in collision_permissions.asm, so they are standable, not hop-through.
	; crossing 1: deck x = 10-13, y = 4-5
	coord_event  9,  4, 0, Route45BridgeWalkTrigger
	coord_event  9,  5, 0, Route45BridgeWalkTrigger
	coord_event 14,  4, 0, Route45BridgeWalkTrigger
	coord_event 14,  5, 0, Route45BridgeWalkTrigger
	coord_event  8,  4, 1, Route45BridgeSurfTrigger
	coord_event  8,  5, 1, Route45BridgeSurfTrigger
	coord_event 15,  4, 1, Route45BridgeSurfTrigger
	coord_event 15,  5, 1, Route45BridgeSurfTrigger
	coord_event  9,  3, 1, Route45BridgeSurfTrigger
	coord_event 14,  3, 1, Route45BridgeSurfTrigger
	coord_event 14,  6, 1, Route45BridgeSurfTrigger
	; crossing 2: deck x = 8-11, y = 24-25
	coord_event  7, 24, 0, Route45BridgeWalkTrigger
	coord_event  7, 25, 0, Route45BridgeWalkTrigger
	coord_event 12, 24, 0, Route45BridgeWalkTrigger
	coord_event 12, 25, 0, Route45BridgeWalkTrigger
	coord_event  6, 24, 1, Route45BridgeSurfTrigger
	coord_event  6, 25, 1, Route45BridgeSurfTrigger
	coord_event 13, 24, 1, Route45BridgeSurfTrigger
	coord_event 13, 25, 1, Route45BridgeSurfTrigger
	coord_event  7, 23, 1, Route45BridgeSurfTrigger
	coord_event  7, 26, 1, Route45BridgeSurfTrigger
	; crossing 3: deck x = 10-13, y = 36-37
	coord_event  9, 36, 0, Route45BridgeWalkTrigger
	coord_event  9, 37, 0, Route45BridgeWalkTrigger
	coord_event 14, 36, 0, Route45BridgeWalkTrigger
	coord_event 14, 37, 0, Route45BridgeWalkTrigger
	coord_event  8, 36, 1, Route45BridgeSurfTrigger
	coord_event  8, 37, 1, Route45BridgeSurfTrigger
	coord_event 15, 36, 1, Route45BridgeSurfTrigger
	coord_event 15, 37, 1, Route45BridgeSurfTrigger
	coord_event  9, 35, 1, Route45BridgeSurfTrigger
	coord_event  9, 38, 1, Route45BridgeSurfTrigger
	coord_event 14, 35, 1, Route45BridgeSurfTrigger
	coord_event 14, 38, 1, Route45BridgeSurfTrigger
	; crossing 4: deck x = 10-13, y = 48-49
	coord_event  9, 48, 0, Route45BridgeWalkTrigger
	coord_event  9, 49, 0, Route45BridgeWalkTrigger
	coord_event 14, 48, 0, Route45BridgeWalkTrigger
	coord_event 14, 49, 0, Route45BridgeWalkTrigger
	coord_event  8, 48, 1, Route45BridgeSurfTrigger
	coord_event  8, 49, 1, Route45BridgeSurfTrigger
	coord_event 15, 48, 1, Route45BridgeSurfTrigger
	coord_event 15, 49, 1, Route45BridgeSurfTrigger
	coord_event  9, 47, 1, Route45BridgeSurfTrigger
	coord_event 14, 47, 1, Route45BridgeSurfTrigger
	coord_event 14, 50, 1, Route45BridgeSurfTrigger
	; crossing 5: deck x = 8-11, y = 66-67
	coord_event  7, 66, 0, Route45BridgeWalkTrigger
	coord_event  7, 67, 0, Route45BridgeWalkTrigger
	coord_event 12, 66, 0, Route45BridgeWalkTrigger
	coord_event 12, 67, 0, Route45BridgeWalkTrigger
	coord_event  6, 66, 1, Route45BridgeSurfTrigger
	coord_event  6, 67, 1, Route45BridgeSurfTrigger
	coord_event 13, 66, 1, Route45BridgeSurfTrigger
	coord_event 13, 67, 1, Route45BridgeSurfTrigger
	coord_event  7, 68, 1, Route45BridgeSurfTrigger
	coord_event 12, 65, 1, Route45BridgeSurfTrigger
	coord_event 12, 68, 1, Route45BridgeSurfTrigger
	; crossing 6: deck x = 6-9, y = 82-83
	coord_event  5, 82, 0, Route45BridgeWalkTrigger
	coord_event  5, 83, 0, Route45BridgeWalkTrigger
	coord_event 10, 82, 0, Route45BridgeWalkTrigger
	coord_event 10, 83, 0, Route45BridgeWalkTrigger
	coord_event  4, 82, 1, Route45BridgeSurfTrigger
	coord_event  4, 83, 1, Route45BridgeSurfTrigger
	coord_event 11, 82, 1, Route45BridgeSurfTrigger
	coord_event 11, 83, 1, Route45BridgeSurfTrigger
	coord_event  5, 81, 1, Route45BridgeSurfTrigger
	; special triggers to account for flying from bridge
	coord_event  9, 85, 1, Route45BridgeSurfTrigger
	coord_event 11,  1, 1, Route45BridgeSurfTrigger
	coord_event 12,  1, 1, Route45BridgeSurfTrigger


	def_bg_events
	bg_event 17,  3, BGEVENT_READ, Route45Sign
	bg_event 17, 76, BGEVENT_ITEM, Route45HiddenPpUp

	def_object_events
	object_event 12, 16, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerErik, -1
	object_event 19, 63, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerMichael, -1
	object_event  6, 26, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerParry, -1
	object_event 13, 63, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerTimothy, -1
	object_event 17, 48, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltKenji, -1
	object_event 21, 16, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermRyan, -1
	object_event  6, 31, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfKelly, -1
	object_event 21, 77, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route45FruitTree1, -1
	object_event 20, 79, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route45FruitTree2, -1
	object_event 21, 75, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route45FruitTree3, -1
	object_event  7, 49, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45Nugget, EVENT_ROUTE_45_NUGGET
	object_event  5, 57, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45Revive, EVENT_ROUTE_45_REVIVE
	object_event  7, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45Elixer, EVENT_ROUTE_45_ELIXER
	object_event 15, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45MaxPotion, EVENT_ROUTE_45_MAX_POTION
	object_event  4, 68, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrainerCamperQuentin, -1
