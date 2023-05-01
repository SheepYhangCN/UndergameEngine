if(current_month>=3&&current_month<=5&&!audio_is_playing(bgm_menu_spring_autumn)){
audio_play_sound(bgm_menu_spring_autumn,0,1)}
if(current_month>=6&&current_month<=8&&!audio_is_playing(bgm_menu_summer)){
audio_play_sound(bgm_menu_summer,0,1)}
if(current_month>=9&&current_month<=11&&!audio_is_playing(bgm_menu_spring_autumn)){
audio_play_sound(bgm_menu_spring_autumn,0,1)}
if((current_month=12||current_month<=2)&&!audio_is_playing(bgm_menu_winter)){
audio_play_sound(bgm_menu_winter,0,1)}
page=0
if(IsEng()){
dialog=instance_create_depth(200,10,0,text_typer)
dialog.text="{scale 3}{instant true}Credits"
dialog2=instance_create_depth(120,415,0,text_typer)
dialog2.text="{scale 2}{instant true}{color `gray`}{font 1}[Use arrow keys to swtich page]&[Press X or Shift to return]"
}else if(IsChs()){
dialog=instance_create_depth(200,10,0,text_typer)
dialog.text="{scale 3}{instant true}鸣谢名单"
dialog2=instance_create_depth(140,412,0,text_typer)
dialog2.text="{scale 2}{instant true}{color `gray`}[使用方向键来翻页]&[按下 X 或 Shift 来返回]"
}
event_user(0)