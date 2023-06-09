if(current_month>=3&&current_month<=5&&!audio_is_playing(bgm_menu_spring_autumn)){
audio_play_sound(bgm_menu_spring_autumn,0,1)}
if(current_month>=6&&current_month<=8&&!audio_is_playing(bgm_menu_summer)){
audio_play_sound(bgm_menu_summer,0,1)}
if(current_month>=9&&current_month<=11&&!audio_is_playing(bgm_menu_spring_autumn)){
audio_play_sound(bgm_menu_spring_autumn,0,1)}
if((current_month=12||current_month<=2)&&!audio_is_playing(bgm_menu_winter)){
audio_play_sound(bgm_menu_winter,0,1)}
page=0
dialog=instance_create_depth(200,10,0,text_typer)
dialog.text=GetString("str_credits_title")
dialog2=instance_create_depth(120+(IsChs() ? 20 : 0),415+(IsChs() ? -3 : 0),0,text_typer)
dialog2.text=GetString("str_credits_hint")
event_user(0)