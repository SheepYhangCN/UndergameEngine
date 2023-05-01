fader.alpha=0
audio_stop_all()
if(quit){
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK,0);
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR,DIR.DOWN);
	room_goto(room_lobby);
}else{
	switch choice{
	case 0:
		Encounter_Start(BATTLE.YUHANG)
		break
	case 1:
		room_goto(room_core_sans)
		break
	case 2:
		//Encounter_Start(BATTLE.WARMA)
		room_goto(room_logo_warmtale)
		break
	case 3:
		//Encounter_Start(BATTLE.MIKU_PM_0)
		room_goto(room_miku_pm0)
		break
	case 4:
		Encounter_Start(BATTLE.ULBxNMD_P1)
		break
	}
}