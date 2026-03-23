	object_const_def
	const LAVRADIOTOWER5F_DIRECTOR    ; SPRITE_GENTLEMAN
	const LAVRADIOTOWER5F_PROTON      ; SPRITE_PHARMACIST

LavRadioTower5F_MapScripts:
	def_scene_scripts

	def_callbacks

LavRadioTower5FGentlemanScript:
	jumptextfaceplayer LavRadioTower5FGentlemanText

LavRadioTower5FGentlemanText:
	text "Thanks for getting"
	line "rid of those guys!"

	para "But we still have"
	line "to fix the power"
	cont "plant!"
	done

LavRadioTower5FPharmacistScript:
	setevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	jumptextfaceplayer LavRadioTower5FPharmacistText

LavRadioTower5FPharmacistText:
	text "Tch! You and that"
	line "red-headed menace!"

	para "You might have"
	line "caught me, but the"
	cont "others won't be as"
	cont "easy!"
	done

LavRadioTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, LAV_RADIO_TOWER_4F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavRadioTower5FGentlemanScript, -1
	object_event  5,  6, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 5, LavRadioTower5FPharmacistScript, -1
