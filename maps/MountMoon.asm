	object_const_def
	const MOUNTMOON_RIVAL

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

	para "…Since I lost to"
	line "you, I've been"
	cont "traveling with my"
	cont "#MON all over."

	para "Instead of just"
	line "pushing them to"
	cont "be stronger…"

	para "I've been trying"
	line "to understand each"
	cont "of them."

	para "Some wanted to"
	line "play. Others need-"
	cont "ed to rest."

	para "I never noticed"
	line "before."

	para "<PLAYER>, now I"
	line "want to show you"
	cont "what we've learned"
	cont "together!"
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

	para "…You won, and I"
	line "can accept that"
	cont "now."

	para "But more"
	line "importantly, I"  
	cont "saw how happy my"
	cont "#MON looked"
	cont "during that"
	cont "battle."

	para "Even the ones" 
	line "that fainted were"
	cont "trying their best"
	cont "for me."

	para "I used to think"
	line "weak #MON were"
	cont "holding me back."

	para "But there are no"
	line "weak #MON, are"
	cont "there? Just"  
	cont "trainers who"
	cont "don't understand."

	para "…Listen, <PLAYER>."

	para "I still want to" 
	line "be the greatest"
	cont "trainer. But now" 
	cont "I know the right"
	cont "way to do it."

	para "Together with"
	line "all my #MON."
	cont "Not just the"
	cont "strongest ones."
	done

MountMoonRivalTextLoss:
	text "<……> <……> <……>"

	para "My #MON and I"
	line "have come so far"
	cont "together."

	para "I can see it in"
	line "their eyes now."
	cont "They trust me."

	para "And I trust them"
	line "to give everything"
	cont "they have."

	para "This is what real"
	line "partnership feels"
	cont "like, isn't it?"
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
