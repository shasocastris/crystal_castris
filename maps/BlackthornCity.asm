	object_const_def
	const BLACKTHORNCITY_SUPER_NERD
	const BLACKTHORNCITY_GRAMPS1
	const BLACKTHORNCITY_GRAMPS2
	const BLACKTHORNCITY_BLACK_BELT
	const BLACKTHORNCITY_COOLTRAINER_F1
	const BLACKTHORNCITY_YOUNGSTER1
	const BLACKTHORNCITY_SANTOS
	const BLACKTHORNCITY_COOLTRAINER_F2

BlackthornCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, BlackthornCityFlypointCallback
	callback MAPCALLBACK_TILES, BlackthornRiverBridgeCallback

BlackthornCityFlypointCallback:
	setflag ENGINE_FLYPOINT_BLACKTHORN
	endcallback

; Restore path: on map (re)load, repaint the bridge to match the persisted scene.
; scene 0 = underfoot (surf-under water, the .ablk default), scene 1 = overhead (walk-across deck).
; ifequal 1 rather than iftrue: checkscene returns -1 whenever wCurMapSceneScriptPointer is
; null (only HandleNewMap ever sets it), and iftrue would take -1 for "deck". Testing for 1
; explicitly makes both 0 and -1 fall back to the .ablk default, which is the water state.
BlackthornRiverBridgeCallback:
	checkscene
;	ifequal 1, .deck
	iftrue .deck
	callasm BlackthornBridgePaintWater
	endcallback

.deck:
	callasm BlackthornBridgePaintDeck
	endcallback

; Overhead: $a3 is the plain bridge deck -- LEFT_WALL/RIGHT_WALL collision (walkable with
; side rails) and no priority bit in johto_attributes, so the player draws over it.
BlackthornBridgePaintDeck:
	changebridgeblock 12, 34, $a3, BLACKTHORN_CITY
	changebridgeblock 12, 36, $a3, BLACKTHORN_CITY
	jmp BufferScreen

; Underfoot: same bridge art, but WATER collision and the priority bit set, so the deck
; draws over the surfing player. $a7 keeps the riverbank WALL in its top half (tile row 34,
; matching the $85 blocks either side); $ab is water all the way down.
BlackthornBridgePaintWater:
	changebridgeblock 12, 34, $a7, BLACKTHORN_CITY
	changebridgeblock 12, 36, $ab, BLACKTHORN_CITY
	jmp BufferScreen

; Writer path: swap blocks, persist the new scene, recompute collision.
;
; There is deliberately no repaint here. BufferScreen only copies wOverworldMapBlocks into
; wScreenSave -- it never rebuilds wTilemap/wAttrmap and never touches VRAM -- so the swap
; changes collision while the screen keeps showing whatever was painted when those blocks
; last scrolled in. That stale picture is now corrected by ReloadWalkedTile (home/map.asm),
; which every ScrollMap* runs: it pushes the 2x4 tile region under the player on the next
; scrolling step, tiles and attributes both.
;
; That tiny push is enough only because $a3 and $a7/$ab have byte-identical art and differ
; solely in bit 7 of their attributes, so the only observable difference is sprite
; occlusion, and occlusion is only observable where the player sprite actually is.
;
; Two consequences worth knowing. The swap does not reach VRAM during the step that landed
; on the trigger -- that step's WRAM rebuild ran ~16 frames earlier -- so it lands on the
; next step; the triggers sit one tile outside the deck precisely so the player is always
; arriving rather than stopping. And ReloadWalkedTile only runs from ScrollMap*, so turning
; in place or walking into a wall repaints nothing.
;
; GenericFinishBridge is kept rather than a bare GetMovementPermissions: it falls through to
; it, and additionally sets wOverworldDelaySkip so this HandleMap iteration costs no display
; frame. Without it there is one visible standing frame before walking resumes.
;
; BlackthornBridgeRepaint below is the old full-screen reanchor. It is no longer called, and
; is kept for scripted moments where a one-frame hitch reads as part of the animation --
; the same reason Polished Crystal kept its own as RefreshScreenFast.
BlackthornBridgeSurfTrigger:
	callasm BlackthornBridgePaintWater
	callthisasm
	xor a                       ; underfoot / water = scene 0 (default)
	jr BlackthornBridge_Finish

BlackthornBridgeWalkTrigger:
	callasm BlackthornBridgePaintDeck
	callthisasm
	ld a, $1                    ; overhead / deck = scene 1
BlackthornBridge_Finish:
	ld [wWalkingOnBridge], a
	ld [wBlackthornCitySceneID], a
	jmp GenericFinishBridge

