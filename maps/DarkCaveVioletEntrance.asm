	object_const_def
	const DARKCAVEVIOLETENTRANCE_POKE_BALL1
	const DARKCAVEVIOLETENTRANCE_ROCK1
	const DARKCAVEVIOLETENTRANCE_ROCK2
	const DARKCAVEVIOLETENTRANCE_ROCK3
	const DARKCAVEVIOLETENTRANCE_ROCK4
	const DARKCAVEVIOLETENTRANCE_POKE_BALL2
	const DARKCAVEVIOLETENTRANCE_POKE_BALL3
	const DARKCAVEVIOLETENTRANCE_POKE_BALL4
	const DARKCAVEVIOLETENTRANCE_POKE_BALL5
	const DARKCAVEVIOLETENTRANCE_POKE_BALL6
	const DARKCAVEVIOLETENTRANCE_POKE_BALL7
	const DARKCAVEVIOLETENTRANCE_POKE_BALL8
	const DARKCAVEVIOLETENTRANCE_LASS
	const DARKCAVEVIOLETENTRANCE_SUPER_NERD
	const DARKCAVEVIOLETENTRANCE_YOUNGSTER

DarkCaveVioletEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerLassMarge:
	trainer LASS, MARGE, EVENT_BEAT_LASS_MARGE, LassMargeSeenText, LassMargeBeatenText, 0, .Script

.Script:
	opentext
	writetext LassMargeAfterBattleText
	waitbutton
	closetext
	end

TrainerSuperNerdJay:
	trainer SUPER_NERD, JAY, EVENT_BEAT_SUPER_NERD_JAY, SuperNerdJaySeenText, SuperNerdJayBeatenText, 0, .Script

.Script:
	opentext
	writetext SuperNerdJayAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperLeroy:
	trainer CAMPER, LEROY, EVENT_BEAT_CAMPER_LEROY, CamperLeroySeenText, CamperLeroyBeatenText, 0, .Script

.Script:
	opentext
	writetext CamperLeroyAfterBattleText
	waitbutton
	closetext
	end

DarkCaveVioletEntranceEther:
	itemball ETHER

DarkCaveVioletEntranceFullHeal:
	itemball FULL_HEAL

DarkCaveVioletEntranceHyperPotion:
	itemball HYPER_POTION

DarkCaveVioletEntranceNugget:
	itemball NUGGET

DarkCaveVioletEntranceRareCandy:
	itemball RARE_CANDY

DarkCaveVioletEntranceRevive:
	itemball REVIVE

DarkCaveVioletEntranceProtein:
	itemball PROTEIN

DarkCaveVioletEntranceKingsRock:
	itemball KINGS_ROCK

DarkCaveVioletEntranceRock:
	jumpstd SmashRockScript

DarkCaveVioletEntranceHiddenElixer:
	hiddenitem ELIXER, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_ELIXER

DarkCaveVioletEntranceHiddenMoonStone:
	hiddenitem MOON_STONE, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_MOON_STONE

DarkCaveVioletEntranceHiddenMetalCoat:
	hiddenitem METAL_COAT, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HIDDEN_METAL_COAT

LassMargeSeenText:
	text "Oh thank goodness!"
	line "Another person!"

	para "I've been lost in"
	line "here for hours!"

	para "Maybe if I battle"
	line "you, someone will"
	cont "hear us!"
	done

LassMargeBeatenText:
	text "At least I'm not"
	line "alone anymore!"
	done

LassMargeAfterBattleText:
	text "These tunnels all"
	line "look the same in"
	cont "the dark!"

	para "Do you know the"
	line "way out? I just"
	cont "want to go home!"

	para "Next time I'm"
	line "bringing a MAP!"
	done

SuperNerdJaySeenText:
	text "Excellent! Another"
	line "cave explorer!"

	para "I'm mapping every"
	line "passage and"
	cont "cataloging the"
	cont "#MON here!"

	para "Let's compare our"
	line "findings!"
	done

SuperNerdJayBeatenText:
	text "Fascinating battle"
	line "techniques!"
	done

SuperNerdJayAfterBattleText:
	text "This cave system"
	line "is incredible!"

	para "Multiple entrances"
	line "and underground,"
	cont "all with rare"
	cont "#MON."
	done

CamperLeroySeenText:
	text "Ah, the peace and"
	line "quiet of the cave!"

	para "No crowds, no"
	line "noise, just me"
	cont "and my #MON!"

	para "Though I guess"
	line "you'll do for"
	cont "company!"
	done

CamperLeroyBeatenText:
	text "That was a nice"
	line "break from the"
	cont "silence!"
	done

CamperLeroyAfterBattleText:
	text "I love camping in"
	line "places like this."

	para "Away from all the"
	line "hustle and bustle"
	cont "of the cities!"
	done

DarkCaveVioletEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, ROUTE_31, 3
	warp_event 17,  1, DARK_CAVE_BLACKTHORN_ENTRANCE, 2
	warp_event 35, 33, ROUTE_46, 3
	warp_event 37,  5, DARK_CAVE_VIOLET_ENTRANCE, 5
	warp_event  7, 25, DARK_CAVE_VIOLET_ENTRANCE, 4

	def_coord_events

	def_bg_events
	bg_event 26,  3, BGEVENT_ITEM, DarkCaveVioletEntranceHiddenElixer
	bg_event 22, 33, BGEVENT_ITEM, DarkCaveVioletEntranceHiddenMoonStone
	bg_event  3, 31, BGEVENT_ITEM, DarkCaveVioletEntranceHiddenMetalCoat

	def_object_events
	object_event  6,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceEther, EVENT_DARK_CAVE_VIOLET_ENTRANCE_ETHER
	object_event 16, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 27,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event  7, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 36, 31, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 36, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceFullHeal, EVENT_DARK_CAVE_VIOLET_ENTRANCE_FULL_HEAL
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceHyperPotion, EVENT_DARK_CAVE_VIOLET_ENTRANCE_HYPER_POTION
	object_event 30, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceNugget, EVENT_DARK_CAVE_VIOLET_ENTRANCE_NUGGET
	object_event 21, 28, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 17, 32, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DarkCaveVioletEntranceRock, -1
	object_event 19, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceRareCandy, EVENT_DARK_CAVE_VIOLET_ENTRANCE_RARE_CANDY
	object_event 12, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceRevive, EVENT_DARK_CAVE_VIOLET_ENTRANCE_REVIVE
	object_event  4, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceProtein, EVENT_DARK_CAVE_VIOLET_ENTRANCE_PROTEIN
	object_event 18, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, DarkCaveVioletEntranceKingsRock, EVENT_DARK_CAVE_VIOLET_ENTRANCE_KINGS_ROCK
	object_event 31, 14, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_TRAINER, 3, TrainerLassMarge, -1
	object_event 10, 24, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerSuperNerdJay, -1
	object_event 22, 31, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperLeroy, -1
; LASS 31, 14
; SUPER_NERD 10, 24
; CAMPER 22, 31