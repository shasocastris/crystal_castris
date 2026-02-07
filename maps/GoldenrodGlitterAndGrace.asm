	object_const_def
	const GLITTERANDGRACE_LASS
	const GLITTERANDGRACE_BEAUTY_ANGELICA
	const GLITTERANDGRACE_BEAUTY_KENDRA
	const GLITTERANDGRACE_BEAUTY_JACYLN
	const GLITTERANDGRACE_BEAUTY_RACHAEL
	const GLITTERANDGRACE_BEAUTY_JESSICA
	const GLITTERANDGRACE_BEAUTY_CARLENE
	const GLITTERANDGRACE_BEAUTY_JULIE
	const GLITTERANDGRACE_BEAUTY_CAROLINE
	const GLITTERANDGRACE_GROWLITHE

GoldenrodGlitterAndGrace_MapScripts:
	def_scene_scripts
	scene_script GoldenrodGlitterAndGraceNoop1Scene, SCENE_GLITTERANDGRACE_BEAUTY_ANGELICA_INTRODUCES
	scene_script GoldenrodGlitterAndGraceNoop2Scene, SCENE_GLITTERANDGRACE_NOOP

	def_callbacks

GoldenrodGlitterAndGraceNoop1Scene:
	end

GoldenrodGlitterAndGraceNoop2Scene:
	end

GoldenrodGlitterAndGraceClerkScript:
	faceplayer
	opentext
	writetext GoldenrodGlitterAndGraceClerkText
	waitbutton
	pokemart MARTTYPE_STANDARD, MART_GLITTER_AND_GRACE
	closetext
	end

GoldenrodGlitterAndGraceAngelicaScene:
	showemote EMOTE_SHOCK, GLITTERANDGRACE_BEAUTY_ANGELICA, 15
	turnobject PLAYER, UP
GoldenrodGlitterAndGraceAngelicaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_LIGHT_CLAY_FROM_ANGELICA
	iftrue AngelicaGaveLightClayScript
	checkevent EVENT_ANGELICA_GAVE_INTRO
	iffalse AngelicaIntroducesGlitterAndGraceScript
	checkevent EVENT_BEAT_BEAUTY_JULIE
	iffalse AngelicaDefeatTheOthersScript
	writetext BeautyAngelicaSeenText
	waitbutton
	closetext
	winlosstext BeautyAngelicaBeatenText, BeautyAngelicaLossText
	loadtrainer BEAUTY, ANGELICA
	startbattle
	reloadmapafterbattle
	opentext
.GiveLightClay:
	writetext AngelicaGivesLightClayText
	promptbutton
	verbosegiveitem LIGHT_CLAY
	iffalse AngelicaDoneScript
	setevent EVENT_GOT_LIGHT_CLAY_FROM_ANGELICA
	writetext AngelicaGaveLightClayText
	waitbutton
	closetext
	end

AngelicaGaveLightClayScript:
	writetext AngelicaLightClayText
	waitbutton
AngelicaDoneScript:
	closetext
	end

AngelicaDefeatTheOthersScript:
	writetext AngelicaBeatTheOthersText
	waitbutton
	closetext
	end

AngelicaIntroducesGlitterAndGraceScript:
	writetext AngelicaIntroducesGlitterAndGraceText
	setevent EVENT_ANGELICA_GAVE_INTRO
	setscene SCENE_GLITTERANDGRACE_NOOP
	waitbutton
	closetext
	end

TrainerBeautyKendra:
	trainer BEAUTY, KENDRA, EVENT_BEAT_BEAUTY_KENDRA, BeautyKendraSeenText, BeautyKendraBeatenText, 0, .Script

.Script:
	opentext
	writetext BeautyKendraAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyJaclyn:
	trainer BEAUTY, JACLYN, EVENT_BEAT_BEAUTY_JACLYN, BeautyJaclynSeenText, BeautyJaclynBeatenText, 0, .Script

.Script:
	opentext
	writetext BeautyJaclynAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyRachael:
	trainer BEAUTY, RACHAEL, EVENT_BEAT_BEAUTY_RACHAEL, BeautyRachaelSeenText, BeautyRachaelBeatenText, 0, .Script

