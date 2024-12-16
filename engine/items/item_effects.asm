_DoItemEffect::
	ld a, [wCurItem]
	ld [wNamedObjectIndex], a
	call GetItemName
	call CopyName1
	ld a, 1
	ld [wItemEffectSucceeded], a
	push bc
	push de
	ld a, [wCurItem]
	call GetItemIndexFromID
	ld b, h
	ld c, l
	ld a, BANK(ItemEffects)
	ld hl, ItemEffects
	call LoadDoubleIndirectPointer
	pop de
	pop bc
	jp hl

ItemEffects:
; entries correspond to item ids (see constants/item_constants.asm)
	indirect_table 2, 1
	indirect_entries NUM_ITEM_POCKET, ItemEffects1
	indirect_entries FIRST_KEY_ITEM - 1 ; sparse table
	indirect_entries (FIRST_KEY_ITEM - 1) + NUM_KEY_ITEM_POCKET, ItemEffectsKeyItems
	indirect_entries FIRST_BALL_ITEM - 1 ; sparse table
	indirect_entries (FIRST_BALL_ITEM - 1) + NUM_BALL_ITEM_POCKET, ItemEffectsBalls
	indirect_table_end

ItemEffects1:
	dw RestoreHPEffect     ; POTION
	dw RestoreHPEffect     ; SUPER_POTION
	dw RestoreHPEffect     ; HYPER_POTION
	dw RestoreHPEffect     ; MAX_POTION

	dw StatusHealingEffect ; ANTIDOTE
	dw StatusHealingEffect ; BURN_HEAL
	dw StatusHealingEffect ; PARLYZ_HEAL
	dw StatusHealingEffect ; AWAKENING
	dw StatusHealingEffect ; ICE_HEAL
	dw StatusHealingEffect ; FULL_HEAL
	dw FullRestoreEffect   ; FULL_RESTORE

	dw ReviveEffect        ; REVIVE
	dw ReviveEffect        ; MAX_REVIVE

	dw RestorePPEffect     ; ETHER
	dw RestorePPEffect     ; MAX_ETHER
	dw RestorePPEffect     ; ELIXER
	dw RestorePPEffect     ; MAX_ELIXER

	dw VitaminEffect       ; HP_UP
	dw VitaminEffect       ; PROTEIN
	dw VitaminEffect       ; IRON
	dw VitaminEffect       ; CARBOS
	dw VitaminEffect       ; CALCIUM
	dw VitaminEffect       ; ZINC
	dw RareCandyEffect     ; RARE_CANDY
	dw RestorePPEffect     ; PP_UP

	dw RestoreHPEffect     ; FRESH_WATER
	dw RestoreHPEffect     ; SODA_POP
	dw RestoreHPEffect     ; LEMONADE
	dw RestoreHPEffect     ; MOOMOO_MILK
	dw RestoreHPEffect     ; RAGECANDYBAR

	dw EnergypowderEffect  ; ENERGYPOWDER
	dw EnergyRootEffect    ; ENERGY_ROOT
	dw HealPowderEffect    ; HEAL_POWDER
	dw RevivalHerbEffect   ; REVIVAL_HERB

	dw SacredAshEffect     ; SACRED_ASH
	dw SacredAshEffect     ; MYSTIC_DEW

	dw RestoreHPEffect     ; BERRY
	dw RestoreHPEffect     ; GOLD_BERRY
	dw RestorePPEffect     ; MYSTERYBERRY
	dw StatusHealingEffect ; MIRACLEBERRY
	dw StatusHealingEffect ; PSNCUREBERRY
	dw StatusHealingEffect ; PRZCUREBERRY
	dw StatusHealingEffect ; BURNT_BERRY
	dw StatusHealingEffect ; ICE_BERRY
	dw BitterBerryEffect   ; BITTER_BERRY
	dw StatusHealingEffect ; MINT_BERRY

	dw NoEffect            ; ATK_UP_BERRY
	dw NoEffect            ; DEF_UP_BERRY
	dw NoEffect            ; SPD_UP_BERRY
	dw NoEffect            ; SPA_UP_BERRY
	dw NoEffect            ; SPF_UP_BERRY
	dw NoEffect            ; ACC_UP_BERRY
	dw NoEffect            ; EVN_UP_BERRY

	dw RestoreHPEffect     ; BERRY_JUICE

	dw RepelEffect         ; REPEL
	dw SuperRepelEffect    ; SUPER_REPEL
	dw MaxRepelEffect      ; MAX_REPEL

	dw EscapeRopeEffect    ; ESCAPE_ROPE
	dw PokeDollEffect      ; POKE_DOLL

	dw XItemEffect         ; X_ATTACK
	dw XItemEffect         ; X_DEFEND
	dw XItemEffect         ; X_SPEED
	dw XItemEffect         ; X_SP_ATK
	dw NoEffect            ; X_SP_DEF
	dw XAccuracyEffect     ; X_ACCURACY
	dw GuardSpecEffect     ; GUARD_SPEC
	dw DireHitEffect       ; DIRE_HIT

	dw EvoStoneEffect      ; LEAF_STONE
	dw EvoStoneEffect      ; FIRE_STONE
	dw EvoStoneEffect      ; WATER_STONE
	dw EvoStoneEffect      ; THUNDERSTONE
	dw EvoStoneEffect      ; MOON_STONE
	dw EvoStoneEffect      ; SUN_STONE
	dw EvoStoneEffect      ; MIST_STONE

	dw NoEffect            ; EXP_SHARE

	dw NoEffect            ; MIRACLE_SEED
	dw NoEffect            ; SILVERPOWDER
	dw NoEffect            ; POISON_BARB
	dw NoEffect            ; CHARCOAL
	dw NoEffect            ; MYSTIC_WATER
	dw NoEffect            ; NEVERMELTICE
	dw NoEffect            ; MAGNET
	dw NoEffect            ; BLACKBELT_I
	dw NoEffect            ; HARD_STONE
	dw NoEffect            ; SOFT_SAND
	dw NoEffect            ; TWISTEDSPOON
	dw NoEffect            ; PINK_BOW
	dw NoEffect            ; POLKADOT_BOW
	dw NoEffect            ; SHARP_BEAK
	dw NoEffect            ; SPELL_TAG
	dw NoEffect            ; BLACKGLASSES
	dw EvoStoneEffect      ; METAL_COAT
	dw NoEffect            ; DRAGON_FANG

	dw NoEffect            ; BERSERK_GENE
	dw NoEffect            ; BRIGHTPOWDER
	dw NoEffect            ; QUICK_CLAW
	dw EvoStoneEffect      ; KINGS_ROCK
	dw NoEffect            ; AMULET_COIN
	dw NoEffect            ; CLEANSE_TAG
	dw NoEffect            ; SMOKE_BALL
	dw NoEffect            ; FOCUS_BAND
	dw NoEffect            ; LUCKY_EGG
	dw NoEffect            ; LEFTOVERS
	dw NoEffect            ; SCOPE_LENS

	dw NoEffect            ; LIGHT_BALL
	dw NoEffect            ; STICK
	dw NoEffect            ; THICK_CLUB
	dw NoEffect            ; LUCKY_PUNCH
	dw NoEffect            ; METAL_POWDER

	dw EvoStoneEffect      ; DRAGON_SCALE
	dw EvoStoneEffect      ; UP_GRADE
	dw EvoStoneEffect      ; RAZOR_CLAW
	dw EvoStoneEffect      ; DUBIOUS_DISC
	dw EvoStoneEffect      ; PROTECTOR

	dw NoEffect            ; SILVER_LEAF
	dw NoEffect            ; GOLD_LEAF

	dw NoEffect            ; NUGGET
	dw NoEffect            ; TINYMUSHROOM
	dw NoEffect            ; BIG_MUSHROOM
	dw NoEffect            ; PEARL
	dw NoEffect            ; BIG_PEARL
	dw NoEffect            ; STARDUST
	dw NoEffect            ; STAR_PIECE
	dw NoEffect            ; BRICK_PIECE
	dw NoEffect            ; SLOWPOKETAIL

	dw NoEffect            ; WHT_APRICORN
	dw NoEffect            ; RED_APRICORN
	dw NoEffect            ; BLU_APRICORN
	dw NoEffect            ; BLK_APRICORN
	dw NoEffect            ; YLW_APRICORN
	dw NoEffect            ; GRN_APRICORN
	dw NoEffect            ; PNK_APRICORN

	dw NormalBoxEffect     ; NORMAL_BOX
	dw GorgeousBoxEffect   ; GORGEOUS_BOX

	dw NoEffect            ; FLOWER_MAIL
	dw NoEffect            ; SURF_MAIL
	dw NoEffect            ; LITEBLUEMAIL
	dw NoEffect            ; PORTRAITMAIL
	dw NoEffect            ; LOVELY_MAIL
	dw NoEffect            ; EON_MAIL
	dw NoEffect            ; MORPH_MAIL
	dw NoEffect            ; BLUESKY_MAIL
	dw NoEffect            ; MUSIC_MAIL
	dw NoEffect            ; MIRAGE_MAIL

	dw NoEffect            ; POISON_GUARD
	dw NoEffect            ; BURN_GUARD
	dw NoEffect            ; FREEZE_GUARD
	dw NoEffect            ; SLEEP_GUARD
	dw NoEffect            ; PARLYZ_GUARD
	dw NoEffect            ; CONFUSEGUARD

	dw NoEffect            ; DAMP_ROCK
	dw NoEffect            ; HEAT_ROCK
	dw NoEffect            ; SMOOTH_ROCK
	dw NoEffect            ; ICY_ROCK

	dw NoEffect            ; LIGHT_CLAY
	dw NoEffect            ; GRIP_CLAW

	dw NoEffect            ; SAFARI_LURE

	dw NoEffect            ; RADIANCE_ORB