; UNUSED since ReloadWalkedTile took over the bridge repaint. Kept deliberately: it is still
; the right tool whenever a whole-screen rebuild really is needed and a one-frame hitch is
; acceptable or even wanted, and it is the instant rollback if the targeted repaint proves
; insufficient -- restore the `call BlackthornBridgeRepaint` in BlackthornBridge_Finish.
;
; The reanchor-and-transfer that the reanchormap/closetext pair performed, minus the work
; that only exists to set up and tear down a textbox.
;
; ReanchorMap additionally calls LoadFonts_NoOAMUpdate, which writes font tiles over sprite
; GFX in VRAM -- that is the ONLY reason closetext then has to run RefreshSprites to put
; them back. Skipping the font load makes the sprite reload unnecessary, so both go.
;
; That also drops the rest of closetext: its LoadOverworldTilemapAndAttrmapPals +
; HDMATransferTilemapAndAttrmap_Menu were a second full rebuild and transfer on top of the
; one below, and its closing InitMapNameSign is the map-name banner, which has no business
; firing when you step onto a bridge. All that remains to undo by hand is hWY (left at 0 by
; .ReanchorBGMap) and TEXT_STATE_F (set by ReanchorBGMap_NoOAMUpdate).
;
; This is .ReanchorBGMap (engine/overworld/init_map.asm) inlined with the textbox-only work
; removed. Two things are dropped, both provably dead for a block swap:
;
;   * LoadOW_BGPal7 + ApplyPals + hCGBPalUpdate -- loads BG palette 7 with the TEXT palette
;     and re-pushes every palette. Swapping a block changes no palette, and we draw no text.
;     (Also saves bank switches to 12 and 02.)
;   * HDMATransfer_FillBGMap0WithBlack -- blanks vBGMap0 so a textbox starts from a clean
;     slate. We overwrite vBGMap0 wholesale immediately afterwards, so it is a full HDMA
;     spent on pixels that never appear.
;
; What is deliberately KEPT is the vBGMap0/vBGMap1 double-buffer, which is what stops the
; rebuild from flashing. LCDC_DEFAULT is LCDC_BG_9800 | LCDC_WIN_9C00 | LCDC_WIN_ON: the BG
; reads vBGMap0, the window reads vBGMap1 and is always enabled, parked off-screen at
; hWY = $90. So the map is drawn into vBGMap1 first and hWY dropped to 0, letting the
; window hold a finished picture over the whole screen while vBGMap0 is re-anchored and
; retransferred underneath; hWY back to $90 then reveals it. Removing that would trade this
; hitch for a visible tear.
BlackthornBridgeRepaint:
	call ClearWindowData
	ldh a, [hOAMUpdate]
	push af
	ld a, $1
	ldh [hOAMUpdate], a

	ld hl, rIE
	res B_IE_STAT, [hl]
	xor a
	ldh [hLCDCPointer], a
	ldh [hBGMapMode], a
	ld a, $90
	ldh [hWY], a

	; Rebuild wTilemap/wAttrmap from the freshly swapped blocks. WRAM only, sub-block aware.
	call LoadOverworldTilemapAndAttrmapPals

	; Front buffer: paint the finished map into the window's map, then bring the window
	; over the screen so the BG can be rebuilt out of sight.
	ld a, HIGH(vBGMap1)
	ldh [hBGMapAddress + 1], a
	xor a
	ldh [hBGMapAddress], a
	call HDMATransferTilemapAndAttrmap_Menu
	xor a
	ldh [hBGMapMode], a
	ldh [hWY], a

	; Put the anchor and scroll back to the origin. This is the whole point of reanchoring:
	; the HDMA below always writes to a fixed vBGMap0 origin, so the screen has to agree.
	ld a, HIGH(vBGMap0)
	ldh [hBGMapAddress + 1], a
	xor a
	ldh [hBGMapAddress], a
	ld [wBGMapAnchor], a
	ld a, HIGH(vBGMap0)
	ld [wBGMapAnchor + 1], a
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	farcall ApplyBGMapAnchorToObjects

	; Back buffer, now aligned with the screen.
	call HDMATransferTilemapAndAttrmap_Menu

	; Reveal it. Nothing here ever set TEXT_STATE_F, so there is none to clear.
	ld a, $90
	ldh [hWY], a
	pop af
	ldh [hOAMUpdate], a
	ret

BlackthornSuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .BeatClair
	writetext Text_ClairIsIn
	waitbutton
	closetext
	end

.BeatClair:
	writetext Text_ClairIsBeaten
	waitbutton
	closetext
	end

