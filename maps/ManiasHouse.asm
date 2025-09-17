	object_const_def
	const MANIASHOUSE_ROCKER

ManiasHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ManiaScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_SHUCKIE_TO_MANIA
	iftrue .default_postevent
	checkevent EVENT_GOT_SHUCKIE
	iftrue .alreadyhaveshuckie
	writetext ManiaText_AskLookAfterShuckle
	yesorno
	iffalse .refusetotakeshuckie
	special GiveShuckle
	iffalse .partyfull
	writetext ManiaText_TakeCareOfShuckle
	promptbutton
	waitsfx
	writetext ManiaText_GotShuckle
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	setevent EVENT_GOT_SHUCKIE
	end

.alreadyhaveshuckie
	checkflag ENGINE_GOT_SHUCKIE_TODAY
	iffalse .returnshuckie
	writetext ManiaText_TakeCareOfShuckle
	waitbutton
	closetext
	end

.partyfull
	writetext ManiaText_PartyFull
	waitbutton
	closetext
	end

.refusetotakeshuckie
	writetext ManiaText_IfHeComesBack
	waitbutton
	closetext
	end

.returnshuckie
	writetext ManiaText_CanIHaveMyMonBack
.MustSayYes
	yesorno
	iftrue .ReturnShuckie
	writetext ManiaText_SameAsBeingRobbed
	sjump .MustSayYes
.ReturnShuckie
	special ReturnShuckie
	ifequal SHUCKIE_WRONG_MON, .wrong
	ifequal SHUCKIE_REFUSED, .refused
	; SHUCKIE_RETURNED
	writetext ManiaText_ThankYou
	promptbutton
	verbosegiveitem CLEANSE_TAG
	waitbutton
	closetext
	setevent EVENT_RETURNED_SHUCKIE_TO_MANIA
	end

.wrong
	writetext ManiaText_ShuckleNotThere
	waitbutton
	closetext
	end

.refused
	writetext ManiaText_SameAsBeingRobbed
	sjump .MustSayYes

.default_postevent
	writetext ManiaText_HappinessSpeech
	waitbutton
	closetext
	end

ManiaText_AskLookAfterShuckle:
	text "I, I'm in shock!"

	para "A guy about your"
	line "age with piercing"

	para "eyes and long hair"
	line "came in."

	para "He scared me into"
	line "giving him my"
	cont "prized #MON!"

	para "I still have one"
	line "left, but what if"
	cont "he comes back?"

	para "You look strong."
	line "Could you look"

	para "after my #MON"
	line "for a while?"
	done

ManiaText_TakeCareOfShuckle:
	text "Oh, thank you!"

	para "Take good care of"
	line "it, please!"
	done

ManiaText_GotShuckle:
	text "<PLAYER> received a"
	line "#MON."
	done

ManiaText_PartyFull:
	text "Your #MON party"
	line "is full."
	done

ManiaText_IfHeComesBack:
	text "Oh, no… What'll"
	line "I do if he comes"
	cont "back?"
	done

ManiaText_CanIHaveMyMonBack:
	text "Hi! How's my #-"
	line "MON?"

	para "I think I'm safe"
	line "now, so may I have"
	cont "it back?"
	done

ManiaText_ThankYou:
	text "Thank you!"

	para "Here's a CLEANSE"
	line "TAG for your help."

	para "If your lead"
	line "#MON holds it,"
	cont "you'll face fewer"
	cont "wild encounters."
	done

ManiaText_ShuckleNotThere:
	text "Hey, you don't"
	line "have my #MON"
	cont "with you."
	done

ManiaText_SameAsBeingRobbed:
	text "Oh, no, no… That's"
	line "the same as being"
	cont "robbed."

	para "Please, can I"
	line "have SHUCKIE back?"
	done

ManiaText_HappinessSpeech:
	text "For #MON, hap-"
	line "piness is being"

	para "with a person who"
	line "treats them well."
	done

ManiasHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 1
	warp_event  3,  7, CIANWOOD_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ManiaScript, -1
