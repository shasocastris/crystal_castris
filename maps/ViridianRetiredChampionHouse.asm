	object_const_def
	const VIRIDIAN_RETIRED_CHAMPION_HOUSE_CLERK

ViridianRetiredChampionHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianRetiredChampionScript:
	faceplayer
	opentext
	; Has the player beaten the Trainer House?
	checkevent EVENT_VIRIDIAN_TRAINER_HOUSE_CLEARED
	iftrue .Unlocked
	writetext RetiredChampionLockedText
	waitbutton
	closetext
	end

.Unlocked:
	writetext RetiredChampionIntroText
	promptbutton
	writetext RetiredChampionDrinkRequestText
	; Show drink menu
	loadmenu .DrinkMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .FreshWater
	ifequal 2, .SodaPop
	ifequal 3, .Lemonade
	; Chose CANCEL or nothing
	writetext RetiredChampionMaybeNextTimeText
	waitbutton
	closetext
	end

.FreshWater:
	checkitem FRESH_WATER
	iffalse .NoDrink
	writetext RetiredChampionFreshWaterText
	promptbutton
	loadmenu .FreshWaterMovesMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .TeachSeismicToss
	ifequal 2, .TeachCounter
	ifequal 3, .TeachMimic
	ifequal 4, .TeachReflect
	sjump .Cancelled

.SodaPop:
	checkitem SODA_POP
	iffalse .NoDrink
	writetext RetiredChampionSodaPopText
	promptbutton
	loadmenu .SodaPopMovesMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .TeachBodySlam
	ifequal 2, .TeachSubstitute
	ifequal 3, .TeachTriAttack
	ifequal 4, .TeachMegaPunch
	sjump .Cancelled

.Lemonade:
	checkitem LEMONADE
	iffalse .NoDrink
	writetext RetiredChampionLemonadeText
	promptbutton
	loadmenu .LemonadeMovesMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .TeachSwordsDance
	ifequal 2, .TeachDoubleEdge
	ifequal 3, .TeachMegaKick
	ifequal 4, .TeachSoftboiled
	sjump .Cancelled

; --- Teach routines ---
; Fresh Water moves
.TeachSeismicToss:
	loadmoveindex SEISMIC_TOSS
	sjump .DoTeachFreshWater

.TeachCounter:
	loadmoveindex COUNTER
	sjump .DoTeachFreshWater

.TeachMimic:
	loadmoveindex MIMIC
	sjump .DoTeachFreshWater

.TeachReflect:
	loadmoveindex REFLECT
	sjump .DoTeachFreshWater

; Soda Pop moves
.TeachBodySlam:
	loadmoveindex BODY_SLAM
	sjump .DoTeachSodaPop

.TeachSubstitute:
	loadmoveindex SUBSTITUTE
	sjump .DoTeachSodaPop

.TeachTriAttack:
	loadmoveindex TRI_ATTACK
	sjump .DoTeachSodaPop

.TeachMegaPunch:
	loadmoveindex MEGA_PUNCH
	sjump .DoTeachSodaPop

; Lemonade moves
.TeachSwordsDance:
	loadmoveindex SWORDS_DANCE
	sjump .DoTeachLemonade

.TeachDoubleEdge:
	loadmoveindex DOUBLE_EDGE
	sjump .DoTeachLemonade

.TeachMegaKick:
	loadmoveindex MEGA_KICK
	sjump .DoTeachLemonade

.TeachSoftboiled:
	loadmoveindex SOFTBOILED
	sjump .DoTeachLemonade

; --- Drink-specific teach paths ---
.DoTeachFreshWater:
	writetext RetiredChampionTeachMoveText
	special MoveTutor
	ifequal FALSE, .SuccessFreshWater
	sjump .Incompatible

.DoTeachSodaPop:
	writetext RetiredChampionTeachMoveText
	special MoveTutor
	ifequal FALSE, .SuccessSodaPop
	sjump .Incompatible

.DoTeachLemonade:
	writetext RetiredChampionTeachMoveText
	special MoveTutor
	ifequal FALSE, .SuccessLemonade
	sjump .Incompatible

.SuccessFreshWater:
	takeitem FRESH_WATER
	sjump .TaughtMove

