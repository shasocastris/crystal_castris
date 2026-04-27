	object_const_def
	const ROUTE5_POKEFAN_M
	const ROUTE5_BIG_SNORLAX

Route5_MapScripts:
	def_scene_scripts

	def_callbacks

Route5Snorlax:
	opentext
	special SnorlaxAwake
	iftrue .Awake
	writetext Route5SnorlaxSleepingText
	waitbutton
	closetext
	end

.Awake:
	writetext Route5RadioNearSnorlaxText
	pause 15
	cry SNORLAX
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 50
	startbattle
	disappear ROUTE5_BIG_SNORLAX
	setevent EVENT_FOUGHT_SNORLAX
	reloadmapafterbattle
	end

Route5PokefanMScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ROCKET_GRUNTM_31
	iffalse .RoadClosed
	writetext Route5RocketSeenText
	waitbutton
	closetext
	winlosstext Route5RocketBeaten_Text, 0
	loadtrainer GRUNTM, GRUNTM_3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_GRUNTM_3
	opentext
	writetext Route5RocketLeaves_Text
	waitbutton
	closetext
	applymovement ROUTE5_POKEFAN_M, Route5PokefanMovement
	playsound SFX_ENTER_DOOR
	disappear ROUTE5_POKEFAN_M
	waitsfx
	end

.RoadClosed
	writetext Route5PokefanMText
	waitbutton
	closetext
	end

Route5PokefanMovement:
	step UP
	step_end

Route5RocketSeenText:
	text "Someone told you"
	line "about the secret"
	cont "underground path?"

	para "That idiot …"

	para "I suppose I'll"
	line "have to deal with"
	line "you."
	done

Route5RocketBeaten_Text:
	text "What? I lost to"
	line "some brat?"
	done

Route5RocketLeaves_Text:
	text "I need to warn the"
	line "bosses. There's no"
	cont "way you will beat"
	cont "our entire crew."
	done

Route5PokefanMText:
	text "The road is closed"
	line "until the problem"

	para "at the POWER PLANT"
	line "is solved."
	done

Route5UndergroundPathSign:
	jumptext Route5UndergroundPathSignText

HouseForSaleSign:
	jumptext HouseForSaleSignText

Route5SnorlaxSleepingText:
	text "SNORLAX is snoring"
	line "peacefully…"
	done

Route5RadioNearSnorlaxText:
	text "The #GEAR was"
	line "placed near the"
	cont "sleeping SNORLAX…"

	para "…"

	para "SNORLAX woke up!"
	done

Route5UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

HouseForSaleSignText:
	text "What's this?"

	para "House for Sale…"
	line "Nobody lives here."
	done

Route5_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 15, ROUTE_5_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  8, 17, ROUTE_5_SAFFRON_GATE, 1
	warp_event  9, 17, ROUTE_5_SAFFRON_GATE, 2
	warp_event 10, 11, ROUTE_5_CLEANSE_TAG_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 17, 17, BGEVENT_READ, Route5UndergroundPathSign
	bg_event 10, 11, BGEVENT_READ, HouseForSaleSign

	def_object_events
	object_event 17, 16, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route5PokefanMScript, EVENT_BEAT_ROCKET_GRUNTM_3
	object_event  8, 14, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route5Snorlax, EVENT_ROUTE5_SNORLAX