.IndirectEnd:

ItemEffectsKeyItems:
	dw BicycleEffect      ; BICYCLE
	dw CoinCaseEffect     ; COIN_CASE
	dw ItemfinderEffect   ; ITEMFINDER
	dw OldRodEffect       ; OLD_ROD
	dw GoodRodEffect      ; GOOD_ROD
	dw SuperRodEffect     ; SUPER_ROD
	dw NoEffect           ; RED_SCALE
	dw NoEffect           ; SECRETPOTION
	dw NoEffect           ; S_S_TICKET
	dw NoEffect           ; MYSTERY_EGG
	dw NoEffect           ; CLEAR_BELL
	dw NoEffect           ; SILVER_WING
	dw NoEffect           ; GS_BALL
	dw BlueCardEffect     ; BLUE_CARD
	dw CardKeyEffect      ; CARD_KEY
	dw NoEffect           ; MACHINE_PART
	dw NoEffect           ; EGG_TICKET
	dw NoEffect           ; LOST_ITEM
	dw BasementKeyEffect  ; BASEMENT_KEY
	dw NoEffect           ; PASS
	dw SquirtbottleEffect ; SQUIRTBOTTLE
	dw NoEffect           ; RAINBOW_WING
	dw PokeFluteEffect    ; POKE_FLUTE
.IndirectEnd:

ItemEffectsBalls:
	dw PokeBallEffect ; MASTER_BALL
	dw PokeBallEffect ; ULTRA_BALL
	dw PokeBallEffect ; GREAT_BALL
	dw PokeBallEffect ; POKE_BALL
	dw PokeBallEffect ; HEAVY_BALL
	dw PokeBallEffect ; LEVEL_BALL
	dw PokeBallEffect ; LURE_BALL
	dw PokeBallEffect ; FAST_BALL
	dw PokeBallEffect ; FRIEND_BALL
	dw PokeBallEffect ; MOON_BALL
	dw PokeBallEffect ; LOVE_BALL
	dw PokeBallEffect ; PARK_BALL
.IndirectEnd:

PokeBallEffect:
	ld a, [wBattleMode]
	dec a
	jmp nz, UseBallInTrainerBattle

	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jr z, .room_in_party

	ld a, [wPartyCount]
	cp PARTY_LENGTH
	jr nz, .room_in_party

	farcall NewStorageBoxPointer
	jmp c, Ball_BoxIsFullMessage

.room_in_party
	xor a
	ld [wWildMon], a
	ld a, [wBattleType]
	cp BATTLETYPE_CONTEST
	call nz, ReturnToBattle_UseBall

	ld hl, wOptions
	res NO_TEXT_SCROLL, [hl]
	ld hl, ItemUsedText
	call PrintText

	ld a, [wEnemyMonCatchRate]
	ld b, a
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jmp z, .catch_without_fail
	ld a, [wCurItem]
	call GetItemIndexFromID
	cphl16 MASTER_BALL
	jmp z, .catch_without_fail
	ld c, a

	ld de, BallMultiplierFunctionTable
.get_multiplier_loop
	ld a, [de]
	inc de
	cp $ff
	jr z, .next_num
	cp l
	jr nz, .skip_entry
.next_num
	ld a, [de]
	cp -1 ; no balls above $ff00
	inc de
	jr z, .skip_or_return_from_ball_fn
	cp h
.got_mult_index
	jr z, .call_ball_function
	inc de
	inc de
	jr .get_multiplier_loop

.skip_entry
	inc de
	inc de
	inc de
	jr .get_multiplier_loop

.call_ball_function
	ld a, [de]
	ld l, a
	inc de
	ld a, [de]
	ld h, a
	call _hl_
.skip_or_return_from_ball_fn
	ld a, [wCurItem]
	call GetItemIndexFromID
	cphl16 LEVEL_BALL
	ld a, b
	jmp z, .skip_hp_calc

	ld a, b
	ldh [hMultiplicand + 2], a

	ld hl, wEnemyMonHP
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld d, a
	ld e, [hl]
	sla c
	rl b

	ld h, d
	ld l, e
	add hl, de
	add hl, de
	ld d, h
	ld e, l
	ld a, d
	and a
	jr z, .okay_1

	srl d
	rr e
	srl d
	rr e
	srl b
	rr c
	srl b
	rr c

	ld a, c
	and a
	jr nz, .okay_1
	ld c, $1
.okay_1
	ld b, e

	push bc
	ld a, b
	sub c
	ldh [hMultiplier], a
	xor a
	ldh [hDividend + 0], a
	ldh [hMultiplicand + 0], a
	ldh [hMultiplicand + 1], a
	call Multiply
	pop bc

	ld a, b
	ldh [hDivisor], a
	ld b, 4
	call Divide

	ldh a, [hQuotient + 3]
	and a
	jr nz, .statuscheck
	ld a, 1
.statuscheck
	ld b, a
	ld a, [wEnemyMonStatus]
	and 1 << FRZ | SLP_MASK
	ld c, 10
	jr nz, .addstatus
	ld a, [wEnemyMonStatus]
	and a
	ld c, 5
	jr nz, .addstatus
	ld c, 0
.addstatus
	ld a, b
	add c
	jr nc, .max_1
	ld a, $ff
.max_1

	ld d, a
	push de
	ld a, [wBattleMonItem]
	ld b, a
	farcall GetItemHeldEffect
	ld a, b
	cp HELD_CATCH_CHANCE
	pop de
	ld a, d
	jr nz, .max_2
	add c
	jr nc, .max_2
	ld a, $ff
.max_2

.skip_hp_calc
	ld b, a
	ld [wFinalCatchRate], a
	call Random

	cp b
	ld a, 0 ; no-optimize a = 0
	jr z, .catch_without_fail
	jr nc, .fail_to_catch

.catch_without_fail
	ld a, [wEnemyMonSpecies]

.fail_to_catch
	ld [wWildMon], a
	ld c, 20
	call DelayFrames

	ld a, [wCurItem]
	ld [wBattleAnimParam], a
	call GetItemIndexFromID
	cphl16 POKE_BALL + 1 ; Assumes Master/Ultra/Great come before
	jr c, .not_kurt_ball
	ld hl, POKE_BALL
	call GetItemIDFromIndex
	ld [wBattleAnimParam], a
.not_kurt_ball

	ld de, ANIM_THROW_POKE_BALL
	ld a, e
	ld [wFXAnimID], a
	ld a, d
	ld [wFXAnimID + 1], a
	xor a
	ldh [hBattleTurn], a
	ld [wThrownBallWobbleCount], a
	ld [wNumHits], a
	predef PlayBattleAnim

	ld a, [wWildMon]
	and a
	jr nz, .caught
	ld a, [wThrownBallWobbleCount]
	cp 1
	ld hl, BallBrokeFreeText
	jmp z, .shake_and_break_free
	cp 2
	ld hl, BallAppearedCaughtText
	jmp z, .shake_and_break_free
	cp 3
	ld hl, BallAlmostHadItText
	jmp z, .shake_and_break_free
	cp 4
	ld hl, BallSoCloseText
	jmp z, .shake_and_break_free

.caught
	ld hl, wEnemyMonStatus
	ld a, [hli]
	push af
	inc hl
	ld a, [hli]
	push af
	ld a, [hl]
	push af
	push hl
	ld hl, wEnemyMonItem
	ld a, [hl]
	push af
	push hl
	ld hl, wEnemySubStatus5
	ld a, [hl]
	push af
	set SUBSTATUS_TRANSFORMED, [hl]

	bit SUBSTATUS_TRANSFORMED, a
	jr nz, .load_data

	ld hl, wEnemyBackupDVs
	ld a, [wEnemyMonDVs]
	ld [hli], a
	ld a, [wEnemyMonDVs + 1]
	ld [hl], a

.load_data
	ld a, [wTempEnemyMonSpecies]
	ld [wCurPartySpecies], a
	ld a, [wEnemyMonLevel]
	ld [wCurPartyLevel], a
	farcall LoadEnemyMon

	pop af
	ld [wEnemySubStatus5], a

	pop hl
	pop af
	ld [hl], a
	pop hl
	pop af
	ld [hld], a
	pop af
	ld [hld], a
	dec hl
	pop af
	ld [hl], a

	ld hl, wEnemySubStatus5
	bit SUBSTATUS_TRANSFORMED, [hl]
	jr nz, .Transformed
	ld hl, wWildMonMoves
	ld de, wEnemyMonMoves
	ld bc, NUM_MOVES
	rst CopyBytes

	ld hl, wWildMonPP
	ld de, wEnemyMonPP
	ld bc, NUM_MOVES
	rst CopyBytes

