//instance_create_depth(random(room_width+10), 0, depth, obj_season_effect)
if(IsEng()){
window_set_caption(GAME_NAME+" - Warning")
}else if(IsChs()){
window_set_caption(GAME_NAME+" - 警告")
}
if(Input_IsPressed(INPUT.CONFIRM)&&temp=0){
temp=1
Glitch_Make(-15,15)
RGB_Make(25,true)
audio_play_sound(snd_noise,0,0)
alarm[0]=30}