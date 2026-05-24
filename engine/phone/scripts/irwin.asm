IrwinPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, JUGGLER, IRWIN1
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_IRWIN_HAS_PP_UP
	iftrue .HasItem
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .Rockets
	farsjump IrwinRandomTextScript

.Rockets:
	farsjump IrwinRocketRumorScript

.HasItem:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	farsjump IrwinComePickUpScript

IrwinPhoneCallerScript:
	gettrainername STRING_BUFFER_3, JUGGLER, IRWIN1
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_IRWIN_HAS_PP_UP
	iftrue .Generic
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .Rockets
	farscall PhoneScript_Random2
	ifequal 0, .FoundItem

.Generic:
	farsjump IrwinRumorScript

.Rockets:
	farsjump IrwinRocketRumorScript

.FoundItem:
	setflag ENGINE_IRWIN_HAS_PP_UP
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_35
	farsjump PhoneScript_FoundItem_Male