.Transformed:
	ld a, [wEnemyMonSpecies]
	ld [wWildMon], a
	ld [wCurPartySpecies], a
	ld [wTempSpecies], a
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jmp z, .FinishTutorial

	farcall StubbedTrainerRankings_WildMonsCaught

	ld hl, Text_GotchaMonWasCaught
	call PrintText

	call ClearSprites

	ld a, [wTempSpecies]
	ld l, a
	ld a, [wCurPartyLevel]
	ld h, a
	push hl
	farcall ApplyExperienceAfterEnemyCaught
	pop hl
	ld a, l
	ld [wCurPartySpecies], a
	ld [wTempSpecies], a
	ld a, h
	ld [wCurPartyLevel], a

	ld a, [wTempSpecies]
	call CheckCaughtMon

	ld a, c
	push af
	ld a, [wTempSpecies]
	call SetSeenAndCaughtMon
	pop af
	and a
	jr nz, .skip_pokedex

	call CheckReceivedDex
	jr z, .skip_pokedex

	ld hl, NewDexDataText
	call PrintText

	call ClearSprites

	ld a, [wEnemyMonSpecies]
	ld [wTempSpecies], a
	predef NewPokedexEntry

.skip_pokedex
	ld a, [wBattleType]
	cp BATTLETYPE_CONTEST
	jmp z, .catch_bug_contest_mon
	cp BATTLETYPE_CELEBI
	jr nz, .not_celebi
	ld hl, wBattleResult
	set BATTLERESULT_CAUGHT_CELEBI, [hl]
.not_celebi

	ld a, [wPartyCount]
	cp PARTY_LENGTH
	jr z, .SendToPC

	xor a ; PARTYMON
	ld [wMonType], a
	call ClearSprites

	predef TryAddMonToParty

	farcall SetCaughtData

	ld a, [wCurItem]
	call GetItemIndexFromID
	cphl16 FRIEND_BALL
	jr nz, .SkipPartyMonFriendBall

	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Happiness
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes

	ld [hl], FRIEND_BALL_HAPPINESS

.SkipPartyMonFriendBall:
	ld hl, AskGiveNicknameText
	call PrintText

	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName

	call YesNoBox
	jmp c, .return_from_capture

	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	rst AddNTimes

	ld d, h
	ld e, l
	push de
	xor a ; PARTYMON
	ld [wMonType], a
	ld b, NAME_MON
	farcall NamingScreen

	ld c, 15
	call FadeToWhite

	call LoadStandardFont

	pop hl
	ld de, wStringBuffer1
	call InitName

	jmp .return_from_capture

.SendToPC:
	call ClearSprites

	predef SendMonIntoBox

	farcall SetBoxMonCaughtData

	farcall NewStorageBoxPointer
	jr nc, .BoxNotFullYet
	ld hl, wBattleResult
	set BATTLERESULT_BOX_FULL, [hl]
.BoxNotFullYet:
	ld a, [wCurItem]
	call GetItemIndexFromID
	cphl16 FRIEND_BALL
	jr nz, .SkipBoxMonFriendBall
	; The captured mon is now first in the box
	ld a, FRIEND_BALL_HAPPINESS
	ld [wBufferMonHappiness], a
.SkipBoxMonFriendBall:
	ld hl, AskGiveNicknameText
	call PrintText

	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName

	call YesNoBox
	jr c, .SkipBoxMonNickname

	xor a
	ld [wCurPartyMon], a
	ld a, BUFFERMON
	ld [wMonType], a
	ld de, wMonOrItemNameBuffer
	ld b, NAME_MON
	farcall NamingScreen

	ld hl, wMonOrItemNameBuffer
	ld de, wBufferMonNickname
	ld bc, MON_NAME_LENGTH
	rst CopyBytes

	ld hl, wBufferMonNickname
	ld de, wStringBuffer1
	call InitName

.SkipBoxMonNickname:
	ld hl, wBufferMonNickname
	ld de, wMonOrItemNameBuffer
	ld bc, MON_NAME_LENGTH
	rst CopyBytes

	farcall UpdateStorageBoxMonFromTemp

	; Switch current Box if it was full. We can check this by checking if
	; the buffermon's box location matches the current box.
	ld a, [wBufferMonBox]
	ld b, a
	ld a, [wCurBox]
	inc a
	cp b
	jr z, .curbox_not_full

	push bc
	ld b, a
	farcall GetBoxName
	ld hl, CurBoxFullText
	call PrintText
	pop bc

	; Switch current box.
	ld a, b
	dec a
	ld [wCurBox], a

.curbox_not_full
	ld a, [wCurBox]
	inc a
	ld b, a
	farcall GetBoxName

	ld hl, BallSentToPCText
	call PrintText

	ld c, 15
	call FadeToWhite

	call LoadStandardFont
	jr .return_from_capture

.catch_bug_contest_mon
	call BugContest_SetCaughtContestMon
	jr .return_from_capture

.FinishTutorial:
	ld hl, Text_GotchaMonWasCaught

.shake_and_break_free
	call PrintText
	call ClearSprites

.return_from_capture
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	ret z
	cp BATTLETYPE_DEBUG
	ret z
	cp BATTLETYPE_CONTEST
	jr z, .used_park_ball

	ld a, [wWildMon]
	and a
	jr z, .toss

	call ClearBGPalettes
	call ClearTilemap

.toss
	ld hl, wNumItems
	inc a
	ld [wItemQuantityChange], a
	jmp TossItem

.used_park_ball
	ld hl, wParkBallsRemaining
	dec [hl]
	ret

BallMultiplierFunctionTable:
; table of routines that increase or decrease the catch rate based on
; which ball is used in a certain situation.
	dw ULTRA_BALL,  UltraBallMultiplier
	dw GREAT_BALL,  GreatBallMultiplier
	dw SAFARI_BALL, SafariBallMultiplier ; Safari Ball, leftover from RBY
	dw HEAVY_BALL,  HeavyBallMultiplier
	dw LEVEL_BALL,  LevelBallMultiplier
	dw LURE_BALL,   LureBallMultiplier
	dw FAST_BALL,   FastBallMultiplier
	dw MOON_BALL,   MoonBallMultiplier
	dw LOVE_BALL,   LoveBallMultiplier
	dw PARK_BALL,   ParkBallMultiplier
	dw -1 ; end

UltraBallMultiplier:
; multiply catch rate by 2
	sla b
	ret nc
	ld b, $ff
	ret

SafariBallMultiplier:
GreatBallMultiplier:
ParkBallMultiplier:
; multiply catch rate by 1.5
	ld a, b
	srl a
	add b
	ld b, a
	ret nc
	ld b, $ff
	ret

HeavyBallMultiplier:
; subtract 20 from catch rate if weight < 102.4 kg
; else add 0 to catch rate if weight < 204.8 kg
; else add 20 to catch rate if weight < 307.2 kg
; else add 30 to catch rate if weight < 409.6 kg
; else add 40 to catch rate
	ld a, [wEnemyMonSpecies]
	call GetPokemonIndexFromID
	dec hl
	ld d, h
	ld e, l
	add hl, hl
	add hl, de
	ld de, PokedexDataPointerTable
	add hl, de
	ld a, BANK(PokedexDataPointerTable)
	call GetFarByte
	push af
	inc hl
	ld a, BANK(PokedexDataPointerTable)
	call GetFarWord
	pop de

.SkipText:
	ld a, d
	call GetFarByte
	inc hl
	cp "@"
	jr nz, .SkipText

	ld a, d
	push bc
	inc hl
	inc hl
	call GetFarWord

	srl h
	rr l
	ld b, h
	ld c, l

rept 4
	srl b
	rr c
endr
	call .subbc

	srl b
	rr c
	call .subbc

	ld a, h
	pop bc
	jr .compare

.subbc
	; subtract bc from hl
	push bc
	ld a, b
	cpl
	ld b, a
	ld a, c
	cpl
	ld c, a
	inc bc
	add hl, bc
	pop bc
	ret

.compare
	ld c, a
	cp HIGH(1024) ; 102.4 kg
	jr c, .lightmon

	ld hl, .WeightsTable
.lookup
	ld a, c
	cp [hl]
	jr c, .heavymon
	inc hl
	inc hl
	jr .lookup

.heavymon
	inc hl
	ld a, b
	add [hl]
	ld b, a
	ret nc
	ld b, $ff
	ret

.lightmon
	ld a, b
	sub 20
	ld b, a
	ret nc
	ld b, $1
	ret

.WeightsTable:
; weight factor, boost
	db HIGH(2048),   0
	db HIGH(3072),  20
	db HIGH(4096),  30
	db HIGH(65280), 40

LureBallMultiplier:
; multiply catch rate by 3 if this is a fishing rod battle
	ld a, [wBattleType]
	cp BATTLETYPE_FISH
	ret nz

	ld a, b
	add a
	jr c, .max

	add b
	jr nc, .done
.max
	ld a, $ff
.done
	ld b, a
	ret

