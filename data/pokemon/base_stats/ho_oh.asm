	db 0 ; species ID placeholder

	db 106, 130,  90,  90, 110, 154
	evs  0,   0,   0,   0,   0,   3
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FAIRY ; type
	db 3 ; catch rate
	db 220 ; base exp
	dw SACRED_ASH, SACRED_ASH ; items
	db GENDER_UNKNOWN ; gender ratio
	INCBIN "gfx/pokemon/ho_oh/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, DRAGONBREATH, THUNDER, EARTHQUAKE, RETURN, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, SWIFT, DREAM_EATER, DETECT, REST, STEEL_WING, NIGHTMARE, FLY, STRENGTH, FLASH, FLAMETHROWER, THUNDERBOLT
	; end
