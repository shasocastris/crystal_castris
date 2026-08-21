FinishForgeOrder::
; Called during the daily reset.
; An order placed on an earlier day is ready to collect.

	; Is an order outstanding?
	ld de, EVENT_PEWTER_FORGE_ORDER_PLACED
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	ret z

	ld de, EVENT_PEWTER_FORGE_ORDER_READY
	ld b, SET_FLAG
	jmp EventFlagAction
