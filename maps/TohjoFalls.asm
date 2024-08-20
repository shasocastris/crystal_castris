	object_const_def
	const TOHJOFALLS_POKE_BALL
	const TOHJOFALLS_MEWTWO

TohjoFalls_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, TohjoFallsMewtwoCallback

TohjoFallsMewtwoCallback:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .NoAppear
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear TOHJOFALLS_MEWTWO
	endcallback

.NoAppear:
	disappear TOHJOFALLS_MEWTWO
	endcallback

Mewtwo:
	faceplayer
	opentext
	writetext MewtwoText
	refreshscreen
	pokepic MEWTWO
	cry MEWTWO
	waitbutton
	closepokepic
	closetext
	setevent EVENT_FOUGHT_MEWTWO
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon MEWTWO, 70
	startbattle
	disappear TOHJOFALLS_MEWTWO
	reloadmapafterbattle
	end

MewtwoText:
	text "Mewtwo!"
	done

TohjoFallsMoonStone:
	itemball MOON_STONE

TohjoFalls_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 17, ROUTE_27, 2
	warp_event 25, 17, ROUTE_27, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TohjoFallsMoonStone, EVENT_TOHJO_FALLS_MOON_STONE
	object_event 14,  3, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Mewtwo, EVENT_TOHJO_FALLS_MEWTWO
