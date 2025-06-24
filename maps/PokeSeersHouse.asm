	object_const_def
	const POKESEERSHOUSE_GRANNY
	const POKESEERSHOUSE_GRANNY_INTRO
	const POKESEERSHOUSE_GRANNY_PPOISON_GUARD
	const POKESEERSHOUSE_GRANNY_CONFUSEGUARD
	const POKESEERSHOUSE_GRANNY_SLEEP_GUARD

PokeSeersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SeerScript:
	faceplayer
	opentext
	special PokeSeer
	waitbutton
	closetext
	end

GrannyConfuseGuard:
GrannySleepGuard:
GrannyScript:
	jumptextfaceplayer GrannyScriptText

TrainerGrannyBethany:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MEDIUM_BETHANY
	iftrue BethanyGaveParalyzGuardScript
	writetext PokefanfBethanySeenText
	waitbutton
	closetext
	winlosstext PokefanfBethanyBeatenText, 0
	loadtrainer MEDIUM, BETHANY
	startbattle
	reloadmapafterbattle
	opentext
.GiveParalyzGuard
	writetext BethanyGivesParalyzGuardText
	promptbutton
	verbosegiveitem POISON_GUARD
	iffalse BethanyDoneScript
	setevent EVENT_BEAT_MEDIUM_BETHANY
	writetext BethanyGaveParalyzGuardText
	waitbutton
	closetext
	end

BethanyGaveParalyzGuardScript:
	writetext PokefanfBethanyAfterBattleText
	waitbutton
BethanyDoneScript:
	closetext
	end

TrainerGrannyMargret:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MEDIUM_MARGRET
	iftrue MargretGaveConfuseGuardScript
	writetext PokefanfMargretSeenText
	waitbutton
	closetext
	winlosstext PokefanfMargretBeatenText, 0
	loadtrainer MEDIUM, MARGRET
	startbattle
	reloadmapafterbattle
	opentext
.GiveConfuseGuard
	writetext MargretGivesConfuseGuardText
	promptbutton
	verbosegiveitem CONFUSEGUARD
	iffalse MargretDoneScript
	setevent EVENT_BEAT_MEDIUM_MARGRET
	writetext MargretGaveConfuseGuardText
	waitbutton
	closetext
	end

MargretGaveConfuseGuardScript:
	writetext PokefanfMargretAfterBattleText
	waitbutton
MargretDoneScript:
	closetext
	end

TrainerGrannyEthel:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MEDIUM_ETHEL
	iftrue EthelGaveSleepGuardScript
	writetext PokefanfEthelSeenText
	waitbutton
	closetext
	winlosstext PokefanfEthelBeatenText, 0
	loadtrainer MEDIUM, ETHEL
	startbattle
	reloadmapafterbattle
	opentext
.GiveSleepGuard
	writetext EthelGivesSleepGuardText
	promptbutton
	verbosegiveitem SLEEP_GUARD
	iffalse EthelDoneScript
	setevent EVENT_BEAT_MEDIUM_ETHEL
	writetext EthelGaveSleepGuardText
	waitbutton
	closetext
	end

EthelGaveSleepGuardScript:
	writetext PokefanfEthelAfterBattleText
	waitbutton
EthelDoneScript:
	closetext
	end

GrannyScriptText:
	text "Welcome to the"
	line "POKESEER HOUSE!"

	para "The seer at the"
	line "counter can reveal"
	cont "your #MON's"
	cont "HIDDEN POWER type!"

	para "Or test your skill"
	line "on the stage and"
    cont "battle for rare"
	cont "prizes!"

	para "Enter if you"
	line "dare, dearie!"
	done

PokefanfBethanySeenText:
	text "The spirits"
	line "whisper to me,"
	cont "child…"

	para "My spectral"
	line "friends will test"
	cont "you!"
	done

PokefanfBethanyBeatenText:
	text "The spirits are"
	line "impressed…"
	done

BethanyGivesParalyzGuardText:
	text "The spirits wish"
	line "to bestow this"
	cont "protective charm."

	para "It will guard"
	line "your team from"
	cont "poison!"
	done

BethanyGaveParalyzGuardText:
	text "That POISON GUARD"
	line "was blessed by"
	cont "spirits."

	para "Use it wisely!"
	done

PokefanfBethanyAfterBattleText:
	text "I can sense great"
	line "power within"
	cont "your team."
	done

PokefanfMargretSeenText:
	text "I sense confusion"
	line "in your aura…"

	para "My psychic team"
	line "will clear the"
	cont "fog from your"
	cont "mind!"
	done

PokefanfMargretBeatenText:
	text "Your mind is"
	line "stronger than I"
	cont "foresaw…"
	done

MargretGivesConfuseGuardText:
	text "Well fought! Take"
	line "this to protect"

	para "your team from"
	line "mental confusion!"
	done

MargretGaveConfuseGuardText:
	text "That CONFUSEGUARD"
	line "will keep your"

	para "team's thoughts"
	line "clear in battle."
	done

PokefanfMargretAfterBattleText:
	text "I see your future"
	line "becoming clearer"
	cont "each day…"
	done

PokefanfEthelSeenText:
	text "The whispers of"
	line "sleeping spirits"
	cont "fill the air…"

	para "You must face the"
	line "nightmares first!"
	done

PokefanfEthelBeatenText:
	text "You have conquered"
	line "the realm of"
	cont "nightmares!"
	done

EthelGivesSleepGuardText:
	text "The dream spirits"
	line "offer you this"
	cont "gift."

	para "It will keep your"
	line "team alert!"
	done

EthelGaveSleepGuardText:
	text "That SLEEP GUARD"
	line "holds the power"

	para "of eternal"
	line "wakefulness."
	done

PokefanfEthelAfterBattleText:
	text "I see great"
	line "dreams in your"
	cont "future, child."

	para "May they all be"
	line "pleasant ones!"
	done

PokeSeersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 13, CIANWOOD_CITY, 7
	warp_event  4, 13, CIANWOOD_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 11, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeerScript, -1
	object_event  3,  9, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 1, 2, -1, -1, PAL_NPC_BLACK, OBJECTTYPE_SCRIPT, 0, GrannyScript, -1
	object_event  9,  2, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 2, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, TrainerGrannyBethany, -1
	object_event  5,  1, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 2, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, TrainerGrannyMargret, -1
	object_event  2,  3, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 2, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, TrainerGrannyEthel, -1
