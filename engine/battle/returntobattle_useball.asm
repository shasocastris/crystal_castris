_ReturnToBattle_UseBall:
	call ClearBGPalettes
	call ClearTilemap
	farcall GetBattleMonBackpic

	farcall GetEnemyMonFrontpic
	farcall _LoadBattleFontsHPBar
	call GetMemSGBLayout
	call CloseWindow
	call LoadStandardMenuHeader
	call WaitBGMap
	jmp SetDefaultBGPAndOBP