.SuccessSodaPop:
	takeitem SODA_POP
	sjump .TaughtMove

.SuccessLemonade:
	takeitem LEMONADE
	sjump .TaughtMove

.TaughtMove:
	writetext RetiredChampionTaughtMoveText
	waitbutton
	closetext
	end

.Incompatible:
	writetext RetiredChampionIncompatibleText
	waitbutton
	closetext
	end

.NoDrink:
	writetext RetiredChampionNoDrinkText
	waitbutton
	closetext
	end

.Cancelled:
	writetext RetiredChampionMaybeNextTimeText
	waitbutton
	closetext
	end

; --- Menus ---

.DrinkMenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .DrinkMenuData
	db 1

.DrinkMenuData:
	db STATICMENU_CURSOR
	db 4
	db "FRESH WATER@"
	db "SODA POP@"
	db "LEMONADE@"
	db "CANCEL@"

.FreshWaterMovesMenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .FreshWaterMovesData
	db 1

.FreshWaterMovesData:
	db STATICMENU_CURSOR
	db 4
	db "SEISMIC TOSS@"
	db "COUNTER@"
	db "MIMIC@"
	db "REFLECT@"

.SodaPopMovesMenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .SodaPopMovesData
	db 1

.SodaPopMovesData:
	db STATICMENU_CURSOR
	db 4
	db "BODY SLAM@"
	db "SUBSTITUTE@"
	db "TRI ATTACK@"
	db "MEGA PUNCH@"

.LemonadeMovesMenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .LemonadeMovesData
	db 1

.LemonadeMovesData:
	db STATICMENU_CURSOR
	db 4
	db "SWORDS DANCE@"
	db "DOUBLE-EDGE@"
	db "MEGA KICK@"
	db "SOFTBOILED@"

; --- Dialogue ---

RetiredChampionLockedText:
	text "Hmph. Another"
	line "young trainer."

	para "Come talk to me"
	line "when you've proven"
	cont "yourself."

	para "Win at the TRAINER"
	line "HOUSE next door."
	cont "Then we'll talk."
	done

RetiredChampionIntroText:
	text "So you beat the"
	line "TRAINER HOUSE."

	para "Not bad. I used to"
	line "compete in the"
	cont "INDIGO LEAGUE"
	cont "myself, years ago."

	para "Back then we had"
	line "techniques that"
	cont "aren't taught"
	cont "anymore."

	para "I could show your"
	line "#MON a thing or"
	cont "two… for a price."
	done

RetiredChampionDrinkRequestText:
	text "These old bones"
	line "get parched."

	para "Bring me a drink"
	line "and I'll teach"
	cont "your #MON a new"
	cont "move."

	para "The better the"
	line "drink, the better"
	cont "the technique."
	done

RetiredChampionFreshWaterText:
	text "Fresh Water, eh?"
	line "Simple but honest."

	para "I'll show you some"
	line "reliable moves."
	done

RetiredChampionSodaPopText:
	text "Soda Pop! Now"
	line "we're talking."

	para "I've got some real"
	line "crowd-pleasers"
	cont "for you."
	done

RetiredChampionLemonadeText:
	text "Lemonade! You know"
	line "how to treat an"
	cont "old champion."

	para "Alright, I'll show"
	line "you the techniques"
	cont "that won me my"
	cont "trophies."
	done

RetiredChampionTeachMoveText:
	text "Alright, which"
	line "#MON should"
	cont "learn this?"
	done

RetiredChampionTaughtMoveText:
	text "There you go."

	para "That's a technique"
	line "from a bygone era."
	cont "Use it well."
	done

RetiredChampionIncompatibleText:
	text "No? Well, come"
	line "back any time."

	para "I'm not going"
	line "anywhere."
	done

RetiredChampionNoDrinkText:
	text "You don't have"
	line "that drink."

	para "An old friend runs"
	line "a shop in MT. MOON"
	cont "that sells what"
	cont "I'd like."
	done

RetiredChampionMaybeNextTimeText:
	text "Come back when"
	line "you're ready."
	done

ViridianRetiredChampionHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 4
	warp_event  3,  7, VIRIDIAN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_UNUSED_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, ViridianRetiredChampionScript, -1
