if(temp1=0){
audio_play_sound(bgm_gameover,0,1)
temp1=1}
if(image_alpha<1){
image_alpha+=0.01
alarm[6]=1}else{
alarm[6]=-1
a=instance_create_depth(200+(IsChs() ? 20 : 0),320,depth-1,text_typer)
a.text=GetString("str_gameover")
}