.Script:
	opentext
	writetext BeautyRachaelAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyJessica:
	trainer BEAUTY, JESSICA, EVENT_BEAT_BEAUTY_JESSICA, BeautyJessicaSeenText, BeautyJessicaBeatenText, 0, .Script

.Script:
	opentext
	writetext BeautyJessicaAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyCarlene:
	trainer BEAUTY, CARLENE, EVENT_BEAT_BEAUTY_CARLENE, BeautyCarleneSeenText, BeautyCarleneBeatenText, 0, .Script

.Script:
	opentext
	writetext BeautyCarleneAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyJulie:
	trainer BEAUTY, JULIE, EVENT_BEAT_BEAUTY_JULIE, BeautyJulieSeenText, BeautyJulieBeatenText, 0, .Script

.Script:
	opentext
	writetext BeautyJulieAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyCaroline:
	trainer BEAUTY, CAROLINE, EVENT_BEAT_BEAUTY_CAROLINE, BeautyCarolineSeenText, BeautyCarolineBeatenText, 0, .Script

.Script:
	opentext
	writetext BeautyCarolineAfterBattleText
	waitbutton
	closetext
	end

GoldenrodGlitterAndGraceGrowlitheScript:
	opentext
	writetext GoldenrodGlitterAndGraceGrowlitheText
	cry GROWLITHE
	waitbutton
	callasm .Growlithe
	special ShowPokedexEntry
	closetext
	end

.Growlithe
	ld hl, GROWLITHE
	call GetPokemonIDFromIndex
	ld [wScriptVar], a
	ret

GoldenrodGlitterAndGraceClerkText:
	text "WELCOME to …"
	line "GLITTER & GRACE!"

	para "GOLDENROD CITY's"
	line "Beauty Academy!"
	done

AngelicaIntroducesGlitterAndGraceText:
	text "Excuse me! This"
	line "is a private"
	cont "academy!"

	para "We don't allow"
	line "random visitors"
	cont "to just…"

	para "Wait! You have"
	line "#MON with you!"
	cont "You're a trainer!"

	para "I'm ANGELICA, head"
	line "of GLITTER &"
	cont "GRACE Academy!"

	para "We teach beauty"
	line "and #MON"
	cont "elegance here!"

	para "If you can defeat"
	line "all our students"
	cont "and then me,"

	para "I'll give you a"
	line "special prize!"

	para "Think you're up"
	line "for the challenge?"
	done

AngelicaBeatTheOthersText:
	text "You haven't faced"
	line "all our students"
	cont "yet?"

	para "Keep going, I can"
	line "see you've learned"
	cont "a lot."
	done

BeautyAngelicaSeenText:
	text "Wow, you've really"
	line "taken what being a"
	cont "Beauty means to"
	cont "heart."

	para "Let's bring out"
	line "the final polish!"
	done

BeautyAngelicaBeatenText:
	text "Magnificent!"
	done

BeautyAngelicaLossText:
	text "Keep practicing!"
	line "Beauty takes time"
	cont "to perfect!"
	done

AngelicaGivesLightClayText:
	text "You've shown"
	line "exceptional skill"
	cont "and grace!"

	para "As a graduate of"
	line "our academy, take"
	cont "this special gift!"
	done

AngelicaGaveLightClayText:
	text "LIGHT CLAY extends"
	line "the duration of"
	cont "barrier moves!"

	para "Use it to protect"
	line "your #MON with"
	cont "style and grace!"
	done

AngelicaLightClayText:
	text "Have you come up"
	line "with elegant ways"
	cont "to use your LIGHT"
	cont "CLAY?"
	done

BeautyKendraSeenText:
	text "Dancing builds the"
	line "bond between me"
	cont "and my #MON."

	para "Let me show you"
	line "our moves!"
	done

BeautyKendraBeatenText:
	text "You were flawless!"
	done

BeautyKendraAfterBattleText:
	text "Dancing teaches"
	line "coordination and"
	cont "style."

	para "It helps with"
	line "battles too!"
	done

