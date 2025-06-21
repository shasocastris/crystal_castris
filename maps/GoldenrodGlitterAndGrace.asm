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
	pokemart MARTTYPE_STANDARD, GLITTER_AND_GRACE
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
	jumptextfaceplayer GoldenrodGlitterAndGraceGrowlitheText

GoldenrodGlitterAndGraceClerkText:
	text "WELCOME to …"
	line "GLITTER & GRACE!"

	para "GOLDENROD CITY's"
	line "Beauty Academy!"
	done

AngelicaIntroducesGlitterAndGraceText:
	text "Welcome to"
	line "GLITTER & GRACE"
	cont "Academy!"

	para "I'm ANGELICA, the"
	line "head instructor"
	cont "here."

	para "We teach the art"
	line "of beauty and"
	cont "#MON elegance!"

	para "Feel free to"
	line "challenge our"
	cont "students and"
	cont "learn from them!"

	para "When you're ready"
	line "for the ultimate"
	cont "test, come see"
	cont "me!"
	done

AngelicaBeatTheOthersText:
	text "I can sense you"
	line "haven't faced all"
	cont "our students yet!"

	para "True mastery comes"
	line "from experiencing"
	cont "every lesson we"
	cont "offer!"

	para "Return when you've"
	line "learned from each"
	cont "of our talented"
	cont "instructors!"
	done

BeautyAngelicaSeenText:
	text "Excellent! You've"
	line "learned from all"
	cont "our instructors!"

	para "Now face the"
	line "final test of"
	cont "true beauty"
	cont "mastery!"

	para "I'll show you"
	line "what years of"
	cont "training can"
	cont "achieve!"
	done

BeautyAngelicaBeatenText:
	text "Magnificent! You"
	line "have mastered our"
	cont "teachings!"
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

	para "You're always"
	line "welcome here at"
	cont "GLITTER & GRACE!"
	done

AngelicaLightClayText:
	text "LIGHT CLAY will"
	line "serve you well"
	cont "in battles!"

	para "Remember to"
	line "combine power"
	cont "with elegance!"

	para "That's the true"
	line "beauty way!"
	done

BeautyKendraSeenText:
	text "Welcome to our"
	line "dance studio!"

	para "Grace and rhythm"
	line "are essential for"
	cont "Contest success!"

	para "Let me show you"
	line "perfect form!"
	done

BeautyKendraBeatenText:
	text "Your moves were"
	line "flawless!"
	done

BeautyKendraAfterBattleText:
	text "Dancing teaches"
	line "coordination"
	cont "between trainer"
	cont "and #MON!"

	para "The rhythm helps"
	line "with Contest"
	cont "timing too!"

	para "Practice makes"
	line "perfect!"
	done

BeautyJaclynSeenText:
	text "Oh! A visitor"
	line "during our"
	cont "rehearsal!"

	para "Watch how we move"
	line "in perfect sync"
	cont "with our #MON!"

	para "Battle is just"
	line "another dance!"
	done

BeautyJaclynBeatenText:
	text "What graceful"
	line "battle technique!"
	done

BeautyJaclynAfterBattleText:
	text "Every Contest"
	line "performance is"
	cont "like a dance!"

	para "The key is making"
	line "it look effortless"
	cont "even when it's"
	cont "challenging!"

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

	para "Battle is great"
	line "cardio!"
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

	para "Fitness is the"
	line "foundation of"
	cont "true beauty!"
	done

BeautyJessicaSeenText:
	text "Building stamina"
	line "is crucial for"
	cont "Contest endurance!"

	para "Beauty isn't just"
	line "looks - it's"
	cont "strength too!"

	para "Let's work up a"
	line "sweat!"
	done

BeautyJessicaBeatenText:
	text "Great workout!"
	done

BeautyJessicaAfterBattleText:
	text "Physical fitness"
	line "helps with long"
	cont "Contest rounds!"

	para "Strong #MON"
	line "perform better"
	cont "in all categories!"

	para "Beauty comes from"
	line "health and"
	cont "vitality!"
	done

BeautyCarleneSeenText:
	text "Oh! I was just"
	line "changing into my"
	cont "practice outfit!"

	para "Being beautiful"
	line "is exhausting"
	cont "work!"

	para "But I can still"
	line "battle!"
	done

BeautyCarleneBeatenText:
	text "I need a longer"
	line "break!"
	done

BeautyCarleneAfterBattleText:
	text "Even beauty"
	line "experts need"
	cont "rest time!"

	para "Taking breaks"
	line "prevents burnout"
	cont "and keeps you"
	cont "fresh!"

	para "Self-care is"
	line "just as important"
	cont "as #MON care!"
	done

BeautyJulieSeenText:
	text "The cards reveal"
	line "your fate…"

	para "I see… a battle in"
	line "your near future!"

	para "Let the stars"
	line "guide us!"
	done

BeautyJulieBeatenText:
	text "The cards didn't"
	line "predict this!"
	done

BeautyJulieAfterBattleText:
	text "Mystic arts help"
	line "predict Contest"
	cont "judge preferences!"

	para "Reading auras"
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

	para "Battle me when"
	line "I'm finished!"
	done

BeautyCarolineBeatenText:
	text "Beautifully done!"
	done

BeautyCarolineAfterBattleText:
	text "Proper grooming"
	line "brings out a"
	cont "#MON's natural"
	cont "beauty!"

	para "Each species"
	line "needs different"
	cont "care techniques!"

	para "A well-groomed"
	line "#MON is a"
	cont "confident"
	cont "#MON!"
	done

GoldenrodGlitterAndGraceGrowlitheText:
	text "Grrr ...."
	line "WOOF WOOF"
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
