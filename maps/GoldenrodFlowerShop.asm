	object_const_def
	const GOLDENRODFLOWERSHOP_TEACHER
	const GOLDENRODFLOWERSHOP_FLORIA

GoldenrodFlowerShop_MapScripts:
	def_scene_scripts

	def_callbacks

FlowerShopTeacherScript:
	faceplayer
	opentext
	pokemart MARTTYPE_FLOWER, MART_FLOWER_SHOP
	closetext
	end

FlowerShopFloriaScript:
	faceplayer
	opentext
	checkflag ENGINE_PLAINBADGE
	iftrue .BeatWhitney
	writetext GoldenrodFlowerShopFloriaRangerBlockingPathText
	waitbutton
	closetext
	end

.BeatWhitney:
	writetext GoldenrodFlowerShopDangerInEcruteakText
	waitbutton
	closetext
	end

GoldenrodFlowerShopFloriaRangerBlockingPathText:
	text "I wanted to visit"
	line "my friend in"
	cont "ECRUTEAK CITY."

	para "But there's a"
	line "#MON RANGER"
	cont "blocking ROUTE 36."

	para "He says the road"
	line "is closed due to"
	cont "some emergency."

	para "I hope everything"
	line "is okay…"
	done

GoldenrodFlowerShopDangerInEcruteakText:
	text "I'm trying to help"
	line "my sis with the"
	cont "shop,"

	para "but I'm really"
	line "worried about what"
	cont "is happening in"
	cont "ECRUTEAK."
	done

GoldenrodFlowerShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 6
	warp_event  3,  7, GOLDENROD_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FlowerShopTeacherScript, -1
	object_event  5,  6, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FlowerShopFloriaScript, -1
