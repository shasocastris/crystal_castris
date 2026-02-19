	object_const_def
	const LAVENDER_ODDITIES_SHOP_SAILOR
	const LAVENDER_ODDITIES_SHOP_GENTLEMAN
	const LAVENDER_ODDITIES_SHOP_POKEFAN_M

LavenderOdditiesShop_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderOdditiesShopSailorScript:
	faceplayer
	opentext
	writetext LavenderOdditiesShopSailorText
	promptbutton
	pokemart MARTTYPE_ODDITIES, MART_LAVENDER_ODDITIES_2
	closetext
	end

LavenderOdditiesShopGentlemanScript:
	faceplayer
	opentext
	writetext LavenderOdditiesShopGentlemanText
	promptbutton
	pokemart MARTTYPE_ODDITIES, MART_LAVENDER_ODDITIES_1
	closetext
	end

LavenderOdditiesShopPokefanMScript:
	jumptextfaceplayer LavenderOdditiesShopPokefanMText

LavenderOdditiesShopSailorText:
	text "I've explored"
	line "caves and tunnels"
	cont "all across KANTO."

	para "Need supplies for"
	line "the road? I've got"
	cont "you covered."
	done

LavenderOdditiesShopGentlemanText:
	text "Ah, a discerning"
	line "customer."

	para "I collect rare"
	line "items from around"
	cont "the world."

	para "Perhaps something"
	line "here will catch"
	cont "your eye."
	done

LavenderOdditiesShopPokefanMText:
	text "This place is run"
	line "by a father and"
	cont "son."

	para "The old GENTLEMAN"
	line "sells strange"
	cont "charms and"
	cont "curiosities."

	para "His son handles"
	line "the practical"
	cont "stuff. Ropes,"
	cont "repellents…"

	para "Between the two of"
	line "them, you can gear"
	cont "up for anything."
	done

LavenderOdditiesShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 5
	warp_event  3,  7, LAVENDER_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, LavenderOdditiesShopSailorScript, -1
	object_event  9,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, LavenderOdditiesShopGentlemanScript, -1
	object_event  6,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, LavenderOdditiesShopPokefanMScript, -1
