	object_const_def
	const CERULEANCAVE_MEWTWO

CeruleanCave_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, CeruleanCaveMewtwoCallback

CeruleanCaveMewtwoCallback:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .NoAppear
	readvar VAR_BADGES
	ifequal NUM_BADGES, .Appear
	sjump .NoAppear

.Appear:
	appear CERULEANCAVE_MEWTWO
	endcallback

.NoAppear:
	disappear CERULEANCAVE_MEWTWO
	endcallback

CeruleanCaveMewtwo:
	faceplayer
	opentext
	writetext CeruleanCaveMewtwoText
	cry MEWTWO
	pause 30
	closetext
	refreshscreen
	pokepic MEWTWO
	waitbutton
	closepokepic
	setevent EVENT_FOUGHT_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 70
	startbattle
	disappear CERULEANCAVE_MEWTWO
	reloadmapafterbattle
	end

CeruleanCaveMewtwoText:
	text "Mewtwo!"
	done

CeruleanCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 15, CERULEAN_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event 4, 3, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, CeruleanCaveMewtwo, CERULEANCAVE_MEWTWO
