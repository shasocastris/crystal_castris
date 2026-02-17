object_const_def
	const FUCHSIA_POKEMON_GIVER_SAGE

FuchsiaPokemonGiver_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaPokemonGiverSageScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_KANGASKHAN_FROM_SAGE
	iftrue .AlreadyGave
	special GetFirstPokemonHappiness
	ifgreater 220 - 1, .HappyEnough
	writetext SageNotHappyEnoughText
	waitbutton
	closetext
	end

.HappyEnough:
	writetext SageImpressedText
	promptbutton
	writetext SageOfferPokemonText
	yesorno
	iffalse .Refused
	givepoke KANGASKHAN, 25, NO_ITEM
	setevent EVENT_GOT_KANGASKHAN_FROM_SAGE
	writetext SageGavePokemonText
	waitbutton
	closetext
	end

.Refused:
	writetext SageRefusedText
	waitbutton
	closetext
	end

.AlreadyGave:
	writetext SageAfterGaveText
	waitbutton
	closetext
	end

SageNotHappyEnoughText:
	text "I am a retired"
	line "trainer."

	para "My old partner"
	line "still has some"
	cont "fight left, but"
	cont "I cannot battle"
	cont "anymore."

	para "I would give her"
	line "to a trainer who"
	cont "truly cares for"
	cont "their #MON."

	para "Hmm… your #MON"
	line "doesn't look that"
	cont "happy, though."

	para "Come back when"
	line "you've built a"
	cont "stronger bond."
	done

SageImpressedText:
	text "I am a retired"
	line "trainer."

	para "My old partner"
	line "still has some"
	cont "fight left, but"
	cont "I cannot battle"
	cont "anymore."

	para "But you… I can"
	line "tell your #MON"
	cont "trusts you deeply."

	para "That kind of bond"
	line "is rare."
	done

SageOfferPokemonText:
	text "Will you take my"
	line "KANGASKHAN?"

	para "I caught her in"
	line "the SAFARI ZONE"
	cont "years ago."

	para "She's a fierce"
	line "protector. I think"
	cont "she'd thrive with"
	cont "a #MON trainer"
	cont "like you."
	done

SageGavePokemonText:
	text "Take good care of"
	line "her."

	para "She's tough as"
	line "nails, and she'll"
	cont "guard your team"
	cont "like her own."

	para "That's what a"
	line "mother does."
	done

SageRefusedText:
	text "I see. Perhaps"
	line "another time."

	para "She'll be here"
	line "when you're ready."
	done

SageAfterGaveText:
	text "How is KANGASKHAN"
	line "doing?"

	para "I bet she's"
	line "already protecting"
	cont "your whole team."

	para "Old habits die"
	line "hard, you know."
	done

FuchsiaPokemonGiver_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 1
	warp_event  3,  7, FUCHSIA_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokemonGiverSageScript, -1
