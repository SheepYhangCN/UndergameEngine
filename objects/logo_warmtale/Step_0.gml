if(Input_IsPressed(INPUT.CONFIRM)){
	Dialog_Clear()
	Encounter_Start(BATTLE.WARMA)
}
/*if(Input_IsPressed(INPUT.MENU)){
	Dialog_Clear()
	room_goto(room_settings)
}*/

if(IsChs()){
window_set_caption("温暖传说 - Warmtale")
}
if(IsEng()){
window_set_caption("Warmtale")
}