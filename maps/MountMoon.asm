	object_const_def
	const MOUNTMOON_RIVAL
	const VICTORYROAD_POKE_BALL1

MountMoon_MapScripts:
	def_scene_scripts
	scene_script MountMoonRivalEncounterScene, SCENE_MOUNTMOON_RIVAL_BATTLE
	scene_script MountMoonNoopScene,		   SCENE_MOUNTMOON_NOOP

	def_callbacks

MountMoonRivalEncounterScene:
	sdefer MountMoonRivalBattleScript
	end

MountMoonNoopScene:
	end

MountMoonRivalBattleScript:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	applymovement MOUNTMOON_RIVAL, MountMoonRivalMovementBefore
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext MountMoonRivalTextBefore
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext MountMoonRivalTextWin, MountMoonRivalTextLoss
	setlasttalked MOUNTMOON_RIVAL
	loadtrainer RIVAL2, RIVAL2_1_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishBattle

.Totodile:
	winlosstext MountMoonRivalTextWin, MountMoonRivalTextLoss
	setlasttalked MOUNTMOON_RIVAL
	loadtrainer RIVAL2, RIVAL2_1_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishBattle

.Chikorita:
	winlosstext MountMoonRivalTextWin, MountMoonRivalTextLoss
	setlasttalked MOUNTMOON_RIVAL
	loadtrainer RIVAL2, RIVAL2_1_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
; fallthrough
.FinishBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext MountMoonRivalTextAfter
	waitbutton
	closetext
    special FadeOutToWhite
	special LoadMapPalettes
	special StubbedTrainerRankings_Healings
	playsound SFX_FULL_HEAL
	special HealParty
	special FadeInPalettes_EnableDynNoApply
	applymovement MOUNTMOON_RIVAL, MountMoonRivalMovementAfter
	disappear MOUNTMOON_RIVAL
	setscene SCENE_MOUNTMOON_NOOP
	setevent EVENT_BEAT_RIVAL_IN_MT_MOON
	playmapmusic
	end

MountMoonRivalMovementBefore:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

MountMoonRivalMovementAfter:
	step UP
	step UP
	step UP
	step UP
	step_end

MountMoonRivalTextBefore:
	text "<……> <……> <……>"

	para "It's been a while,"
	line "<PLAYER>."

	para "LANCE called me to"
	line "help you finish"
	cont "TEAM ROCKET once"
	cont "and for all."

	para "He thought we"
	line "might work well"
	cont "after our efforts"
	cont "in LAVENDER TOWN."

	para "He's giving me too"
	line "much credit, but"
	cont "I'm glad to help."

	para "I hate everything"
	cont "TEAM ROCKET stands"
	cont "for."

	para "But before we go"
	line "in there, I need"
	cont "to know…"

	para "…Are you ready?"

	para "Since I lost to"
	line "you, I've been"
	cont "traveling with my"
	cont "#MON. Trying"
	cont "to understand"
	cont "each of them."

	para "I think I finally"
	line "do. Let me show"
	cont "you what we've"
	cont "learned together."
	done

MountMoonRivalTextWin:
	text "<……> <……> <……>"

	para "My #MON fought"
	line "harder than ever."

	para "They're not just"
	line "obeying me."
	cont "They're choosing"
	cont "to fight with me."

	para "I think I am"
	line "finally starting"
	cont "to understand what"
	cont "you've known all"
	cont "along."
	done

MountMoonRivalTextAfter:
	text "<……> <……> <……>"

	para "…You won."
	line "Good."

	para "If you couldn't"
	line "beat me here, you"
	cont "wouldn't last five"
	cont "minutes."

	para "LANCE left us his"
	line "special medicine."

	para "He said: 'go in"
	line "at full strength.'"
	cont "I'm inclined to"
	cont "agree."

	para "I'd come with you,"
	line "but this is your"
	cont "fight."

	para "I saw it in your"
	line "#MON just now."
	cont "They'd follow you"
	cont "anywhere."

	para "…There are no"
	line "weak #MON, are"
	cont "there? Just"
	cont "trainers who"
	cont "don't understand."

	para "Go. I'll be on the"
	line "lookout for the"
	cont "secret entrance"
	cont "too."
	done

MountMoonRivalTextLoss:
	text "<……> <……> <……>"

	para "…That's not good"
	line "enough, <PLAYER>."

	para "TEAM ROCKET is"
	line "waiting in that"
	cont "CAVE with something"
	cont "far worse than me."

	para "Rest your #MON."
	line "Come back when"
	cont "you're ready."

	para "I'll be here."
	done

MountMoon_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 33, ROUTE_3, 1
	warp_event 13, 21, MOUNT_MOON_PATH, 1
	warp_event 27, 15, MOUNT_MOON_B1, 4
	warp_event 35, 31, MOUNT_MOON_B1, 3
	warp_event 15, 13, MOUNT_MOON_B1, 2
	warp_event  3,  5, MOUNT_MOON_B1, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 15, 28, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_MOON_RIVAL
	object_event  3, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VictoryRoadTMEarthquake, EVENT_VICTORY_ROAD_TM_EARTHQUAKE