BlackthornGramps1Script:
	jumptextfaceplayer BlackthornGrampsRefusesEntryText

BlackthornGramps2Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_FREEZE_GUARD
	iftrue .GotFreezeGuard
	writetext BlackthornGramps2Text
	promptbutton
	verbosegiveitem FREEZE_GUARD
	setevent EVENT_GOT_FREEZE_GUARD
	writetext BlackthornGramps2GaveFreezeGuardText
	closetext
	end

.GotFreezeGuard:
	writetext BlackthornGrampsGrantsEntryText
	waitbutton
	closetext
	end

BlackthornBlackBeltScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .ClearedRadioTower
	writetext BlackBeltText_WeirdRadio
	waitbutton
	closetext
	end

.ClearedRadioTower:
	writetext BlackBeltText_VoicesInMyHead
	waitbutton
	closetext
	end

BlackthornCooltrainerF1Script:
	jumptextfaceplayer BlackthornCooltrainerF1Text

BlackthornYoungsterScript:
	jumptextfaceplayer BlackthornYoungsterText

BlackthornCooltrainerF2Script:
	jumptextfaceplayer BlackthornCooltrainerF2Text

SantosScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	iftrue SantosGaveSpellTagScript
	readvar VAR_WEEKDAY
	ifequal SATURDAY, .GiveSpellTag
	writetext SantosSeenText
	waitbutton
	closetext
	winlosstext SantosBeatenText, SantosWinsText
	loadtrainer POKEMANIAC, SANTOS
	startbattle
	reloadmapafterbattle
	opentext
.GiveSpellTag:
	writetext SantosGivesGiftText
	promptbutton
	verbosegiveitem SPELL_TAG
	iffalse SantosDoneScript
	setevent EVENT_GOT_SPELL_TAG_FROM_SANTOS
	writetext SantosGaveGiftText
	waitbutton
	closetext
	end

SantosGaveSpellTagScript:
	writetext SantosSaturdayText
	waitbutton
SantosDoneScript:
	closetext
	end

BlackthornCitySign:
	jumptext BlackthornCitySignText

BlackthornGymSign:
	jumptext BlackthornGymSignText

MoveDeletersHouseSign:
	jumptext MoveDeletersHouseSignText

DragonDensSign:
	jumptext DragonDensSignText

BlackthornCityTrainerTips:
	jumptext BlackthornCityTrainerTipsText

BlackthornCityPokecenterSign:
	jumpstd PokecenterSignScript

BlackthornCityMartSign:
	jumpstd MartSignScript

Text_ClairIsIn:
	text "CLAIR, our GYM"
	line "LEADER, is waiting"
	cont "for you."

	para "However, it would"
	line "be impossible for"

	para "a run-of-the-mill"
	line "trainer to win."
	done

Text_ClairIsBeaten:
	text "You defeated"
	line "CLAIR?"

	para "That's amazing!"

	para "I've never heard"
	line "of her losing to"

	para "anyone other than"
	line "LANCE."
	done

BlackthornGrampsRefusesEntryText:
	text "No. Only chosen"
	line "trainers may train"

	para "here."
	line "Please leave."
	done

BlackthornGramps2Text:
	text "Dragon masters use"
	line "this to help fight"
	cont "ICE types."
	done

BlackthornGramps2GaveFreezeGuardText:
	text "You might have"
	line "some use for it"
	cont "soon."
	done

BlackthornGrampsGrantsEntryText:
	text "If CLAIR allows"
	line "it, her grand-"
	cont "father--our MASTER"
	cont "--will also."

	para "You may enter."
	done

BlackBeltText_WeirdRadio:
	text "My radio's busted?"
	line "Lately, I only get"
	cont "this weird signal."
	done

BlackBeltText_VoicesInMyHead:
	text "Arooo! Voices in"
	line "my head!"

	para "Huh? I'm listening"
	line "to my radio!"
	done

BlackthornCooltrainerF1Text:
	text "Are you going to"
	line "make your #MON"
	cont "forget some moves?"
	done

BlackthornYoungsterText:
	text "Dragon masters all"
	line "come from the city"
	cont "of BLACKTHORN."
	done

SantosSeenText:
	text "SANTOS: …"

	para "I'm SANTOS of"
	line "Saturday…"

	para "I suppose we must"
	line "battle…"
	done

SantosBeatenText:
	text "…That's fine…"
	done

SantosWinsText:
	text "SANTOS: …"

	para "It's over…"

	para "Come back on"
	line "Saturday…"
	done

SantosGivesGiftText:
	text "You can have this…"
	done

