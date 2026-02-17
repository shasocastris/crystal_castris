	object_const_def
	const VERMILION_GRAMPS_HOUSE_GRAMPS
	const VERMILION_GRAMPS_HOUSE_MACHOP

VermilionGrampsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionGrampsHouseMachopOwner:
	jumptextfaceplayer VermilionGrampsHouseMachopOwnerText

VermilionGrampsHouseMachop:
	opentext
	writetext VermilionGrampsHouseMachopText1
	cry MACHOP
	waitbutton
	closetext
	earthquake 30
	opentext
	writetext VermilionGrampsHouseMachopText2
	waitbutton
	showemote EMOTE_SHOCK, VERMILION_GRAMPS_HOUSE_GRAMPS, 30
	writetext VermilionGrampsHouseGrampsStopThatText
	waitbutton
	closetext
	end

VermilionGrampsHouseMachopOwnerText:
	text "My #MON cleared"
	line "the land for this"
	cont "house."

	para "It didn't cost so"
	line "much in the end!"

	para "MACHOP smashed a"
	line "bunch of rocks and"
	cont "we used the BRICK"
	cont "PIECEs we found to"
	cont "build the walls"
	cont "and roof."
	done

VermilionGrampsHouseMachopText1:
	text "MACHOP: Guooh"
	line "gogogoh!"
	done

VermilionGrampsHouseMachopText2:
	text "A MACHOP is growl-"
	line "ing while stomping"
	cont "the ground flat."
	done

VermilionGrampsHouseGrampsStopThatText:
	text "MACHOP, cut that"
	line "out!"

	para "The house has been"
	line "built for more"
	cont "than a year!"
	done

VermilionGrampsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 11
	warp_event  3,  7, VERMILION_CITY, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionGrampsHouseMachopOwner, -1
	object_event  2,  3, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionGrampsHouseMachop, -1
