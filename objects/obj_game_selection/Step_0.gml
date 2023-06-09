if(!audio_is_playing(bgm_sansdate)){
audio_play_sound(bgm_sansdate,0,1)}

if(Input_IsPressed(INPUT.CANCEL)&&!starting){
	starting=true
	quit=true
	fader.color=c_black
	Fader_Fade(0,1,30)
	audio_sound_gain(bgm_sansdate,0,500)
	alarm[0]=40
}

enabled=GameSelectionGetInfo()[3]
phases=GameSelectionGetInfo()[4]
if(!GameSelectionGetInfo()[10+phase]){enabled=false}