fader.alpha=0
audio_stop_all()
if(quit){
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK,0);
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR,DIR.DOWN);
	room_goto(room_lobby);
}else{
	switch choice{
	case -1:
		break
	case 0:
		Encounter_Start(BATTLE.ULBxNMD_P1)
		break
	case 1:
		if(phase=0){global.subtitle=true}
		if(phase=1){global.subtitle=false}
		Encounter_Start(BATTLE.HAIKE)
		break
	case 2:
		room_goto(room_logo_ppt)
		break
	}
}