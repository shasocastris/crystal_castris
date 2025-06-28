BugContestantPointers:
	table_width 2
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
;   db class, id
;   dw 1st-place mon, score
;   dw 2nd-place mon, score
;   dw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dw KAKUNA,     600
	dw METAPOD,    585
	dw CATERPIE,   526

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dw BUTTERFREE, 586
	dw BUTTERFREE, 551
	dw CATERPIE,   537

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dw SCYTHER,    657
	dw BUTTERFREE, 649
	dw PINSIR,     668

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dw PINSIR,     632
	dw BUTTERFREE, 624
	dw VENONAT,    621

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BUG_CATCHER_BENNY
	dw BUTTERFREE, 618
	dw WEEDLE,     595
	dw CATERPIE,   585

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dw PINSIR,     666
	dw VENONAT,    629
	dw KAKUNA,     614

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dw BUTTERFREE, 641
	dw METAPOD,    601
	dw CATERPIE,   564

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dw SCYTHER,    626
	dw BUTTERFREE, 592
	dw METAPOD,    582

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dw WEEDLE,     570
	dw PINSIR,     582
	dw CATERPIE,   551

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dw VENONAT,    567
	dw PARAS,      554
	dw KAKUNA,     559
