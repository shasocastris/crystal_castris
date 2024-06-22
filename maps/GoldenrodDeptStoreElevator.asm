GoldenrodDeptStoreElevator_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStoreElevatorScript:
	opentext
	elevator GoldenrodDeptStoreElevatorData
	closetext
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
	end

GoldenrodDeptStoreElevatorData:
	db 7 ; floors
	elevfloor FLOOR_B1F, 2, GOLDENROD_DEPT_STORE_B1F
	elevfloor FLOOR_1F,  4, GOLDENROD_DEPT_STORE_1F
	elevfloor FLOOR_2F,  3, GOLDENROD_DEPT_STORE_2F
	elevfloor FLOOR_3F,  3, GOLDENROD_DEPT_STORE_3F
	elevfloor FLOOR_4F,  3, GOLDENROD_DEPT_STORE_4F
	elevfloor FLOOR_5F,  3, GOLDENROD_DEPT_STORE_5F
	elevfloor FLOOR_6F,  2, GOLDENROD_DEPT_STORE_6F
	db -1 ; end

GoldenrodDeptStoreElevator_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  3, GOLDENROD_DEPT_STORE_1F, -1
	warp_event  2,  3, GOLDENROD_DEPT_STORE_1F, -1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStoreElevatorScript

	def_object_events
