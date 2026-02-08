	object_const_def
	const OLIVINERESTAURANT_LASS

OlivineRestaurant_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineRestaurantLassScript:
	jumptextfaceplayer OlivineRestaurantLassText

OlivineRestaurantYoungsterScript:
	jumptext OlivineRestaurantYoungsterText

OlivineRestaurantBeautyScript:
	jumptextfaceplayer OlivineRestaurantBeautyText

OlivineRestaurantTeacherScript:
	jumptextfaceplayer OlivineRestaurantTeacherText

OlivineRestaurantRockerScript:
	jumptextfaceplayer OlivineRestaurantRockerText


OlivineRestaurantEkansScript:
	opentext
	writetext OlivineRestaurantEkansText
	cry EKANS
	waitbutton
	callasm .Ekans
	special ShowPokedexEntry
	closetext
	end

.Ekans
	ld hl, EKANS
	call GetPokemonIDFromIndex
	ld [wScriptVar], a
	ret

OlivineRestaurantBayleefScript:
	opentext
	writetext OlivineRestaurantBayleefText
	cry BAYLEEF
	waitbutton
	callasm .Bayleef
	special ShowPokedexEntry
	closetext
	end

.Bayleef
	ld hl, BAYLEEF
	call GetPokemonIDFromIndex
	ld [wScriptVar], a
	ret

OlivineRestaurantSpearowScript:
	opentext
	writetext OlivineRestaurantSpearowText
	cry SPEAROW
	waitbutton
	callasm .Spearow
	special ShowPokedexEntry
	closetext
	end

.Spearow
	ld hl, SPEAROW
	call GetPokemonIDFromIndex
	ld [wScriptVar], a
	ret

OlivineRestaurantRhydonScript:
	opentext
	writetext OlivineRestaurantRhydonText
	cry RHYDON
	waitbutton
	callasm .Rhydon
	special ShowPokedexEntry
	closetext
	end

.Rhydon
	ld hl, RHYDON
	call GetPokemonIDFromIndex
	ld [wScriptVar], a
	ret

OlivineRestaurantLassText:
	text "Welcome!"
	done

OlivineRestaurantYoungsterText:
	text "Hey, EKANS!"

	para "Quit trying to"
	line "slither away!"
	done

OlivineRestaurantBeautyText:
	text "I'm training my"
	line "SPEAROW until it"
	cont "evolves."

	para "Then I'll have a"
	line "FEAROW to fly me"
	cont "anywhere!"
	done

OlivineRestaurantTeacherText:
	text "The food here is"
	line "excellent."

	para "And they often let"
	line "customers take"
	cont "LEFTOVERS."
	done

OlivineRestaurantRockerText:
	text "I think seeing all"
	line "these #MON is"
	cont "so exciting."
	done

OlivineRestaurantEkansText:
	text "EKANS: Ek Ekans!"
	done

OlivineRestaurantBayleefText:
	text "BAYLEEF: Li liif!"
	done

OlivineRestaurantSpearowText:
	text "SPEAROW: Spear!"
	done

OlivineRestaurantRhydonText:
	text "RHYDON: Rhy! Rhy!"
	done

OlivineRestaurant_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  9, OLIVINE_CITY, 7
	warp_event  3,  9, OLIVINE_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLACK, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantLassScript, -1
	object_event  2,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantYoungsterScript, -1
	object_event  2,  3, SPRITE_EKANS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantEkansScript, -1
	object_event  5,  3, SPRITE_BAYLEEF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantBayleefScript, -1
	object_event  8,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantBeautyScript, -1
	object_event 11,  3, SPRITE_SPEAROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantSpearowScript, -1
	object_event 11,  4, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantRhydonScript, -1
	object_event 11,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantTeacherScript, -1
	object_event  8,  7, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineRestaurantRockerScript, -1
