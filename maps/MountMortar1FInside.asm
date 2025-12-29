	object_const_def
	const MOUNTMORTAR1FINSIDE_BOULDER
	const MOUNTMORTAR1FINSIDE_POKE_BALL1
	const MOUNTMORTAR1FINSIDE_POKE_BALL2
	const MOUNTMORTAR1FINSIDE_POKE_BALL3
	const MOUNTMORTAR1FINSIDE_POKE_BALL4
	const MOUNTMORTAR1FINSIDE_POKE_BALL5
	const MOUNTMORTAR1FINSIDE_SUPER_NERD1
	const MOUNTMORTAR1FINSIDE_SUPER_NERD2
	const MOUNTMORTAR1FINSIDE_POKE_BALL6
	const MOUNTMORTAR1FINSIDE_POKE_BALL7
	const MOUNTMORTAR1FINSIDE_SUPER_NERD3
	const MOUNTMORTAR1FINSIDE_SUPER_NERD4

MountMortar1FInside_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokemaniacMiller:
	trainer POKEMANIAC, MILLER, EVENT_BEAT_POKEMANIAC_MILLER, PokemaniacMillerSeenText, PokemaniacMillerBeatenText, 0, .Script

.Script:
	opentext
	writetext PokemaniacMillerAfterBattleText
	waitbutton
	closetext
	end

TrainerSuperNerdMarkus:
	trainer SUPER_NERD, MARKUS, EVENT_BEAT_SUPER_NERD_MARKUS, SuperNerdMarkusSeenText, SuperNerdMarkusBeatenText, 0, .Script

.Script:
	opentext
	writetext SuperNerdMarkusAfterBattleText
	waitbutton
	closetext
	end

TrainerSuperNerdRoss:
	trainer SUPER_NERD, RUSS, EVENT_BEAT_SUPER_NERD_RUSS, SuperNerdRussSeenText, SuperNerdRussBeatenText, 0, .Script

.Script:
	opentext
	writetext SuperNerdRussAfterBattleText
	waitbutton
	closetext
	end

TrainerSuperNerdNorton:
	trainer SUPER_NERD, NORTON, EVENT_BEAT_SUPER_NERD_NORTON, SuperNerdNortonSeenText, SuperNerdNortonBeatenText, 0, .Script

.Script:
	opentext
	writetext SuperNerdNortonAfterBattleText
	waitbutton
	closetext
	end

MountMortar1FBoulder:
	jumpstd StrengthBoulderScript

MountMortar1FInsideEscapeRope:
	itemball ESCAPE_ROPE

MountMortar1FInsideMaxRevive:
	itemball MAX_REVIVE

MountMortar1FInsideHyperPotion:
	itemball HYPER_POTION

MountMortar1FInsideMaxPotion:
	itemball MAX_POTION

MountMortar1FInsideNugget:
	itemball NUGGET

MountMortar1FInsideIron:
	itemball IRON

MountMortar1FInsideUltraBall:
	itemball ULTRA_BALL

MountMortar1FInsideRock:
	jumpstd SmashRockScript

MountMortar1FInsideHiddenMaxRepel:
	hiddenitem MAX_REPEL, EVENT_MOUNT_MORTAR_1F_INSIDE_HIDDEN_MAX_REPEL

MountMortar1FInsideHiddenZinc:
	hiddenitem ZINC, EVENT_MOUNT_MORTAR_1F_INSIDE_HIDDEN_ZINC

MountMortar1FInsideHiddenKingsRock:
	hiddenitem KINGS_ROCK, EVENT_MOUNT_MORTAR_1F_INSIDE_HIDDEN_KINGS_ROCK

MountMortar1FInsideHiddenMistStone:
	hiddenitem MIST_STONE, EVENT_MOUNT_MORTAR_1F_INSIDE_HIDDEN_MIST_STONE

PokemaniacMillerSeenText:
	text "I'm not losing"
	line "this time!"
	done

PokemaniacMillerBeatenText:
	text "I lost to some"
	line "kid…?"
	done

