	object_const_def
	const VERMILION_MYSTERY_GIFT_HOUSE_GRAMPS
	const VERMILION_MYSTERY_GIFT_HOUSE_MACHOP

VermilionMysteryGiftHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionMysteryGiftHouseCarrieScript:
	faceplayer
	opentext
	checkflag ENGINE_DAILY_MYSTERY_GIFT
	iftrue .NoGift
	writetext MysterGiftText
	yesorno
	iffalse .Decline
	readvar VAR_ITEM_POCKET
	ifgreater 36, .ItemsNearlyFull
	readvar VAR_BALL_POCKET
	ifgreater 8, .BallsNearlyFull
.AskSave
	setflag ENGINE_DAILY_MYSTERY_GIFT
	writetext MysteryGift_SaveGame
	yesorno
	iffalse .Decline
	special TryQuickSave
	iffalse .Decline
	writetext MysteryGiftLinkUp
	playsound SFX_MOVE_DELETED
	waitsfx
	scall FindMysteryGiftItem
	iffalse .NoRoom
	scall FindMysteryGiftItem
	iffalse .NoRoom
	scall FindMysteryGiftItem
	iffalse .NoRoom
	writetext MysteryGiftReceivedText
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end

.NoRoom
	writetext MysterGiftNoRoom
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end

.NoGift
	writetext NoMysteryGiftText
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end

.Decline
	clearflag ENGINE_DAILY_MYSTERY_GIFT
	writetext DeclineMysteryGiftText
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN
	end

.ItemsNearlyFull
	writetext MysteryGiftItemPocketWarningText
	waitbutton
	jump .AskContinueAnyway

.BallsNearlyFull
	writetext MysteryGiftBallPocketWarningText
	waitbutton
.AskContinueAnyway
	writetext MysteryGiftAnywayText
	yesorno
	iffalse .Decline
	jump .AskSave

FindMysteryGiftItem:
	jumpstd MysteryGiftCarrieScript
	end

VermilionMysteryGiftHouseMomScript:
	jumptextfaceplayer VermilionMysteryGiftHouseMomText

MysterGiftText:
	text "MYSTERY GIFT!"
	line "MYSTERY GIFT!"

	para "Do you want to"
	line "share a MYSTERY"
	cont "GIFT?"
	done

MysteryGift_SaveGame:
	text "You need to save"
	line "your game before"
	cont "we share, 'kay?"
	done

MysteryGiftLinkUp:
	text "Okay! Let's link"
	line "up for a sec!"
	done

MysterGiftNoRoom:
	text "I guess too many"
	line "people shared with"
	cont "you! Hehe!"
	done

MysteryGiftItemPocketWarningText:
	text "…You don't have"
	line "much space in your"
	cont "ITEM POCKET."
	done

MysteryGiftBallPocketWarningText:
	text "…You don't have"
	line "much space in your"
	cont "BALL POCKET."
	done

MysteryGiftAnywayText:
	text "Do you want to"
	line "use MYSTERY GIFT"
	cont "anyway?"
	done

MysteryGiftReceivedText:
	text "Wow, I got really"
	line "cool items today!"
	cont "I hope you got"
	cont "something good!"

	para "Let's do this"
	line "again tomorrow!"
	done

NoMysteryGiftText:
	text "We've already"
	line "shared today."

	para "But I'd be happy"
	line "to share again"
	cont "tomorrow."
	done

DeclineMysteryGiftText:
	text "Oh..."

	para "Some other time,"
	line "okay?"
 	done

VermilionMysteryGiftHouseMomText:
	text "CARRIE watches a"
	line "lot of streamers."

	para "She wins a lot of"
	line "free giveaways;"
	cont "that's how she"
	cont "always has items"
	cont "to give away."
 	done

VermilionMysteryGiftHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 5
	warp_event  3,  7, VERMILION_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionMysteryGiftHouseCarrieScript, -1
	object_event  2,  3, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionMysteryGiftHouseMomScript, -1
