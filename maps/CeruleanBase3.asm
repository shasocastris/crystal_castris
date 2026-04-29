	object_const_def
	const CERULEANBASE3_ARIANA
	const CERULEANBASE3_ARCHER
	const CERULEANBASE3_MEWTWO

CeruleanBase3_MapScripts:
	def_scene_scripts
	scene_script CeruleanBase3ArcherScene, SCENE_CERULEANBASE3_ARCHER
	scene_script CeruleanBase3Noop,        SCENE_CERULEANBASE3_NOOP

	def_callbacks

CeruleanBase3ArcherScene:
	sdefer CeruleanBase3ArcherApproachScript
	end

CeruleanBase3Noop:
	end

TrainerExecutiveFAriana:
	trainer EXECUTIVEF, EXECUTIVEF_3, EVENT_BEAT_ROCKET_EXECUTIVEF_3, ArianaBase3BeforeText, ArianaBase3WinText, 0, .Script

.Script:
	opentext
	writetext ArianaBase3AfterText
	waitbutton
	closetext
	applymovement PLAYER, CeruleanBase3PlayerApproachArcherMovement
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

CeruleanBase3ArcherApproachScript:
	checkevent EVENT_BEAT_ROCKET_EXECUTIVEF_3
	iffalse .NotReady
	turnobject CERULEANBASE3_ARCHER, DOWN
	showemote EMOTE_SHOCK, CERULEANBASE3_ARCHER, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext ArcherBase3BeforeText
	waitbutton
	closetext
	winlosstext ArcherBase3WinText, 0
	setlasttalked CERULEANBASE3_ARCHER
	loadtrainer EXECUTIVEM, EXECUTIVEM_4
	loadvar VAR_BATTLETYPE, BATTLETYPE_SET
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_4
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext ArcherBase3AfterText
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 60
	refreshmap
	; Mewtwo breaks free
	cry MEWTWO
	showemote EMOTE_SHOCK, CERULEANBASE3_MEWTWO, 20
	pause 30
	disappear CERULEANBASE3_MEWTWO
	; Archer retreats
	disappear CERULEANBASE3_ARCHER
	setscene SCENE_CERULEANBASE3_NOOP
	setevent EVENT_CLEARED_CERULEAN_CAVE
	playmapmusic
	end

.NotReady:
	end

CeruleanBase3PlayerApproachArcherMovement:
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

ArcherBase3BeforeText:
	text "So."
	line "You reached me."

	para "I'll be direct."
	line "GIOVANNI spent"
	cont "years trying to"
	cont "capture MEWTWO."
	cont "He failed."

	para "I used a MASTER"
	line "BALL he left"
	cont "behind."

	para "Six weeks in this"
	line "base. The right"
	cont "frequency. The"
	cont "right equipment."

	para "And now it obeys."

	para "This is the future"
	line "of TEAM ROCKET."
	cont "Power beyond what"
	cont "GIOVANNI imagined."

	para "You will not take"
	line "it from me."
	done

ArcherBase3WinText:
	text "The signal…"
	line "breaking down…"
	done

ArcherBase3AfterText:
	text "Without me to"
	line "maintain the"
	cont "frequency…"

	para "The conditioning"
	line "won't hold."

	para "Six weeks of work."

	para "MEWTWO was never"
	line "truly ours."
	cont "We only borrowed"
	cont "its obedience."
	done

ArcherBase3BlockedText:
	text "Defeat ARIANA"
	line "first."
	done


CeruleanBase3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 10, CERULEAN_BASE_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  9, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerExecutiveFAriana, EVENT_CLEARED_CERULEAN_CAVE
	object_event  6,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CLEARED_CERULEAN_CAVE
	object_event  5,  2, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CLEARED_CERULEAN_CAVE
