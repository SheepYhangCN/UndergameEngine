fader.color=c_white
spr=2
fader.alpha=0
Anim_Create(fader,"alpha",0,0,fader.alpha,-fader.alpha,1)
temp=0
audio_stop_all()
main_audio=audio_play_sound(bgm_dt_p2_intro,0,0)
a=instance_create_depth(5,5,0,text_typer)
if(IsChs()){
a.text="{scale 1}{skippable false}{instant true}按C跳过"}
if(IsEng()){
a.text="{scale 1}{skippable false}{instant true}Press C to skip"}
aa=instance_create_depth(room_width/5*1,room_height/3*2,0,text_typer)
if(IsChs()){
aa.text="{skippable false}{speed 8}{scale 2}{voice 7}{font 3}你他妈以为一块&小小的石头就能&打死你Miku大跌吗{sleep 120}{clear}我可没那么脆{sleep 120}{clear}{color `red`}现在我有114514攻击&和1919810防御&因为你Miku大跌二阶段了!!!1111"}
if(IsEng()){
aa.text="{skippable false}{speed 4}{scale 2}{voice 7}{font 3}are you fucking think&a little rock can&kill me?{sleep 120}{clear}i am not weak like that{sleep 100}{clear}{color `red`}now i have 999 atk&and 999 def because&i am phase 2 now!!!1111"}
//alarm[0]=1
Blur_Make(-1,0.3)
RGB_Make(1,true)
depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
alarm[0]=490
//alarm[1]=500
alarm[2]=925
alarm[4]=1
alarm[6]=875
audio=0
if(IsEng()){window_set_caption("Noroino Neurose")}
if(IsChs()){window_set_caption("诅咒神经症")}