KenjiPhoneCalleeScript:
	gettrainername STRING_BUFFER_3, BLACKBELT_T, KENJI
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_KENJI_HAS_BIG_MUSHROOM
	iftrue .HasItem
	farsjump KenjiAnswerPhoneScript

.HasItem:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_45
	farsjump KenjiComePickUpScript

KenjiPhoneCallerScript:
	gettrainername STRING_BUFFER_3, BLACKBELT_T, KENJI
	farscall PhoneScript_GreetPhone_Male
	checkflag ENGINE_KENJI_HAS_BIG_MUSHROOM
	iftrue .HasItem
	farscall PhoneScript_Random2
	ifequal 0, .FoundItem

.HasItem:
	farsjump KenjiCallingPhoneScript

.FoundItem:
	setflag ENGINE_KENJI_HAS_BIG_MUSHROOM
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_45
	farsjump PhoneScript_FoundItem_Male