PokemaniacMillerAfterBattleText:
	text "A while back, this"
	line "karate dude wanted"

	para "to battle. He was"
	line "ridiculously good."

	para "He just thrashed"
	line "us silly."

	para "He went in deeper"
	line "saying it was for"

	para "his training. I"
	line "wonder how he is?"
	done

SuperNerdMarkusSeenText:
	text "Hey! HUGH!"
	done

SuperNerdMarkusBeatenText:
	text "I mistook you for"
	line "someone else…"
	done

SuperNerdMarkusAfterBattleText:
	text "I came to explore"
	line "MT.MORTAR, but I"

	para "got separated from"
	line "my partner…"

	para "Did you run into a"
	line "trainer who uses a"

	para "SEADRA that knows"
	line "WATERFALL?"
	done

SuperNerdRussSeenText:
	text "Fascinating! This"
	line "cave's ecosystem"
	cont "is unique!"

	para "I'm cataloging"
	line "rare #MON that"
	cont "live only here!"

	para "Let me study your"
	line "battle techniques!"
	done

SuperNerdRussBeatenText:
	text "Excellent data"
	line "collected!"
	done

SuperNerdRussAfterBattleText:
	text "The cave's mineral"
	line "composition"
	cont "affects #MON"
	cont "evolution!"

	para "My research could"
	line "revolutionize"
	cont "#MON breeding!"
	done

SuperNerdNortonSeenText:
	text "The acoustic"
	line "properties of this"
	cont "cave are amazing!"

	para "Want to test my"
	line "theories?"
	done

SuperNerdNortonBeatenText:
	text "My calculations"
	line "were off!"
	done

SuperNerdNortonAfterBattleText:
	text "Echo patterns help"
	line "#MON navigate"
	cont "in darkness!"

	para "I'm developing"
	line "new training"
	cont "methods based on"
	cont "cave acoustics!"
	done

MountMortar1FInside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 47, MOUNT_MORTAR_1F_OUTSIDE, 5
	warp_event 29, 47, MOUNT_MORTAR_1F_OUTSIDE, 6
	warp_event  5, 39, MOUNT_MORTAR_1F_OUTSIDE, 8
	warp_event 33, 41, MOUNT_MORTAR_1F_OUTSIDE, 9
	warp_event  3, 19, MOUNT_MORTAR_B1F, 1
	warp_event  9,  9, MOUNT_MORTAR_2F_INSIDE, 2

	def_coord_events

	def_bg_events
	bg_event 31,  9, BGEVENT_ITEM, MountMortar1FInsideHiddenMaxRepel
	bg_event 28, 37, BGEVENT_ITEM, MountMortar1FInsideHiddenZinc
	bg_event  6, 29, BGEVENT_ITEM, MountMortar1FInsideHiddenKingsRock
	bg_event  4,  4, BGEVENT_ITEM, MountMortar1FInsideHiddenMistStone

	def_object_events
	object_event 21, 43, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortar1FBoulder, -1
	object_event 37, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideEscapeRope, EVENT_MOUNT_MORTAR_1F_INSIDE_ESCAPE_ROPE
	object_event 16, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideMaxRevive, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_REVIVE
	object_event 29, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideHyperPotion, EVENT_MOUNT_MORTAR_1F_INSIDE_HYPER_POTION
	object_event 22, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideMaxPotion, EVENT_MOUNT_MORTAR_1F_INSIDE_MAX_POTION
	object_event 36,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideNugget, EVENT_MOUNT_MORTAR_1F_INSIDE_NUGGET
	object_event 33, 43, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacMiller, -1
	object_event 24, 28, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerSuperNerdMarkus, -1
	object_event  8, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideIron, EVENT_MOUNT_MORTAR_1F_INSIDE_IRON
	object_event 17, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FInsideUltraBall, EVENT_MOUNT_MORTAR_1F_INSIDE_ULTRA_BALL
	object_event 10, 27, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerSuperNerdRoss, -1
	object_event 27,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerSuperNerdNorton, -1
	object_event 18, 46, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortar1FInsideRock, -1
