	object_const_def
	const CERULEANBASE3_ARIANA

CeruleanBase3_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanBase3ArianaScript:
	trainer EXECUTIVEF, EXECUTIVEF_3, EVENT_BEAT_ROCKET_EXECUTIVEF_3, ArianaBase3BeforeText, ArianaBase3WinText, 0, .Script

.Script:
	opentext
	writetext ArianaBase3AfterText
	waitbutton
	closetext
	end

ArianaBase3BeforeText:
	text "…You again."

	para "RUINS OF ALPH."
	line "I remember you."

	para "You cost us months"
	line "of work in JOHTO."

	para "I had hoped you"
	line "wouldn't make it"
	cont "this far."

	para "ARCHER is just"
	line "past me."

	para "You will not reach"
	line "him."
	done

ArianaBase3WinText:
	text "Impossible…"
	done

ArianaBase3AfterText:
	text "…"

	para "Three times now."

	para "You have beaten"
	line "me three times."

	para "I won't make"
	line "excuses."

	para "Go."
	line "Face ARCHER."

	para "But know that what"
	line "he's built in"
	cont "there cannot be"
	cont "dismantled by"
	cont "winning a battle."

	para "The #MON in"
	line "that chamber is"
	cont "beyond any of us"
	cont "now."
	done

CeruleanBase3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 10, CERULEAN_BASE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  9, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, CeruleanBase3ArianaScript, EVENT_CLEARED_CERULEAN_CAVE
