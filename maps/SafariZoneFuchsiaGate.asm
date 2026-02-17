	object_const_def
	const SAFARI_ZONE_FUCHSIA_GATE_CLERK
	const SAFARI_ZONE_FUCHSIA_GATE_CLERK_COOLTRAINER_F

SafariZoneFuchsiaGate_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneFuchsiaGateClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_SAFARI
	closetext
	end

SafariZoneFuchsiaGateCooltrainerFScript:
	jumptextfaceplayer SafariZoneFuchsiaGateCooltrainerFText

SafariZoneFuchsiaGateCooltrainerFText:
	text "The CLERK over"
	line "there sells seven"
	cont "types of BALLS,"

	para "all shipped from"
	line "JOHTO!"

	para "They're made by a"
	line "well-known crafter"
	cont "named KURT."
	done

SafariZoneFuchsiaGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, SAFARI_ZONE, 1
	warp_event  5,  0, SAFARI_ZONE, 2
	warp_event  4,  7, FUCHSIA_CITY, 7
	warp_event  5,  7, FUCHSIA_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneFuchsiaGateClerkScript, -1
	object_event  5,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SafariZoneFuchsiaGateCooltrainerFScript, -1