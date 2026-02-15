	object_const_def
	const AZALEALUMBERYARD_FISHER
	const AZALEALUMBERYARD_POKEFAN_M
	const AZALEALUMBERYARD_SAGE

AzaleaLumberYard_MapScripts:
	def_scene_scripts

	def_callbacks

AzaleaLumberYardFisherScript:
	faceplayer
	opentext
	writetext AzaleaLumberYardFisherText
	waitbutton
	closetext
	turnobject AZALEALUMBERYARD_FISHER, RIGHT
	end

AzaleaLumberYardPokefanScript:
	jumptextfaceplayer AzaleaLumberYardPokefanText

AzaleaLumberYardSageScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_LUMBER_YARD
	closetext
	end

AzaleaLumberYardFisherText:
	text "The LUMBER YARD"
	line "makes sure no one"
	cont "logs too much in"
	cont "ILEX FOREST."
	done

AzaleaLumberYardPokefanText:
	text "We do a lot of"
	line "construction and"
	cont "carving from the"
	cont "trees we cut down."

	para "That table is one"
	line "example. You can"
	cont "also buy a custom"
	cont "bed."
	done

AzaleaLumberYard_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, AZALEA_TOWN, 3
	warp_event  4,  9, AZALEA_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AzaleaLumberYardFisherScript, -1
	object_event  4,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AzaleaLumberYardPokefanScript, -1
	object_event  2,  3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaLumberYardSageScript, -1
