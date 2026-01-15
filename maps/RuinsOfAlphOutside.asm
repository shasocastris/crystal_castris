	object_const_def
	const RUINSOFALPHOUTSIDE_SCIENTIST_WERNER
	const RUINSOFALPHOUTSIDE_SCIENTIST_ENRICO
	const RUINSOFALPHOUTSIDE_SCIENTIST_NIELS
	const RUINSOFALPHOUTSIDE_SCIENTIST_EARNEST

RuinsOfAlphOutside_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RuinsOfAlphOutsideShrineCallback

RuinsOfAlphOutsideShrineCallback:
	readvar VAR_UNOWNCOUNT
	ifless NUM_UNOWN, .ShrineOff
	endcallback
.ShrineOff:
	changeblock 6, 24, $9C ; left floor
	endcallback

RuinsOfAlphOutsideScientistWerner_Script:
	faceplayer
	opentext
	checkevent EVENT_RUINS_OF_ALPH_ROCKETS
	iffalse .GetLost
	writetext WernerFight_Text
	waitbutton
	closetext
	winlosstext WernerWin_Text, 0
	loadtrainer SCIENTIST, WERNER
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SCIENTIST_WERNER
	opentext
	writetext WernerWarnOthers_Text
	waitbutton
	closetext
	applymovement RUINSOFALPHOUTSIDE_SCIENTIST_WERNER, RuinsOfAlphOutsideScientistWernerMovement
	playsound SFX_ENTER_DOOR
	disappear RUINSOFALPHOUTSIDE_SCIENTIST_WERNER
	waitsfx
	end

.GetLost
	writetext RuinsOfAlphOutsideScientistWerner_Text
	waitbutton
	closetext
	end

RuinsOfAlphOutsideScientistEnrico_Script:
	faceplayer
	opentext
	checkevent EVENT_RUINS_OF_ALPH_ROCKETS
	iffalse .NormalText
	writetext EnricoFight_Text
	waitbutton
	closetext
	winlosstext EnricoWin_Text, 0
	loadtrainer SCIENTIST, ENRICO
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SCIENTIST_ENRICO
	opentext
	writetext EnricoAfterBattle_Text
	waitbutton
	closetext
	applymovement RUINSOFALPHOUTSIDE_SCIENTIST_ENRICO, RuinsOfAlphOutsideScientistEnricoMovement
	playsound SFX_ENTER_DOOR
	disappear RUINSOFALPHOUTSIDE_SCIENTIST_ENRICO
	waitsfx
	end

.NormalText
	writetext RuinsOfAlphOutsideScientistEnrico_Text
	waitbutton
	closetext
	end

RuinsOfAlphOutsideScientistNiels_Script:
	faceplayer
	opentext
	checkevent EVENT_RUINS_OF_ALPH_ROCKETS
	iffalse .Research
	writetext NielsFight_Text
	waitbutton
	closetext
	winlosstext NielsWin_Text, 0
	loadtrainer SCIENTIST, NIELS
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SCIENTIST_NIELS
	opentext
	writetext NielsAfterBattle_Text
	waitbutton
	closetext
	applymovement RUINSOFALPHOUTSIDE_SCIENTIST_NIELS, RuinsOfAlphOutsideScientistNielsMovement
	playsound SFX_ENTER_DOOR
	disappear RUINSOFALPHOUTSIDE_SCIENTIST_NIELS
	waitsfx
	end

.Research
	writetext RuinsOfAlphOutsideScientistNiels_Text
	waitbutton
	closetext
	end

RuinsOfAlphOutsideScientistEarnest_Script:
	faceplayer
	opentext
	checkevent EVENT_RUINS_OF_ALPH_ROCKETS
	iffalse .Studying
	writetext EarnestFight_Text
	waitbutton
	closetext
	winlosstext EarnestWin_Text, 0
	loadtrainer SCIENTIST, EARNEST
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SCIENTIST_EARNEST
	opentext
	writetext EarnestAfterBattle_Text
	waitbutton
	closetext
	applymovement RUINSOFALPHOUTSIDE_SCIENTIST_EARNEST, RuinsOfAlphOutsideScientistEarnestMovement
	playsound SFX_ENTER_DOOR
	disappear RUINSOFALPHOUTSIDE_SCIENTIST_EARNEST
	waitsfx
	end

.Studying
	writetext RuinsOfAlphOutsideScientistEarnest_Text
	waitbutton
	closetext
	end

RuinsOfAlphOutsideMysteryChamberSign:
	jumptext RuinsOfAlphOutsideMysteryChamberSignText

RuinsOfAlphSign:
	jumptext RuinsOfAlphSignText

RuinsOfAlphResearchCenterSign:
	jumptext RuinsOfAlphResearchCenterSignText

RuinsOfAlphOutsideScientistWernerMovement:
RuinsOfAlphOutsideScientistEnricoMovement:
RuinsOfAlphOutsideScientistNielsMovement:
RuinsOfAlphOutsideScientistEarnestMovement:
	step UP
	step_end

WernerFight_Text:
	text "You there! This is"
	line "a restricted area!"
	
	para "We're conducting"
	line "critical research"
	cont "on the UNOWN!"
	done

