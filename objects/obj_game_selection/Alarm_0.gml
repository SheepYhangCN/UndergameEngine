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
		Encounter_Start(BATTLE.TEST)
		break
	}
}