TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	dbbw 50, 20, SPEAROW
	dbbw 15, 20, SPEAROW
	dbbw 15, 20, FEAROW
	dbbw 10, 20, AIPOM
	dbbw  5, 20, AIPOM
	dbbw  5, 20, AIPOM
	db -1
; rare
	dbbw 50, 20, SPEAROW
	dbbw 15, 20, HERACROSS
	dbbw 15, 20, HERACROSS
	dbbw 10, 20, AIPOM
	dbbw  5, 20, AIPOM
	dbbw  5, 20, AIPOM
	db -1

TreeMonSet_Town:
; common
	dbbw 50, 20, SPEAROW
	dbbw 15, 20, EKANS
	dbbw 15, 20, FEAROW
	dbbw 10, 20, AIPOM
	dbbw  5, 20, AIPOM
	dbbw  5, 20, AIPOM
	db -1
; rare
	dbbw 50, 20, SPEAROW
	dbbw 15, 20, HERACROSS
	dbbw 15, 20, HERACROSS
	dbbw 10, 20, AIPOM
	dbbw  5, 20, AIPOM
	dbbw  5, 20, AIPOM
	db -1

TreeMonSet_Route:
; common
	dbbw 50, 20, HOOTHOOT
	dbbw 15, 20, SPINARAK
	dbbw 15, 20, LEDYBA
	dbbw 10, 20, EXEGGCUTE
	dbbw  5, 20, MANKEY
	dbbw  5, 20, MANKEY
	db -1
; rare
	dbbw 50, 20, NOCTOWL
	dbbw 15, 20, PINECO
	dbbw 15, 20, PINECO
	dbbw 10, 20, EXEGGCUTE
	dbbw  5, 20, MANKEY
	dbbw  5, 20, MANKEY
	db -1

TreeMonSet_Kanto:
; common
	dbbw 50, 20, HOOTHOOT
	dbbw 15, 20, EKANS
	dbbw 15, 20, HOOTHOOT
	dbbw 10, 20, EXEGGCUTE
	dbbw  5, 20, MANKEY
	dbbw  5, 20, MANKEY
	db -1
; rare
	dbbw 50, 20, NOCTOWL
	dbbw 15, 20, PINECO
	dbbw 15, 20, PINECO
	dbbw 10, 20, EXEGGCUTE
	dbbw  5, 20, MANKEY
	dbbw  5, 20, MANKEY
	db -1

TreeMonSet_Lake:
; common
	dbbw 50, 20, HOOTHOOT
	dbbw 15, 20, VENONAT
	dbbw 15, 20, HOOTHOOT
	dbbw 10, 20, EXEGGCUTE
	dbbw  5, 20, MANKEY
	dbbw  5, 20, MANKEY
	db -1
; rare
	dbbw 50, 20, NOCTOWL
	dbbw 15, 20, PINECO
	dbbw 15, 20, PINECO
	dbbw 10, 20, EXEGGCUTE
	dbbw  5, 20, MANKEY
	dbbw  5, 20, MANKEY
	db -1

TreeMonSet_Forest:
; common
	dbbw 50, 20, HOOTHOOT
	dbbw 15, 20, PINECO
	dbbw 15, 20, PINECO
	dbbw 10, 20, NOCTOWL
	dbbw  5, 20, BUTTERFREE
	dbbw  5, 20, BEEDRILL
	db -1
; rare
	dbbw 50, 20, NOCTOWL
	dbbw 15, 20, LEDIAN
	dbbw 15, 20, ARIADOS
	dbbw 10, 20, FORRETRESS
	dbbw  5, 20, SCYTHER
	dbbw  5, 20, PINSIR
	db -1

TreeMonSet_Rock:
	dbbw 45, 25, KRABBY
	dbbw 35, 25, SHELLDER
	dbbw 10, 30, GRAVELER
	dbbw 10, 30, SHUCKLE
	db -1