BeautyJaclynSeenText:
	text "I'm practicing"
	line "my dance routine"
	cont "with my #MON."

	para "I guess we can"
	line "battle too!"
	done

BeautyJaclynBeatenText:
	text "What graceful"
	line "battle technique!"
	done

BeautyJaclynAfterBattleText:
	text "Synchronized"
	line "movement makes"
	cont "us stronger!"

	para "You have natural"
	line "rhythm!"
	done

BeautyRachaelSeenText:
	text "Exercise keeps"
	line "both trainer and"
	cont "#MON in peak"
	cont "condition!"

	para "Want to join our"
	line "fitness routine?"
	done

BeautyRachaelBeatenText:
	text "That was an"
	line "intense workout!"
	done

BeautyRachaelAfterBattleText:
	text "Regular exercise"
	line "improves #MON"
	cont "performance in"
	cont "all areas!"

	para "Healthy #MON"
	line "have shinier"
	cont "coats and more"
	cont "energy!"
	done

BeautyJessicaSeenText:
	text "Building stamina"
	line "is crucial for"
	cont "endurance."

	para "Let's work up a"
	line "sweat!"
	done

BeautyJessicaBeatenText:
	text "Now I'm pumped!"
	done

BeautyJessicaAfterBattleText:
	text "A strong trainer"
	line "means stronger"
	cont "#MON!"
	done

BeautyCarleneSeenText:
	text "Ugh! Can't you"
	line "see I'm trying"
	cont "to rest?!"

	para "I was changing"
	line "clothes and"
	cont "relaxing!"

	para "Fine! If you"
	line "must interrupt,"
	cont "let's battle!"
	done

BeautyCarleneBeatenText:
	text "Now I'm even more"
	line "tired!"
	done

BeautyCarleneAfterBattleText:
	text "Beauty work is"
	line "exhausting!"

	para "A girl needs her"
	line "rest time!"

	para "Next time, knock"
	line "first!"
	done

BeautyJulieSeenText:
	text "The cards reveal"
	line "your fate…"

	para "I see… a battle in"
	line "your near future!"
	done

BeautyJulieBeatenText:
	text "The cards didn't"
	line "predict this!"
	done

BeautyJulieAfterBattleText:
	text "Reading auras"
	line "reveals which"
	cont "#MON appeal"
	cont "most!"

	para "Your future looks"
	line "very bright!"
	done

BeautyCarolineSeenText:
	text "Perfect grooming"
	line "takes patience"
	cont "and skill!"

	para "This GROWLITHE's"
	line "coat needs just"
	cont "the right touch!"
	done

BeautyCarolineBeatenText:
	text "Beautifully done!"
	done

BeautyCarolineAfterBattleText:
	text "Each species"
	line "needs different"
	cont "care techniques."

	para "And when they are"
	line "well groomed,"
	cont "#MON are much"
	cont "happier."
	done

GoldenrodGlitterAndGraceGrowlitheText:
	text "GROWLITHE: Gruff!"
	line "Growl growl!"
	done

GoldenrodGlitterAndGrace_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  9, GOLDENROD_CITY, 16
	warp_event  3,  9, GOLDENROD_CITY, 16

	def_coord_events
	coord_event  5,  5, SCENE_GLITTERANDGRACE_BEAUTY_ANGELICA_INTRODUCES, GoldenrodGlitterAndGraceAngelicaScene

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceClerkScript, -1
	object_event  5,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceAngelicaScript, -1
	object_event  9,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_TRAINER, 0, TrainerBeautyKendra, -1
	object_event 10,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerBeautyJaclyn, -1
	object_event  9,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_TRAINER, 0, TrainerBeautyRachael, -1
	object_event 10,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerBeautyJessica, -1
	object_event 14,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, TrainerBeautyCarlene, -1
	object_event 11,  1, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, TrainerBeautyJulie, -1
	object_event 13,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_TRAINER, 0, TrainerBeautyCaroline, -1
	object_event 13,  8, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodGlitterAndGraceGrowlitheScript, -1
