	object_const_def
	const ROUTE16FUCHSIASPEECHHOUSE_SUPER_NERD

Route16FuchsiaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route16FuchsiaSpeechHouseSuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKE_FLUTE
	iftrue .pokeflute
	writetext Route16FuchsiaSpeechExperienceText
	yesorno
	iffalse .no
	writetext Route16FuchsiaPokeFluteMtSilverText
	promptbutton
	verbosegiveitem POKE_FLUTE
	setevent EVENT_GOT_POKE_FLUTE
.pokeflute:
	writetext PokeFluteExplanationText
	waitbutton
	closetext
	end

.no:
	writetext Route16FuchsiaSpeechPokeFluteUsefulText
	waitbutton
	closetext
	end

Route16FuchsiaSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

Route16FuchsiaSpeechExperienceText:
	text "You're visiting"
	line "all the way from"
	cont "JOHTO?"

	para "Not many people"
	line "come this way,"
	cont "much less someone"
	cont "from so far away."

	para "Since you are"
	line "traveling so much,"

	para "may I share one of"
	line "my experiences"
	cont "with you?"
	done

Route16FuchsiaPokeFluteMtSilverText:
	text "This, my friend,"
	line "is the legendary"
	cont "POKé FLUTE!"

	para "I was doing some"
	line "mapping at the"
	cont "base of Mt. Silver"

	para "and stumbled upon"
	line "this under some"
	cont "ancient rubble."

	para "But I don't have"
	line "the needed musical"
	cont "talent to play it."

	para "Since you're still"
	line "adventuring, I"
	cont "want you to have"
	cont "it instead."
	done

PokeFluteExplanationText:
	text "According to my"
	line "research, this can"
	cont "wake up #MON"
	cont "from even the"
	cont "deepest sleep!"

	para "It should even"
	line "work while your"
	cont "#MON are in"
	cont "battle."

	para "Use it wisely!"

	para "And if you ever"
	line "wake up something"
	cont "interesting, don't"
	cont "forget to take"
	cont "notes for me, OK?"
	done

Route16FuchsiaSpeechPokeFluteUsefulText:
	text "Shucks, it's a"
	line "really good story."
	done

Route16FuchsiaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_16, 1
	warp_event  3,  7, ROUTE_16, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, Route16FuchsiaSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, Route16FuchsiaSpeechHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route16FuchsiaSpeechHouseSuperNerdScript, -1
