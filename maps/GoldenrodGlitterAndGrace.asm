	object_const_def
	const GLITTERANDGRACE_POKEFAN_M
	const GLITTERANDGRACE_BEAUTY1
	const GLITTERANDGRACE_BEAUTY2
	const GLITTERANDGRACE_BEAUTY3
	const GLITTERANDGRACE_BEAUTY4
	const GLITTERANDGRACE_BEAUTY5
	const GLITTERANDGRACE_BEAUTY6
	const GLITTERANDGRACE_BEAUTY7
	const GLITTERANDGRACE_BEAUTY8
	const GLITTERANDGRACE_BEAUTY9
	const GLITTERANDGRACE_BEAUTY10
	const GLITTERANDGRACE_BEAUTY11
	const GLITTERANDGRACE_BEAUTY12
	const GLITTERANDGRACE_BEAUTY13
	const GLITTERANDGRACE_BEAUTY14

GoldenrodGlitterAndGrace_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodGlitterAndGracePokefanMScript:
	jumptextfaceplayer GoldenrodGlitterAndGracePokefanMText

GoldenrodGlitterAndGraceBeauty1Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty1Text

GoldenrodGlitterAndGraceBeauty2Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty2Text

GoldenrodGlitterAndGraceBeauty3Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty3Text

GoldenrodGlitterAndGraceBeauty4Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty4Text

GoldenrodGlitterAndGraceBeauty5Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty5Text

GoldenrodGlitterAndGraceBeauty6Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty6Text

GoldenrodGlitterAndGraceBeauty7Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty7Text

GoldenrodGlitterAndGraceBeauty8Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty8Text

GoldenrodGlitterAndGraceBeauty9Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty9Text

GoldenrodGlitterAndGraceBeauty10Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty10Text

GoldenrodGlitterAndGraceBeauty11Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty11Text

GoldenrodGlitterAndGraceBeauty12Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty12Text

GoldenrodGlitterAndGraceBeauty13Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty13Text

GoldenrodGlitterAndGraceBeauty14Script:
	jumptextfaceplayer GoldenrodGlitterAndGraceBeauty14Text

GoldenrodGlitterAndGracePokefanMText:
	text "WELCOME to …"
	line "GLITTER & GRACE!"
	done

GoldenrodGlitterAndGraceBeauty1Text:
	text "Isn't BROWN just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty2Text:
	text "Isn't RED just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty3Text:
	text "Isn't BLUE just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty4Text:
	text "Isn't GREEN just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty5Text:
	text "Isn't PINK just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty6Text:
	text "Isn't PURPLE just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty7Text:
	text "Isn't GRAY just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty8Text:
	text "Isn't TEAL just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty9Text:
	text "Isn't YELLOW just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty10Text:
	text "Isn't ORANGE just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty11Text:
	text "Isn't AZURE just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty12Text:
	text "Isn't WHITE just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty13Text:
	text "Isn't BLACK just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGraceBeauty14Text:
	text "Isn't TREE just"
	line "the prettiest?"
	done

GoldenrodGlitterAndGrace_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 13, GOLDENROD_CITY, 16
	warp_event  3, 13, GOLDENROD_CITY, 16

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGracePokefanMScript, -1
	object_event  8, 10, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty1Script, -1
	object_event 16,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty2Script, -1
	object_event  5, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty3Script, -1
	object_event  1,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty4Script, -1
	object_event 10,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty5Script, -1
	object_event 11, 12, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty6Script, -1
	object_event 14,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty7Script, -1
	object_event  7,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty8Script, -1
	object_event 17, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty9Script, -1
	object_event 18,  7, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty10Script, -1
	object_event  9,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty11Script, -1
	object_event  8,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_WHITE, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty12Script, -1
	object_event  2,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLACK, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty13Script, -1
	object_event 12,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceBeauty14Script, -1
