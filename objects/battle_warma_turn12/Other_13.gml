if(IsEng()){Battle_SetMenuDialog("* Warma is sparing you.")}
if(IsChs()){Battle_SetMenuDialog("* 沃玛正在饶恕你。")}
Battle_SetEnemySpareable(1,true)
//audio_play_sound(loop_rain,0,1)
audio_stop_sound(bgm_warma)
//battle_enemy_warma.alarm[4]=1
event_inherited();