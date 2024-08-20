	object_const_def
	const AZALEAMART_CLERK
	const AZALEAMART_COOLTRAINER_M
	const AZALEAMART_BUG_CATCHER

AzaleaMart_MapScripts:
	def_scene_scripts

	def_callbacks

AzaleaMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_AZALEA
	closetext
	end

AzaleaMartCooltrainerMScript:
	jumptextfaceplayer AzaleaMartCooltrainerMText

AzaleaMartBugCatcherScript:
	jumptextfaceplayer AzaleaMartBugCatcherText

AzaleaMartCooltrainerMText:
	text "There's no GREAT"
	line "BALL here. They"

	para "are better for"
	line "catching #MON"
	cont "than a # BALL."

	para "I wish KURT would"
	line "make me some of"
	cont "his custom BALLS."

	para "They are sometimes"
	line "even better than"
	cont "an ULTRA BALL!"
	done

AzaleaMartBugCatcherText:
	text "Have you ever"
	line "taken part in a"

	para "Bug-Catching"
	line "Contest at the"
	cont "NATIONAL PARK?"

	para "I did once, but"
	line "all I could catch"
	cont "was a CATERPIE."

	para "I didn't even"
	line "battle it, I just"
	cont "threw a PARK BALL"
	cont "and caught it at"
	cont "full health."

	para "And guess what!"

	para "I won with that"
	line "CATERPIE. Isn't"
	cont "that great?"
	done

AzaleaMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, AZALEA_TOWN, 3
	warp_event  3,  7, AZALEA_TOWN, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaMartClerkScript, -1
	object_event  2,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaMartCooltrainerMScript, -1
	object_event  7,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaMartBugCatcherScript, -1