SantosGaveGiftText:
	text "SANTOS: …"

	para "SPELL TAG…"

	para "Ghost-type moves"
	line "get stronger…"

	para "It will frighten"
	line "you…"
	done

SantosSaturdayText:
	text "SANTOS: …"

	para "See you again on"
	line "another Saturday…"

	para "I won't have any"
	line "more gifts…"
	done

BlackthornCooltrainerF2Text:
	text "Wow, you came"
	line "through the ICE"
	cont "PATH?"

	para "You must be a real"
	line "hotshot trainer!"
	done

BlackthornCitySignText:
	text "BLACKTHORN CITY"

	para "A Quiet Mountain"
	line "Retreat"
	done

BlackthornGymSignText:
	text "BLACKTHORN CITY"
	line "#MON GYM"
	cont "LEADER: CLAIR"

	para "The Blessed User"
	line "of Dragon #MON"
	done

MoveDeletersHouseSignText:
	text "MOVE DELETER'S"
	line "HOUSE"
	done


DragonDensSignText:
	text "DRAGON'S DEN"
	line "AHEAD"
	done

BlackthornCityTrainerTipsText:
	text "TRAINER TIPS"

	para "A #MON holding"
	line "a MIRACLEBERRY"

	para "will cure itself"
	line "of any status"
	cont "problem."
	done

BlackthornCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18, 11, BLACKTHORN_GYM_1F, 1
	warp_event 13, 21, BLACKTHORN_DRAGON_SPEECH_HOUSE, 1
	warp_event 29, 23, BLACKTHORN_EMYS_HOUSE, 1
	warp_event 15, 29, BLACKTHORN_RANGER_STATION, 2
	warp_event 21, 29, BLACKTHORN_POKECENTER_1F, 1
	warp_event  9, 29, MOVE_DELETERS_HOUSE, 1
	warp_event 36,  9, ICE_PATH_1F, 2
	warp_event 20,  1, DRAGONS_DEN_1F, 1

	def_coord_events
	; The bridge deck covers tiles x = 12-13, y = 34-37; the river runs east-west beneath it.
	; The priority blocks ($a7/$ab) are the resting state, so a surfer always passes under.
	; Triggers sit on the approach path north and south of the deck, never on the deck itself.
	;
	; Ring 1 (one tile out) hands the deck to the player: repaint to the no-priority $a3 just
	; before they step on, so the swap is hidden by the step.
	; Active only in the water state (scene 0), so a walker returning across the deck does not
	; re-fire them.
	coord_event 12, 33, 0, BlackthornBridgeWalkTrigger
	coord_event 13, 33, 0, BlackthornBridgeWalkTrigger
	coord_event 12, 38, 0, BlackthornBridgeWalkTrigger
	coord_event 13, 38, 0, BlackthornBridgeWalkTrigger
	; Ring 2 (two tiles out, plus the west step-off tiles at x = 11) takes it back: repaint to
	; the priority $a7/$ab once the player has left the approach, restoring the surf-under state.
	; Active only in the deck state (scene 1). Ring 2 sits outside ring 1, so leaving the bridge
	; always crosses ring 1 first and ring 2 second -- never the reverse.
	coord_event 11, 33, 1, BlackthornBridgeSurfTrigger
	coord_event 12, 32, 1, BlackthornBridgeSurfTrigger
	coord_event 13, 32, 1, BlackthornBridgeSurfTrigger
	coord_event 11, 38, 1, BlackthornBridgeSurfTrigger
	coord_event 12, 39, 1, BlackthornBridgeSurfTrigger
	coord_event 13, 39, 1, BlackthornBridgeSurfTrigger

	def_bg_events
	bg_event 34, 24, BGEVENT_READ, BlackthornCitySign
	bg_event 17, 13, BGEVENT_READ, BlackthornGymSign
	bg_event  7, 29, BGEVENT_READ, MoveDeletersHouseSign
	bg_event 21,  3, BGEVENT_READ, DragonDensSign
	bg_event  9, 19, BGEVENT_READ, BlackthornCityTrainerTips
	bg_event 22, 29, BGEVENT_READ, BlackthornCityPokecenterSign

	def_object_events
	object_event 19, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornSuperNerdScript, -1
	object_event 20,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps1Script, EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	object_event 21,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornGramps2Script, EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	object_event 24, 31, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornBlackBeltScript, -1
	object_event  9, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF1Script, -1
	object_event 13, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornYoungsterScript, -1
	object_event 22, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantosScript, EVENT_BLACKTHORN_CITY_SANTOS_OF_SATURDAY
	object_event 35, 19, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornCooltrainerF2Script, -1