MoonBallMultiplier:
; Multiply catch rate by 4 if mon evolves with moon stone
	push de
	push bc
	ld a, [wTempEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer

	ld a, [wCurItem]
	ld c, a
	push hl
	ld hl, MOON_STONE
	call GetItemIDFromIndex
	pop hl
	ld [wCurItem], a
	ld d, h
	ld e, l
	farcall DetermineEvolutionItemResults
	ld a, c
	ld [wCurItem], a
	ld a, d
	or e
	pop bc
	pop de
	ret z

	sla b
	jr c, .max
	sla b
	ret nc
.max
	ld b, $ff
	ret

LoveBallMultiplier:

	; does species match?
	ld a, [wTempEnemyMonSpecies]
	ld c, a
	ld a, [wTempBattleMonSpecies]
	cp c
	ret nz

	; check player mon species
	push bc
	ld a, [wTempBattleMonSpecies]
	ld [wCurPartySpecies], a
	xor a ; PARTYMON
	ld [wMonType], a
	ld a, [wCurBattleMon]
	ld [wCurPartyMon], a
	farcall GetGender
	jr c, .done1 ; no effect on genderless

	ld d, 0 ; male
	jr nz, .got_player_gender
	inc d   ; female
.got_player_gender

	; check wild mon species
	push de
	ld a, [wTempEnemyMonSpecies]
	ld [wCurPartySpecies], a
	ld a, WILDMON
	ld [wMonType], a
	farcall GetGender
	jr c, .done2 ; no effect on genderless

	ld d, 0 ; male
	jr nz, .got_wild_gender
	inc d   ; female
.got_wild_gender

	ld a, d
	pop de
	cp d
	pop bc
	ret z

	sla b
	jr c, .max
	sla b
	jr c, .max
	sla b
	ret nc
.max
	ld b, $ff
	ret

.done2
	pop de

.done1
	pop bc
	ret

FastBallMultiplier:
; multiply catch rate by 4 if the enemy mon is in the FleeMons tables
	ld a, [wTempEnemyMonSpecies]
	call GetPokemonIndexFromID
	ld d, h
	ld e, l
	ld hl, FleeMons
	ld c, 3
	push bc

.loop
	ld a, BANK(FleeMons)
	call GetFarByte
	ld c, a
	inc hl
	ld a, BANK(FleeMons)
	call GetFarByte
	ld b, a
	and c
	inc a
	jr z, .next_list
	ld a, b
	cp d
	jr nz, .loop
	ld a, c
	cp e
	jr nz, .loop

	pop bc
	sla b
	jr c, .max
	sla b
	ret nc
.max
	ld b, $ff
	ret

.next_list
	pop bc
	dec c
	ret z
	push bc
	jr .loop

LevelBallMultiplier:
; multiply catch rate by 8 if player mon level / 4 > enemy mon level
; multiply catch rate by 4 if player mon level / 2 > enemy mon level
; multiply catch rate by 2 if player mon level > enemy mon level
	ld a, [wBattleMonLevel]
	ld c, a
	ld a, [wEnemyMonLevel]
	cp c
	ret nc ; if player is lower level, we're done here
	sla b
	jr c, .max

	srl c
	cp c
	ret nc ; if player/2 is lower level, we're done here
	sla b
	jr c, .max

	srl c
	cp c
	ret nc ; if player/4 is lower level, we're done here
	sla b
	ret nc

.max
	ld b, $ff
	ret

; BallDodgedText and BallMissedText were used in Gen 1.

BallBrokeFreeText:
	text_far _BallBrokeFreeText
	text_end

BallAppearedCaughtText:
	text_far _BallAppearedCaughtText
	text_end

BallAlmostHadItText:
	text_far _BallAlmostHadItText
	text_end

BallSoCloseText:
	text_far _BallSoCloseText
	text_end

Text_GotchaMonWasCaught:
	; Gotcha! @ was caught!@ @
	text_far Text_BallCaught
	text_asm
	call WaitSFX
	push bc
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld de, MUSIC_CAPTURE
	call PlayMusic
	pop bc
	ld hl, WaitButtonText
	ret

WaitButtonText:
	text_far _WaitButtonText
	text_end

CurBoxFullText:
	text_far _CurBoxFullText
	text_end

BallSentToPCText:
	text_far _BallSentToPCText
	text_end

NewDexDataText:
	text_far _NewDexDataText
	text_end

AskGiveNicknameText:
	text_far _AskGiveNicknameText
	text_end

ReturnToBattle_UseBall:
	farjp _ReturnToBattle_UseBall

BicycleEffect:
	jmp BikeFunction

EvoStoneEffect:
	ld b, PARTYMENUACTION_EVO_STONE
	call UseItem_SelectMon

	jr c, .DecidedNotToUse

	ld a, MON_ITEM
	call GetPartyParamLocation

	ld a, TRUE
	ld [wForceEvolution], a
	farcall EvolvePokemon

	ld a, [wMonTriedToEvolve]
	and a
	jmp nz, UseDisposableItem
; fallthrough
.NoEffect:
	call WontHaveAnyEffectMessage

.DecidedNotToUse:
	xor a
	ld [wItemEffectSucceeded], a
	ret

VitaminEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon

	jr c, RareCandy_StatBooster_ExitMenu

	call RareCandy_StatBooster_GetParameters

	call GetEVRelativePointer

	ld a, MON_EVS
	call GetPartyParamLocation

	ld d, 10
	push bc
	push hl
	ld e, NUM_STATS
	ld bc, 0
.count_evs
	ld a, [hli]
	add c
	ld c, a
	adc b
	sub c
	ld b, a
	dec e
	jr nz, .count_evs
	ld a, d
	add c
	ld c, a
	adc b
	sub c
	ld b, a
	ld e, d
.decrease_evs_gained
	farcall IsEvsGreaterThan510
	jr nc, .check_ev_overflow
	dec e
	dec bc
	jr .decrease_evs_gained
.check_ev_overflow
	pop hl
	pop bc

	ld a, e
	and a
	jr z, NoEffectMessage

	add hl, bc
	ld a, [hl]
	cp 100
	jr nc, NoEffectMessage

	add e
	ld [hl], a
	call UpdateStatsAfterItem

	call GetEVRelativePointer

	ld hl, StatStrings
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wStringBuffer2
	ld bc, ITEM_NAME_LENGTH
	rst CopyBytes

	call Play_SFX_FULL_HEAL

	ld hl, ItemStatRoseText
	call PrintText

	ld c, HAPPINESS_USEDITEM
	farcall ChangeHappiness

	jmp UseDisposableItem

NoEffectMessage:
	ld hl, ItemWontHaveEffectText
	call PrintText
	jmp ClearPalettes

UpdateStatsAfterItem:
	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld d, h
	ld e, l
	ld a, MON_EVS - 1
	call GetPartyParamLocation
	ld b, TRUE
	predef_jump CalcMonStats

RareCandy_StatBooster_ExitMenu:
	xor a
	ld [wItemEffectSucceeded], a
	jmp ClearPalettes

ItemStatRoseText:
	text_far _ItemStatRoseText
	text_end

StatStrings:
	dw .health
	dw .attack
	dw .defense
	dw .speed
	dw .sp_atk
	dw .sp_def

.health  db "HEALTH@"
.attack  db "ATTACK@"
.defense db "DEFENSE@"
.speed   db "SPEED@"
.sp_atk  db "SPCL.ATK@"
.sp_def  db "SPCL.DEF@"

GetEVRelativePointer:
	ld a, [wCurItem]
	call GetItemIndexFromID
	ld de, EVItemPointerOffsets
.next
	ld a, [de]
	inc de
	cp l
	jr nz, .skip_entry
	ld a, [de]
	inc de
	cp h
	jr z, .got_it
	inc de
	jr .next ; possible infinite loop here
.skip_entry
	inc de
	inc de
	jr .next

.got_it
	ld a, [de]
	ld c, a
	ld b, 0
	ret

EVItemPointerOffsets:
	dwb HP_UP,   MON_HP_EV  - MON_EVS
	dwb PROTEIN, MON_ATK_EV - MON_EVS
	dwb IRON,    MON_DEF_EV - MON_EVS
	dwb CARBOS,  MON_SPD_EV - MON_EVS
	dwb CALCIUM, MON_SAT_EV - MON_EVS
	dwb ZINC,    MON_SDF_EV - MON_EVS

RareCandy_StatBooster_GetParameters:
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	ld [wTempSpecies], a
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurPartyLevel], a
	call GetBaseData
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	jmp GetNickname

RareCandyEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon

	jmp c, RareCandy_StatBooster_ExitMenu

	call RareCandy_StatBooster_GetParameters

	ld a, MON_LEVEL
	call GetPartyParamLocation

	ld a, [hl]
	cp MAX_LEVEL
	jmp nc, NoEffectMessage

	inc a
	ld [hl], a
	ld [wCurPartyLevel], a
	push de
	ld d, a
	farcall CalcExpAtLevel

	pop de
	ld a, MON_EXP
	call GetPartyParamLocation

	ldh a, [hMultiplicand + 0]
	ld [hli], a
	ldh a, [hMultiplicand + 1]
	ld [hli], a
	ldh a, [hMultiplicand + 2]
	ld [hl], a

	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld a, [hli]
	ld b, a
	ld c, [hl]
	push bc
	call UpdateStatsAfterItem

	ld a, MON_MAXHP + 1
	call GetPartyParamLocation

	pop bc
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a
	dec hl
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a
	farcall LevelUpHappinessMod

	ld a, PARTYMENUTEXT_LEVEL_UP
	call ItemActionText

	xor a ; PARTYMON
	ld [wMonType], a
	predef CopyMonToTempMon

	hlcoord 9, 0
	lb bc, 10, 9
	call Textbox

	hlcoord 11, 1
	ld bc, 4
	predef PrintTempMonStats

	call WaitPressAorB_BlinkCursor

	xor a ; PARTYMON
	ld [wMonType], a
	ld a, [wCurPartySpecies]
	ld [wTempSpecies], a
	predef LearnLevelMoves

	xor a
	ld [wForceEvolution], a
	farcall EvolvePokemon

	jmp UseDisposableItem

HealPowderEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon

	jmp c, StatusHealer_ExitMenu

	call UseStatusHealer
	cp FALSE
	jr nz, .not_used

	ld c, HAPPINESS_BITTERPOWDER
	farcall ChangeHappiness
	call LooksBitterMessage
	xor a
; fallthrough
.not_used
	jmp StatusHealer_Jumptable

StatusHealingEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	jmp c, StatusHealer_ExitMenu

FullyHealStatus:
	call UseStatusHealer
	jmp StatusHealer_Jumptable

UseStatusHealer:
	call IsMonFainted
	ld a, TRUE
	ret z
	call GetItemHealingAction
	ld a, MON_STATUS
	call GetPartyParamLocation
	ld a, [hl]
	and c
	jr nz, .good
	call IsItemUsedOnConfusedMon
	ld a, TRUE
	ret nc
	ld b, PARTYMENUTEXT_HEAL_CONFUSION
.good
	xor a
	ld [hl], a
	ld a, b
	ld [wPartyMenuActionText], a
	call HealStatus
	call Play_SFX_FULL_HEAL
	call ItemActionTextWaitButton
	call UseDisposableItem
	xor a ; FALSE
	ret

IsItemUsedOnConfusedMon:
	call IsItemUsedOnBattleMon
	jr nc, .nope
	ld a, [wPlayerSubStatus3]
	bit SUBSTATUS_CONFUSED, a
	jr z, .nope
	ld a, c
	cp $ff
	jr nz, .nope
	scf
	ret

.nope
	and a
	ret

BattlemonRestoreHealth:
	call IsItemUsedOnBattleMon
	ret nc
	ld a, MON_HP
	call GetPartyParamLocation
	ld a, [hli]
	ld [wBattleMonHP], a
	ld a, [hld]
	ld [wBattleMonHP + 1], a
	ret

HealStatus:
	call IsItemUsedOnBattleMon
	ret nc
	xor a
	ld [wBattleMonStatus], a
	ld hl, wPlayerSubStatus5
	res SUBSTATUS_TOXIC, [hl]
	ld hl, wPlayerSubStatus1
	res SUBSTATUS_NIGHTMARE, [hl]
	call GetItemHealingAction
	ld a, c
	cp %11111111
	jr nz, .not_full_heal
	ld hl, wPlayerSubStatus3
	res SUBSTATUS_CONFUSED, [hl]
.not_full_heal
	push bc
	farcall CalcPlayerStats
	pop bc
	ret

GetItemHealingAction:
	push hl
	push de
	ld hl, StatusHealingActions
	ld de, 4
.next
	call GetItemIDFromHL
	and a
	jr z, .found_it ; NO_ITEM Bound check.
	ld b, a
	ld a, [wCurItem]
	cp b
	jr z, .found_it
	add hl, de
	jr .next

.found_it
	inc hl
	inc hl
	ld a, [hli]
	ld b, a
	ld a, [hl]
	ld c, a
	cp %11111111
	pop de
	pop hl
	ret

INCLUDE "data/items/heal_status.asm"

StatusHealer_Jumptable:
	ld hl, .dw
	jmp JumpTable

.dw
	dw StatusHealer_ClearPalettes
	dw StatusHealer_NoEffect
	dw StatusHealer_ExitMenu

RevivalHerbEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	jmp c, StatusHealer_ExitMenu

	call RevivePokemon
	cp FALSE
	jr nz, StatusHealer_Jumptable

	ld c, HAPPINESS_REVIVALHERB
	farcall ChangeHappiness
	call LooksBitterMessage
	xor a
	jr StatusHealer_Jumptable

ReviveEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	jmp c, StatusHealer_ExitMenu

	call RevivePokemon
	jr StatusHealer_Jumptable

RevivePokemon:
	call IsMonFainted
	ld a, TRUE
	ret nz
	ld a, [wBattleMode]
	and a
	jr z, .skip_to_revive

	ld a, [wCurPartyMon]
	ld c, a
	ld d, 0
	ld hl, wBattleParticipantsIncludingFainted
	ld b, CHECK_FLAG
	predef SmallFarFlagAction
	ld a, c
	and a
	jr z, .skip_to_revive

	ld a, [wCurPartyMon]
	ld c, a
	ld hl, wBattleParticipantsNotFainted
	ld b, SET_FLAG
	predef SmallFarFlagAction

.skip_to_revive
	xor a
	ld [wLowHealthAlarm], a
	ld a, [wCurItem]
	push hl
	call GetItemIndexFromID
	cphl16 REVIVE
	pop hl
	jr z, .revive_half_hp

	call ReviveFullHP
	jr .finish_revive

.revive_half_hp
	call ReviveHalfHP

.finish_revive
	call HealHP_SFX_GFX
	ld a, PARTYMENUTEXT_REVIVE
	ld [wPartyMenuActionText], a
	call ItemActionTextWaitButton
	call UseDisposableItem
	xor a ; FALSE
	ret

FullRestoreEffect:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	jmp c, StatusHealer_ExitMenu

	call IsMonFainted
	jmp z, StatusHealer_NoEffect

	call IsMonAtFullHealth
	jmp nc, FullyHealStatus
	call .FullRestore
	jmp StatusHealer_Jumptable

.FullRestore:
	xor a
	ld [wLowHealthAlarm], a
	call ReviveFullHP
	ld a, MON_STATUS
	call GetPartyParamLocation
	xor a
	ld [hli], a
	ld [hl], a
	call HealStatus
	call BattlemonRestoreHealth
	call HealHP_SFX_GFX
	ld a, PARTYMENUTEXT_HEAL_HP
	ld [wPartyMenuActionText], a
	call ItemActionTextWaitButton
	call UseDisposableItem
	xor a
	ret

BitterBerryEffect:
	ld hl, wPlayerSubStatus3
	bit SUBSTATUS_CONFUSED, [hl]
	ld a, 1
	jr z, .done

	res SUBSTATUS_CONFUSED, [hl]
	xor a
	ldh [hBattleTurn], a
	call UseItemText

	ld hl, ConfusedNoMoreText
	call StdBattleTextbox
	xor a
; fallthrough
.done
	jmp StatusHealer_Jumptable

RestoreHPEffect:
	call ItemRestoreHP
	jmp StatusHealer_Jumptable

EnergypowderEffect:
	ld c, HAPPINESS_BITTERPOWDER
	jr EnergypowderEnergyRootCommon

EnergyRootEffect:
	ld c, HAPPINESS_ENERGYROOT

EnergypowderEnergyRootCommon:
	push bc
	call ItemRestoreHP
	pop bc
	and a
	jr nz, .skip_happiness

	farcall ChangeHappiness
	call LooksBitterMessage
	xor a
; fallthrough
.skip_happiness
	jmp StatusHealer_Jumptable

ItemRestoreHP:
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	ld a, 2
	ret c

	call IsMonFainted
	ld a, 1
	ret z

	call IsMonAtFullHealth
	ld a, 1
	ret nc

	xor a
	ld [wLowHealthAlarm], a
	call GetHealingItemAmount
	call RestoreHealth
	call BattlemonRestoreHealth
	call HealHP_SFX_GFX
	ld a, PARTYMENUTEXT_HEAL_HP
	ld [wPartyMenuActionText], a
	call ItemActionTextWaitButton
	call UseDisposableItem
	xor a
	ret

HealHP_SFX_GFX:
	push de
	ld de, SFX_POTION
	call WaitPlaySFX
	pop de
	ld a, [wCurPartyMon]
	hlcoord 11, 0
	ld bc, SCREEN_WIDTH * 2
	rst AddNTimes
	ld a, $2
	ld [wWhichHPBar], a
	predef_jump AnimateHPBar

UseItem_SelectMon:
	call .SelectMon
	ret c

	ld a, [wCurPartySpecies]
	cp EGG
	jr nz, .not_egg

	call CantUseOnEggMessage
	scf
	ret

.not_egg
	and a
	ret

.SelectMon:
	ld a, b
	ld [wPartyMenuActionText], a
	push hl
	push de
	push bc
	call ClearBGPalettes
	call ChooseMonToUseItemOn
	jmp PopBCDEHL

ChooseMonToUseItemOn:
	farcall LoadPartyMenuGFX
	farcall InitPartyMenuWithCancel
	farcall InitPartyMenuGFX
	farcall WritePartyMenuTilemap
	farcall PlacePartyMenuText
	call WaitBGMap
	call SetDefaultBGPAndOBP
	call DelayFrame
	farjp PartyMenuSelect

