	object_const_def
	const LAKEOFRAGEHIDDENPOWERHOUSE_FISHER

LakeOfRageMoveReminderHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MoveReminder:
	faceplayer
	opentext
	special MoveReminding
	waitbutton
	closetext
	end

MoveReminderHouseBookshelf:
	jumpstd DifficultBookshelfScript

LakeOfRageMoveReminderHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 1
	warp_event  3,  7, LAKE_OF_RAGE, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MoveReminderHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MoveReminderHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveReminder, -1
