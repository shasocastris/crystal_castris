DelayFrame::
; Wait for one frame
	ld a, 1
	ld [wVBlankOccurred], a

; Wait for the next VBlank, halting to conserve battery
.halt
	halt
	nop ; no-optimize nops
	ld a, [wVBlankOccurred]
	and a
	jr nz, .halt

; Overworld weather runs from here rather than from the overworld frame, so it
; keeps animating under textboxes, menus and scripted pauses. It gates itself on
; hMapAnims -- the same gate AnimateTileset uses from VBlank -- because ROM0 has
; no room for the check here. Running after the wait rather than before it
; leaves a full frame before the next hTransferShadowOAM, so a particle is never
; half-moved when OAM is transferred.
	farjp DoOverworldWeather

ApplyTilemapInVBlank::
; Tell VBlank to update BG Map
	ld a, 1
_ApplyAttrOrTilemapInVBlank:
	ldh [hBGMapMode], a
Delay2::
	ld c, 2
	jr DelayFrames

Delay3::
	ld c, 3
DelayFrames::
; Wait c frames
	call DelayFrame
	dec c
	jr nz, DelayFrames
	ret