ItemActionText:
	ld [wPartyMenuActionText], a
	ld a, [wCurPartySpecies]
	push af
	ld a, [wCurPartyMon]
	push af
	push hl
	push de
	push bc
	farcall WritePartyMenuTilemap
	farcall PrintPartyMenuActionText
	call WaitBGMap
	call SetDefaultBGPAndOBP
	call DelayFrame
	pop bc
	pop de
	pop hl
	pop af
	ld [wCurPartyMon], a
	pop af
	ld [wCurPartySpecies], a
	ret

ItemActionTextWaitButton:
	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 0
	ld bc, wTilemapEnd - wTilemap
	ld a, " "
	rst ByteFill
	ld a, [wPartyMenuActionText]
	call ItemActionText
	ld a, $1
	ldh [hBGMapMode], a
	ld c, 50
	call DelayFrames
	jmp WaitPressAorB_BlinkCursor

StatusHealer_NoEffect:
	call WontHaveAnyEffectMessage
	jr StatusHealer_ClearPalettes

StatusHealer_ExitMenu:
	xor a
	ld [wItemEffectSucceeded], a
StatusHealer_ClearPalettes:
	jmp ClearPalettes

IsItemUsedOnBattleMon:
	ld a, [wBattleMode]
	and a
	ret z
	ld a, [wCurPartyMon]
	push hl
	ld hl, wCurBattleMon
	cp [hl]
	pop hl
	jr nz, .nope
	scf
	ret

.nope
	xor a
	ret

ReviveHalfHP:
	call LoadHPFromBuffer1
	srl d
	rr e
	jr ContinueRevive

ReviveFullHP:
	call LoadHPFromBuffer1
ContinueRevive:
	ld a, MON_HP
	call GetPartyParamLocation
	ld a, d
	ld [hli], a
	ld [hl], e
	jr LoadCurHPIntoBuffer3

RestoreHealth:
	ld a, MON_HP + 1
	call GetPartyParamLocation
	ld a, [hl]
	add e
	ld [hld], a
	ld a, [hl]
	adc d
	ld [hl], a
	jr c, ReviveFullHP
	call LoadCurHPIntoBuffer3
	ld a, MON_HP + 1
	call GetPartyParamLocation
	ld d, h
	ld e, l
	ld a, MON_MAXHP + 1
	call GetPartyParamLocation
	ld a, [de]
	sub [hl]
	dec de
	dec hl
	ld a, [de]
	sbc [hl]
	ret c
	jr ReviveFullHP

RemoveHP:
	ld a, MON_HP + 1
	call GetPartyParamLocation
	ld a, [hl]
	sub e
	ld [hld], a
	ld a, [hl]
	sbc d
	ld [hl], a
	jr nc, LoadCurHPIntoBuffer3
	xor a
	ld [hld], a
	ld [hl], a
	jr LoadCurHPIntoBuffer3

IsMonFainted:
	push de
	call LoadMaxHPIntoBuffer1
	call LoadCurHPIntoBuffer2
	call LoadHPFromBuffer2
	ld a, d
	or e
	pop de
	ret

IsMonAtFullHealth:
	call LoadHPFromBuffer2
	ld h, d
	ld l, e
	call LoadHPFromBuffer1
	ld a, l
	sub e
	ld a, h
	sbc d
	ret

LoadCurHPIntoBuffer3:
	ld a, MON_HP
	call GetPartyParamLocation
	ld a, [hli]
	ld [wHPBuffer3 + 1], a
	ld a, [hl]
	ld [wHPBuffer3], a
	ret

LoadCurHPIntoBuffer2:
	ld a, MON_HP
	call GetPartyParamLocation
	ld a, [hli]
	ld [wHPBuffer2 + 1], a
	ld a, [hl]
	ld [wHPBuffer2], a
	ret

LoadHPFromBuffer2:
	ld a, [wHPBuffer2 + 1]
	ld d, a
	ld a, [wHPBuffer2]
	ld e, a
	ret

LoadMaxHPIntoBuffer1:
	push hl
	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld a, [hli]
	ld [wHPBuffer1 + 1], a
	ld a, [hl]
	ld [wHPBuffer1], a
	pop hl
	ret

LoadHPFromBuffer1:
	ld a, [wHPBuffer1 + 1]
	ld d, a
	ld a, [wHPBuffer1]
	ld e, a
	ret

GetOneFifthMaxHP:
	push bc
	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld a, [hli]
	ldh [hDividend + 0], a
	ld a, [hl]
	ldh [hDividend + 1], a
	ld a, 5
	ldh [hDivisor], a
	ld b, 2
	call Divide
	ldh a, [hQuotient + 2]
	ld d, a
	ldh a, [hQuotient + 3]
	ld e, a
	pop bc
	ret

GetHealingItemAmount:
	push hl
	ld hl, HealingHPAmounts
	; [hl] == $ffff?
.check
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	cphl16 $ffff
	pop hl
	jr z, .not_found ; branch if $ffff
	call GetItemIDFromHL
	ld b, a
	ld a, [wCurItem]

	inc hl
	inc hl ; hl at price

	cp b
	jr z, .done
	inc hl
	inc hl
	jr .check

.not_found:
	inc hl
	inc hl
	scf
.done
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	ret

INCLUDE "data/items/heal_hp.asm"

Softboiled_MilkDrinkFunction:
; Softboiled/Milk Drink in the field
	ld a, [wPartyMenuCursor]
	dec a
	ld b, a
	call .SelectMilkDrinkRecipient ; select pokemon
	jr c, .skip
	ld a, b
	ld [wCurPartyMon], a
	call IsMonFainted
	call GetOneFifthMaxHP
	call RemoveHP
	push bc
	call HealHP_SFX_GFX
	pop bc
	call GetOneFifthMaxHP
	ld a, c
	ld [wCurPartyMon], a
	call IsMonFainted
	call RestoreHealth
	call HealHP_SFX_GFX
	ld a, PARTYMENUTEXT_HEAL_HP
	call ItemActionText
	call JoyWaitAorB
.skip
	ld a, b
	inc a
	ld [wPartyMenuCursor], a
	ret

.SelectMilkDrinkRecipient:
.loop
	push bc
	ld a, PARTYMENUACTION_HEALING_ITEM
	ld [wPartyMenuActionText], a
	call ChooseMonToUseItemOn
	pop bc
	jr c, .set_carry
	ld a, [wPartyMenuCursor]
	dec a
	ld c, a
	ld a, b
	cp c
	jr z, .cant_use ; chose the same mon as user
	ld a, c
	ld [wCurPartyMon], a
	call IsMonFainted
	jr z, .cant_use
	call IsMonAtFullHealth
	jr nc, .cant_use
	xor a
	ret

.set_carry
	scf
	ret

.cant_use
	push bc
	ld hl, .ItemCantUseOnMonText
	call MenuTextboxBackup
	pop bc
	jr .loop

.ItemCantUseOnMonText:
	text_far _ItemCantUseOnMonText
	text_end

EscapeRopeEffect:
	xor a
	ld [wItemEffectSucceeded], a
	call EscapeRopeFunction

	ld a, [wItemEffectSucceeded]
	cp 1
	jmp z, UseDisposableItem
	ret

SuperRepelEffect:
	ld b, 200
	jr UseRepel

MaxRepelEffect:
	ld b, 250
	jr UseRepel

RepelEffect:
	ld b, 100

UseRepel:
	ld a, [wRepelEffect]
	and a
	ld hl, RepelUsedEarlierIsStillInEffectText
	jmp nz, PrintText

	ld a, b
	ld [wRepelEffect], a
	ld a, [wCurItem]
	ld [wRepelType], a
	jmp UseItemText

RepelUsedEarlierIsStillInEffectText:
	text_far _RepelUsedEarlierIsStillInEffectText
	text_end

XAccuracyEffect:
	ld hl, wPlayerSubStatus4
	bit SUBSTATUS_X_ACCURACY, [hl]
	jmp nz, WontHaveAnyEffect_NotUsedMessage
	set SUBSTATUS_X_ACCURACY, [hl]
	jmp UseItemText

PokeDollEffect:
	ld a, [wBattleMode]
	dec a ; WILD_BATTLE?
	jr nz, .not_wild
	inc a ; TRUE
	ld [wForcedSwitch], a
	ld a, [wBattleResult]
	and BATTLERESULT_BITMASK
	or DRAW
	ld [wBattleResult], a
	jmp UseItemText

.not_wild
	xor a
	ld [wItemEffectSucceeded], a
	ret

GuardSpecEffect:
	ld hl, wPlayerSubStatus4
	bit SUBSTATUS_MIST, [hl]
	jmp nz, WontHaveAnyEffect_NotUsedMessage
	set SUBSTATUS_MIST, [hl]
	jmp UseItemText

DireHitEffect:
	ld hl, wPlayerSubStatus4
	bit SUBSTATUS_FOCUS_ENERGY, [hl]
	jmp nz, WontHaveAnyEffect_NotUsedMessage
	set SUBSTATUS_FOCUS_ENERGY, [hl]
	jmp UseItemText

XItemEffect:
	call UseItemText
	ld hl, XItemStats
.loop
	call GetItemIDFromHL
	ld b, a
	ld a, [wCurItem]
	cp b
	jr z, .got_it
; move to next item
	inc hl
	inc hl
	inc hl
	jr .loop

