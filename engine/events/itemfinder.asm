ItemFinder:
	farcall CheckForHiddenItems
	jr c, .found_something
	ld hl, .Script_FoundNothing
	jr .resume

.found_something
	ld hl, .Script_FoundSomething

.resume
	call QueueScript
	ld a, $1
	ld [wItemEffectSucceeded], a
	ret

.ItemfinderSound:
	ld c, 4
.sfx_loop
	push bc
	ld de, SFX_SECOND_PART_OF_ITEMFINDER
	call WaitPlaySFX
	ld de, SFX_TRANSACTION
	call WaitPlaySFX
	pop bc
	dec c
	jr nz, .sfx_loop
	ret

.Script_FoundSomething:
	refreshmap
	special UpdateTimePals
	callasm .ItemfinderSound
	writetext .ItemfinderItemNearbyText
	closetext
	end

.Script_FoundNothing:
	refreshmap
	special UpdateTimePals
	writetext .ItemfinderNopeText
	closetext
	end

.ItemfinderItemNearbyText:
	text_far _ItemfinderItemNearbyText
	text_end

.ItemfinderNopeText:
	text_far _ItemfinderNopeText
	text_end

_BattleCommand_Detect:
	ldh a, [hBattleTurn]
	and a
	ld a, [wEnemyMonItem]
	jr z, .checkitem

.enemy
	ld a, [wBattleMonItem]

.checkitem
	and a
	jr z, .failed

	ld [wNamedObjectIndex], a
	call GetItemName
	ld hl, DetectedHoldingText
	jp StdBattleTextbox

.failed
	ld hl, ButItFailedText
	jp StdBattleTextbox

DetectFieldMove:
	farcall CheckForHiddenItems
	jr c, .found

	ld hl, .Script_NothingDetected
	jr .queue

.found
	ld hl, .Script_DetectedSomething

.queue
	call QueueScript
	ld a, 1
	ld [wFieldMoveSucceeded], a
	ret

.DetectCry:
	ld a, [wCurPartyMon]
	ld hl, wPartySpecies
	ld e, a
	ld d, 0
	add hl, de
	ld a, [hl]
	jp PlayMonCry

.Script_DetectedSomething:
	refreshmap
	special UpdateTimePals
	callasm .DetectCry
	writetext .DetectedSomethingText
	closetext
	end

.Script_NothingDetected:
	refreshmap
	special UpdateTimePals
	writetext .NothingDetectedText
	closetext
	end

.DetectedSomethingText:
	text_far _DetectedSomethingText
	text_end

.NothingDetectedText:
	text_far _NothingDetectedText
	text_end
