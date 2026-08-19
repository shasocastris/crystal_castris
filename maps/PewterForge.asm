	object_const_def
	const PEWTER_FORGE_SMITH

PewterForge_MapScripts:
	def_scene_scripts

	def_callbacks

PewterForgeSmithScript:
	faceplayer
	opentext
	writetext PewterForgeSmithText
	yesorno
	iffalse .Declined
	; Check the powder first, then take the bricks. takeitem removes
	; nothing when the player is short, so neither ingredient is lost.
	checkitem METAL_POWDER
	iffalse .NoMaterials
	takeitem BRICK_PIECE, 5
	iffalse .NoMaterials
	takeitem METAL_POWDER, 1
	; giveitem must come last: it sets wCurItem, which itemnotify names.
	giveitem IRON_PLATE
	iffalse .Refund
	writetext PewterForgeForgedText
	promptbutton
	specialsound
	itemnotify
	closetext
	end

.Refund:
	giveitem BRICK_PIECE, 5
	giveitem METAL_POWDER, 1
	writetext PewterForgePackFullText
	waitbutton
	closetext
	end

.NoMaterials:
	writetext PewterForgeNoMaterialsText
	waitbutton
	closetext
	end

.Declined:
	writetext PewterForgeDeclinedText
	waitbutton
	closetext
	end

PewterForgeFurnaceScript:
	jumptext PewterForgeFurnaceText

PewterForgeSmithText:
	text "I beat steel into"
	line "shape here."

	para "Bring me METAL"
	line "POWDER and five"
	cont "BRICK PIECES…"

	para "and I'll forge you"
	line "an IRON PLATE."

	para "Shall I get to"
	line "work?"
	done

PewterForgeForgedText:
	text "The bricks line"
	line "the furnace…"

	para "The powder melts"
	line "and folds flat."
	done

PewterForgeNoMaterialsText:
	text "You're short on"
	line "materials."

	para "I need METAL"
	line "POWDER and five"
	cont "BRICK PIECES."

	para "Smash the rocks in"
	line "the mountains."
	done

PewterForgeDeclinedText:
	text "Come back when"
	line "you're ready."
	done

PewterForgePackFullText:
	text "Your PACK is too"
	line "full to carry it."
	done

PewterForgeFurnaceText:
	text "The furnace roars"
	line "with white heat."
	done

PewterForge_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 3
	warp_event  3,  7, PEWTER_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_READ, PewterForgeFurnaceScript

	def_object_events
	object_event  4,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterForgeSmithScript, -1