.got_it
	inc hl
	inc hl
	ld b, [hl]
	xor a
	ldh [hBattleTurn], a
	ld [wAttackMissed], a
	ld [wEffectFailed], a
	farcall RaiseStat
	call WaitSFX

	farcall BattleCommand_StatUpMessage
	farcall BattleCommand_StatUpFailText

	ld a, [wCurBattleMon]
	ld [wCurPartyMon], a
	ld c, HAPPINESS_USEDXITEM
	farjp ChangeHappiness

INCLUDE "data/items/x_stats.asm"

PokeFluteEffect:
	ld a, [wBattleMode]
	and a
	jr nz, .in_battle
	; overworld flute code was dummied out here

.in_battle
	xor a
	ld [wPokeFluteCuredSleep], a

	ld b, ~SLP_MASK

	ld hl, wPartyMon1Status
	call .CureSleep

	ld a, [wBattleMode]
	cp WILD_BATTLE
	jr z, .skip_otrainer
	ld hl, wOTPartyMon1Status
	call .CureSleep
.skip_otrainer

	ld hl, wBattleMonStatus
	ld a, [hl]
	and b
	ld [hl], a
	ld hl, wEnemyMonStatus
	ld a, [hl]
	and b
	ld [hl], a

	ld a, [wPokeFluteCuredSleep]
	and a
	ld hl, .PlayedFluteText
	jmp z, PrintText
	ld hl, .PlayedTheFlute
	call PrintText

	ld a, [wLowHealthAlarm]
	and 1 << DANGER_ON_F
	jr nz, .dummy
	; more code was dummied out here
.dummy
	ld hl, .FluteWakeUpText
	jmp PrintText

.CureSleep:
	ld de, PARTYMON_STRUCT_LENGTH
	ld c, PARTY_LENGTH
.loop
	ld a, [hl]
	push af
	and SLP_MASK
	jr z, .not_asleep
	ld a, TRUE
	ld [wPokeFluteCuredSleep], a
.not_asleep
	pop af
	and b
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop
	ret

.PlayedFluteText:
	text_far _PlayedFluteText
	text_end

.FluteWakeUpText:
	text_far _FluteWakeUpText
	text_end

.PlayedTheFlute:
	; played the # FLUTE.@ @
	text_far Text_PlayedPokeFlute
	text_asm
	ld a, [wBattleMode]
	and a
	jr nz, .battle

	push de
	ld de, SFX_POKEFLUTE
	call WaitPlaySFX
	call WaitSFX
	pop de

.battle
	jmp PokeFluteTerminator

BlueCardEffect:
	ld hl, .BlueCardBalanceText
	jmp MenuTextboxWaitButton

.BlueCardBalanceText:
	text_far _BlueCardBalanceText
	text_end

CoinCaseEffect:
	ld hl, .CoinCaseCountText
	jmp MenuTextboxWaitButton

.CoinCaseCountText:
	text_far _CoinCaseCountText
	text_end

OldRodEffect:
	ld e, $0
	jr UseRod

GoodRodEffect:
	ld e, $1
	jr UseRod

SuperRodEffect:
	ld e, $2
; fallthrough
UseRod:
	jmp FishFunction

ItemfinderEffect:
	farjp ItemFinder

RestorePPEffect:
	ld a, [wCurItem]
	ld [wTempRestorePPItem], a

.loop
	; Party Screen opens to choose on which mon to use the Item
	ld b, PARTYMENUACTION_HEALING_ITEM
	call UseItem_SelectMon
	jmp c, PPRestoreItem_Cancel

.loop2
	ld a, [wTempRestorePPItem]
	call GetItemIndexFromID
	cphl16 MAX_ELIXER
	jmp z, Elixer_RestorePPofAllMoves
	cphl16 ELIXER
	jmp z, Elixer_RestorePPofAllMoves

	ld hl, RaiseThePPOfWhichMoveText
	ld a, [wTempRestorePPItem]
	push hl
	call GetItemIndexFromID
	cphl16 PP_UP
	pop hl
	jr z, .ppup
	ld hl, RestoreThePPOfWhichMoveText

.ppup
	call PrintText

	ld a, [wCurMoveNum]
	push af
	xor a
	ld [wCurMoveNum], a
	ld a, $2
	ld [wMoveSelectionMenuType], a
	farcall MoveSelectionScreen
	pop bc

	ld a, b
	ld [wCurMoveNum], a
	jr nz, .loop
	ld hl, wPartyMon1Moves
	ld bc, PARTYMON_STRUCT_LENGTH
	call GetMthMoveOfNthPartymon

	push hl
	ld a, [hl]
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyName1
	pop hl

	ld a, [wTempRestorePPItem]
	push hl
	call GetItemIndexFromID
	cphl16 PP_UP
	pop hl
	jmp nz, Not_PP_Up

	ld a, [hl]
	push hl
	call GetMoveIndexFromID
	ld a, h
	if HIGH(SKETCH)
		cp HIGH(SKETCH)
	else
		and a
	endc
	ld a, l
	pop hl
	jr nz, .not_sketch
	cp LOW(SKETCH)
	jr z, .CantUsePPUpOnSketch
.not_sketch

	ld bc, MON_PP - MON_MOVES
	add hl, bc
	ld a, [hl]
	cp PP_UP_MASK
	jr c, .do_ppup

.CantUsePPUpOnSketch:
	ld hl, PPIsMaxedOutText
	call PrintText
	jmp .loop2

.do_ppup
	ld a, [hl]
	add PP_UP_ONE
	ld [hl], a
	ld a, TRUE
	ld [wUsePPUp], a
	call ApplyPPUp
	call Play_SFX_FULL_HEAL

	ld hl, PPsIncreasedText
	call PrintText

FinishPPRestore:
	call ClearPalettes
	jmp UseDisposableItem

BattleRestorePP:
	ld a, [wBattleMode]
	and a
	jr z, .not_in_battle
	ld a, [wCurPartyMon]
	ld b, a
	ld a, [wCurBattleMon]
	cp b
	jr nz, .not_in_battle
	ld a, [wPlayerSubStatus5]
	bit SUBSTATUS_TRANSFORMED, a
	call z, .UpdateBattleMonPP
; fallthrough
.not_in_battle
	call Play_SFX_FULL_HEAL
	ld hl, PPRestoredText
	call PrintText
	jr FinishPPRestore

.UpdateBattleMonPP:
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Moves
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld de, wBattleMonMoves
	ld b, NUM_MOVES
.loop
	ld a, [de]
	and a
	ret z
	cp [hl]
	jr nz, .next
	push hl
	push de
	push bc
rept NUM_MOVES + 2 ; wBattleMonPP - wBattleMonMoves
	inc de
endr
	ld bc, MON_PP - MON_MOVES
	add hl, bc
	ld a, [hl]
	ld [de], a
	pop bc
	pop de
	pop hl

.next
	inc hl
	inc de
	dec b
	jr nz, .loop
	ret

Not_PP_Up:
	call RestorePP
	jr nz, BattleRestorePP
	jr PPRestoreItem_NoEffect

Elixer_RestorePPofAllMoves:
	xor a
	ld hl, wMenuCursorY
	ld [hli], a
	ld [hl], a
	ld b, NUM_MOVES
.moveLoop
	push bc
	ld hl, wPartyMon1Moves
	ld bc, PARTYMON_STRUCT_LENGTH
	call GetMthMoveOfNthPartymon
	ld a, [hl]
	and a
	jr z, .next

	call RestorePP
	jr z, .next
	ld hl, wMenuCursorX
	inc [hl]

.next
	ld hl, wMenuCursorY
	inc [hl]
	pop bc
	dec b
	jr nz, .moveLoop
	ld a, [wMenuCursorX]
	and a
	jmp nz, BattleRestorePP

PPRestoreItem_NoEffect:
	call WontHaveAnyEffectMessage

PPRestoreItem_Cancel:
	call ClearPalettes
	xor a
	ld [wItemEffectSucceeded], a
	ret

RestorePP:
	xor a ; PARTYMON
	ld [wMonType], a
	call GetMaxPPOfMove
	ld hl, wPartyMon1PP
	ld bc, PARTYMON_STRUCT_LENGTH
	call GetMthMoveOfNthPartymon
	ld a, [wTempPP]
	ld b, a
	ld a, [hl]
	and PP_MASK
	cp b
	jr nc, .dont_restore

	ld a, [wTempRestorePPItem]
	push hl
	call GetItemIndexFromID
	cphl16 MAX_ELIXER
	pop hl
	jr z, .restore_all
	ld a, [wTempRestorePPItem]
	push hl
	call GetItemIndexFromID
	cphl16 MAX_ETHER
	pop hl
	jr z, .restore_all

	ld c, 5
	ld a, [wTempRestorePPItem]
	push hl
	call GetItemIndexFromID
	cphl16 MYSTERYBERRY
	pop hl
	jr z, .restore_some

	ld c, 10

.restore_some
	ld a, [hl]
	and PP_MASK
	add c
	cp b
	jr nc, .restore_all
	ld b, a

.restore_all
	ld a, [hl]
	and PP_UP_MASK
	or b
	ld [hl], a
	ret

.dont_restore
	xor a
	ret

