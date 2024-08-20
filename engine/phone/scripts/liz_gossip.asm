LizGossipRandomScript:
	random 6
	ifequal 0, .Falkner
	ifequal 1, .SurfPikachu
	ifequal 2, .Whitney
	ifequal 3, .BeautifulTrainer
	ifequal 4, .Forgot

.Falkner:
	farwritetext LizFalknerGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.SurfPikachu:
	farwritetext LizSurfPikachuGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.Whitney:
	farwritetext LizWhitneyGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.BeautifulTrainer:
	farwritetext LizBeautifulTrainerGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female

.Forgot:
	farwritetext LizForgotGossipText
	promptbutton
	sjump PhoneScript_HangUpText_Female