WernerWin_Text:
	text "The patterns on"
	line "the walls-they"
	cont "look almost like"
	cont "#MON shapes…"
	done

WernerWarnOthers_Text:
	text "Tch! I must warn"
	line "the others!"
	
	para "If you are here,"
	line "the LEAGUE will be"
	cont "just behind!"
	done

RuinsOfAlphOutsideScientistWerner_Text:
	text "These ruins are"
	line "ancient. Over"
	cont "1500 years old!"
	done

EnricoFight_Text:
	text "An intruder?"

	para "I can't let you"
	line "disrupt our UNOWN"
	cont "capture operation!"
	done

EnricoWin_Text:
	text "Curses! My"
	line "calculations…"
	done

EnricoAfterBattle_Text:
	text "The wall patterns"
	line "suggest 26 unique"
	cont "symbols."

	para "If they represent"
	line "#MON as we"
	cont "suspect…"

	para "Well, that's why"
	line "we're solving the"
	cont "puzzles!"

	para "The executives"
	line "want us to confirm"
	cont "if #MON really"
	cont "live here."
	done

RuinsOfAlphOutsideScientistEnrico_Text:
	text "I'm cataloging the"
	line "different puzzle"
	cont "chambers here."
	
	para "We suspect that"
	line "each one might"
	cont "reveal different"
	cont "UNOWN!"
	done

NielsFight_Text:
	text "Have we been"
	line "discovered?"

	para "No matter, I can't"
	line "you stop our"
	cont "research."
	done

NielsWin_Text:
	text "Fascinating"
	line "results!"
	done

NielsAfterBattle_Text:
	text "The ancient texts"
	line "describe #MON"
	cont "living in these"
	cont "chambers."

	para "But in 10 years of"
	line "official research,"
	cont "no one has found"
	cont "any."
	done

RuinsOfAlphOutsideScientistNiels_Text:
	text "The text on the"
	line "ruin walls suggest"

	para "there are 26 types"
	line "of something."

	para "We believe they're"
	line "#MON. We just"
	cont "need proof."
	done

EarnestFight_Text:
	text "Another pest! We"
	line "don't have time"
	cont "for this!"

	para "We need to solve"
	line "these puzzles and"

	para "find the #MON"
	line "before the LEAGUE"
	cont "gets wind of this!"
	done

EarnestWin_Text:
	text "Blast! That hurt!"
	done

EarnestAfterBattle_Text:
	text "We haven't been"
	line "able to figure out"
	cont "the blocks in each"
	cont "chamber."

	para "Perhaps #MON"
	line "will reveal"
	cont "themselves when we"
	cont "solve the puzzles."

	para "If the rumors are"
	line "true, capturing"

	para "these #MON will"
	line "give TEAM ROCKET"
	cont "unprecedented power!"
	done

RuinsOfAlphOutsideScientistEarnest_Text:
	text "If #MON shaped"
	line "like these symbols"
	cont "really exist…"
	
	para "Is this where"
	line "human language"
	cont "originated?"
	done

RuinsOfAlphOutsideMysteryChamberSignText:
	text "MYSTERY STONE"
	line "PANEL CHAMBER"
	done

RuinsOfAlphSignText:
	text "RUINS OF ALPH"
	line "VISITORS WELCOME"
	done

RuinsOfAlphResearchCenterSignText:
	text "RUINS OF ALPH"
	line "RESEARCH CENTER"

	para "THE AUTHORITY ON"
	line "THE RUINS OF ALPH"
	done

RuinsOfAlphOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, RUINS_OF_ALPH_HO_OH_CHAMBER, 1
	warp_event 16,  7, RUINS_OF_ALPH_KABUTO_CHAMBER, 1
	warp_event  4, 29, RUINS_OF_ALPH_OMANYTE_CHAMBER, 1
	warp_event 18, 33, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 1
	warp_event 12, 14, RUINS_OF_ALPH_INNER_CHAMBER, 1
	warp_event 19, 11, RUINS_OF_ALPH_RESEARCH_CENTER, 1
	warp_event  6, 19, UNION_CAVE_B1F, 1
	warp_event  8, 27, UNION_CAVE_B1F, 2
	warp_event  9,  5, ROUTE_36_RUINS_OF_ALPH_GATE, 3
	warp_event 15, 20, ROUTE_32_RUINS_OF_ALPH_GATE, 1
	warp_event 15, 21, ROUTE_32_RUINS_OF_ALPH_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 18,  8, BGEVENT_READ, RuinsOfAlphOutsideMysteryChamberSign
	bg_event 14, 16, BGEVENT_READ, RuinsOfAlphSign
	bg_event 20, 12, BGEVENT_READ, RuinsOfAlphResearchCenterSign

	def_object_events
	object_event 16,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientistWerner_Script, EVENT_BEAT_SCIENTIST_WERNER
	object_event  2, 18, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientistEnrico_Script, EVENT_BEAT_SCIENTIST_ENRICO
	object_event  4, 30, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientistNiels_Script, EVENT_BEAT_SCIENTIST_NIELS
	object_event 18, 34, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphOutsideScientistEarnest_Script, EVENT_BEAT_SCIENTIST_EARNEST