RaiseThePPOfWhichMoveText:
	text_far _RaiseThePPOfWhichMoveText
	text_end

RestoreThePPOfWhichMoveText:
	text_far _RestoreThePPOfWhichMoveText
	text_end

PPIsMaxedOutText:
	text_far _PPIsMaxedOutText
	text_end

PPsIncreasedText:
	text_far _PPsIncreasedText
	text_end

PPRestoredText:
	text_far _PPRestoredText
	text_end

SquirtbottleEffect:
	farjp _Squirtbottle

CardKeyEffect:
	farjp _CardKey

BasementKeyEffect:
	farjp _BasementKey

SacredAshEffect:
	farcall _SacredAsh
	ld a, [wItemEffectSucceeded]
	cp $1
	ret nz
	jr UseDisposableItem

NormalBoxEffect:
	ld c, DECOFLAG_SILVER_TROPHY_DOLL
	jr OpenBox

GorgeousBoxEffect:
	ld c, DECOFLAG_GOLD_TROPHY_DOLL
OpenBox:
	farcall SetSpecificDecorationFlag

	ld hl, .SentTrophyHomeText
	call PrintText

	jr UseDisposableItem

.SentTrophyHomeText:
	text_far _SentTrophyHomeText
	text_end

Play_SFX_FULL_HEAL:
	push de
	ld de, SFX_FULL_HEAL
	call WaitPlaySFX
	pop de
	ret

UseItemText:
	ld hl, ItemUsedText
	call PrintText
	call Play_SFX_FULL_HEAL
	call WaitPressAorB_BlinkCursor
UseDisposableItem:
	ld hl, wNumItems
	ld a, 1
	ld [wItemQuantityChange], a
	jmp TossItem

UseBallInTrainerBattle:
	call ReturnToBattle_UseBall
	ld de, ANIM_THROW_POKE_BALL
	ld a, e
	ld [wFXAnimID], a
	ld a, d
	ld [wFXAnimID + 1], a
	xor a
	ld [wBattleAnimParam], a
	ldh [hBattleTurn], a
	ld [wNumHits], a
	predef PlayBattleAnim
	ld hl, BallBlockedText
	call PrintText
	ld hl, BallDontBeAThiefText
	call PrintText
	jr UseDisposableItem

WontHaveAnyEffect_NotUsedMessage:
	ld hl, ItemWontHaveEffectText
	call PrintText

	; Item wasn't used.
	ld a, $2
	ld [wItemEffectSucceeded], a
	ret

LooksBitterMessage:
	ld hl, ItemLooksBitterText
	jmp PrintText

Ball_BoxIsFullMessage:
	ld hl, StorageFullText
	jr z, .got_msg
	ld hl, DatabaseTaxedText
.got_msg
	call PrintText

	; Item wasn't used.
	ld a, $2
	ld [wItemEffectSucceeded], a
	ret

CantUseOnEggMessage:
	ld hl, ItemCantUseOnEggText
	jr CantUseItemMessage

NoEffect:
	ld hl, ItemOakWarningText
	jr CantUseItemMessage

WontHaveAnyEffectMessage:
	ld hl, ItemWontHaveEffectText
; fallthrough
CantUseItemMessage:
; Item couldn't be used.
	xor a
	ld [wItemEffectSucceeded], a
	jmp PrintText

ItemLooksBitterText:
	text_far _ItemLooksBitterText
	text_end

ItemCantUseOnEggText:
	text_far _ItemCantUseOnEggText
	text_end

ItemOakWarningText:
	text_far _ItemOakWarningText
	text_end

ItemWontHaveEffectText:
	text_far _ItemWontHaveEffectText
	text_end

BallBlockedText:
	text_far _BallBlockedText
	text_end

BallDontBeAThiefText:
	text_far _BallDontBeAThiefText
	text_end

StorageFullText:
	text_far _StorageFullText
	text_end

DatabaseTaxedText:
	text_far _StorageFullText
	text_end

ItemUsedText:
	text_far _ItemUsedText
	text_end

ApplyPPUp:
	ld a, MON_MOVES
	call GetPartyParamLocation
	push hl
	ld de, wPPUpPPBuffer
	predef FillPP
	pop hl
	ld bc, MON_PP - MON_MOVES
	add hl, bc
	ld de, wPPUpPPBuffer
	ld b, 0
.loop
	inc b
	ld a, b
	cp NUM_MOVES + 1
	ret z
	ld a, [wUsePPUp]
	dec a ; FALSE?
	jr nz, .use
	ld a, [wMenuCursorY]
	inc a
	cp b
	jr nz, .skip

.use
	ld a, [hl]
	and PP_UP_MASK
	ld a, [de] ; wasted cycle
	call nz, ComputeMaxPP

.skip
	inc hl
	inc de
	jr .loop

ComputeMaxPP:
	push bc
	; Divide the base PP by 5.
	ld a, [de]
	ldh [hDividend + 3], a
	xor a
	ldh [hDividend], a
	ldh [hDividend + 1], a
	ldh [hDividend + 2], a
	ld a, 5
	ldh [hDivisor], a
	ld b, 4
	call Divide
	; Get the number of PP, which are bits 6 and 7 of the PP value stored in RAM.
	ld a, [hl]
	ld b, a
	swap a
	and $f
	srl a
	srl a
	ld c, a
	; If this value is 0, we are done
	and a
	jr z, .NoPPUp

.loop
	; Normally, a move with 40 PP would have 64 PP with three PP Ups.
	; Since this would overflow into bit 6, we prevent that from happening
	; by decreasing the extra amount of PP each PP Up provides, resulting
	; in a maximum of 61.
	ldh a, [hQuotient + 3]
	cp $8
	jr c, .okay
	ld a, $7

.okay
	add b
	ld b, a
	ld a, [wTempPP]
	dec a
	jr z, .NoPPUp
	dec c
	jr nz, .loop

.NoPPUp:
	ld [hl], b
	pop bc
	ret

RestoreBufferPP:
	ld hl, wBufferMonMoves
	ld de, wBufferMonPP
	ld a, [wMenuCursorY]
	push af
	ld a, BUFFERMON
	ld [wMonType], a
	call _RestoreAllPP
	pop af
	ld [wMenuCursorY], a
	ret

RestoreAllPP:
	ld a, MON_PP
	call GetPartyParamLocation
	push hl
	ld a, MON_MOVES
	call GetPartyParamLocation
	pop de
	xor a ; PARTYMON
	ld [wMonType], a
	; fallthrough
_RestoreAllPP:
	xor a
	ld [wMenuCursorY], a
	ld c, NUM_MOVES
.loop
	ld a, [hli]
	and a
	ret z
	push hl
	push de
	push bc
	call GetMaxPPOfMove
	pop bc
	pop de
	ld a, [de]
	and PP_UP_MASK
	ld b, a
	ld a, [wTempPP]
	add b
	ld [de], a
	inc de
	ld hl, wMenuCursorY
	inc [hl]
	pop hl
	dec c
	jr nz, .loop
	ret

GetMaxPPOfMove:
	ld a, [wStringBuffer1 + 0]
	push af
	ld a, [wStringBuffer1 + 1]
	push af

	ld a, [wMonType]
	and a

	ld hl, wPartyMon1Moves
	ld bc, PARTYMON_STRUCT_LENGTH
	jr z, .got_partymon ; PARTYMON

	ld hl, wOTPartyMon1Moves
	dec a
	jr z, .got_partymon ; OTPARTYMON

	ld hl, wTempMonMoves
	dec a
	jr z, .got_nonpartymon ; BOXMON

	ld hl, wTempMonMoves ; Wasted cycles
	dec a
	jr z, .got_nonpartymon ; TEMPMON

	ld hl, wBattleMonMoves ; WILDMON
	dec a
	jr z, .got_nonpartymon

	ld hl, wBufferMonMoves ; BUFFERMON

.got_nonpartymon ; BOXMON, TEMPMON, WILDMON
	call GetMthMoveOfCurrentMon
	jr .gotdatmove

.got_partymon ; PARTYMON, OTPARTYMON
	call GetMthMoveOfNthPartymon

.gotdatmove
	ld a, [hl]

	push hl
	ld l, a
	ld a, MOVE_PP
	call GetMoveAttribute
	ld b, a
	ld de, wStringBuffer1
	ld [de], a
	pop hl

	push bc
	ld bc, MON_PP - MON_MOVES
	ld a, [wMonType]
	cp WILDMON
	jr nz, .notwild
	ld bc, wEnemyMonPP - wEnemyMonMoves
.notwild
	add hl, bc
	ld a, [hl]
	and PP_UP_MASK
	pop bc

	or b
	ld hl, wStringBuffer1 + 1
	ld [hl], a
	xor a
	ld [wTempPP], a
	ld a, b ; this gets lost anyway
	call ComputeMaxPP
	ld a, [hl]
	and PP_MASK
	ld [wTempPP], a

	pop af
	ld [wStringBuffer1 + 1], a
	pop af
	ld [wStringBuffer1 + 0], a
	ret

GetMthMoveOfNthPartymon:
	ld a, [wCurPartyMon]
	rst AddNTimes

GetMthMoveOfCurrentMon:
	ld a, [wMenuCursorY]
	ld c, a
	ld b, 0
	add hl, bc
	ret
