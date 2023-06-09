if(instance_exists(title)){
instance_destroy(title)}
if(instance_exists(language)){
instance_destroy(language)}
if(instance_exists(language_index)){
instance_destroy(language_index)}
if(instance_exists(size)){
instance_destroy(size)}
if(instance_exists(size_index)){
instance_destroy(size_index)}
if(instance_exists(fullscreen_obj)){
instance_destroy(fullscreen_obj)}
if(instance_exists(fullscreen_obj_index)){
instance_destroy(fullscreen_obj_index)}
if(instance_exists(mode)){
instance_destroy(mode)}
if(instance_exists(mode_index)){
instance_destroy(mode_index)}
if(instance_exists(volume)){
instance_destroy(volume)}
if(instance_exists(border_obj)){
instance_destroy(border_obj)}
if(instance_exists(border_obj_index)){
instance_destroy(border_obj_index)}
if(instance_exists(backtext)){
instance_destroy(backtext)}


language = instance_create_depth(70, 80, 0, text_typer)
language_index = instance_create_depth(450, 80, 0, text_typer)
size = instance_create_depth(70, 120, 0, text_typer)
size_index = instance_create_depth(450, 120, 0, text_typer)
fullscreen_obj=instance_create_depth(70, 160, 0, text_typer)
fullscreen_obj_index=instance_create_depth(450, 160, 0, text_typer)
mode=instance_create_depth(70, 200, 0, text_typer)
mode_index=instance_create_depth(450, 200, 0, text_typer)
volume=instance_create_depth(70, 240, 0, text_typer)
border_obj=instance_create_depth(70, 280, 0, text_typer)
border_obj_index=instance_create_depth(450, 280, 0, text_typer)
backtext=instance_create_depth(70, 320, 0, text_typer)

title = instance_create_depth(260, 30, 0, text_typer)
title.text = (prefix + GetString("str_menu_settings"))
language.text = (prefix + GetString("str_settings_language"))
language_index.text = (prefix + "{color `"+(global.language>0 ? (choice=1 ? "yellow" : "white") : "gray")+"`}<{color `"+(choice=1 ? "yellow" : "white")+"`} "+GetString("str_language_name")+" {color `"+(global.language<LANGUAGE.MAX-1 ? (choice=1 ? "yellow" : "white") : "gray")+"`}>")
size.text = (prefix + GetString("str_settings_window_size"))
fullscreen_obj.text = (prefix + GetString("str_settings_fullscreen"))
if(os_type=os_android||os_type=os_ios||os_type=os_winphone||os_browser=!browser_not_a_browser){
fullscreen_obj_index.text = (prefix + GetString("str_settings_n/a"))}else{
fullscreen_obj_index.text = (prefix + fullscreen_text)}
if(os_type=os_android||os_type=os_ios||os_type=os_winphone||fullscreen=2||Border_IsEnabled()=true){
size_index.text = (prefix + GetString("str_settings_n/a"))}else{
size_index.text = (prefix + window_size_text)}
mode.text = (prefix + GetString("str_settings_mode"))
mode_index.text = (prefix + modetext)
volume.text=(prefix + GetString("str_settings_volume"))
border_obj.text = (prefix + GetString("str_settings_border"))
border_obj_index.text = (prefix + border_text)
backtext.text = (prefix + GetString("str_settings_save_back"))

if(choice=1){
language.text = (prefix + "{color `yellow`}" + GetString("str_settings_language"))
language_index.text = (prefix + "{color `"+(global.language>0 ? (choice=1 ? "yellow" : "white") : "gray")+"`}<{color `"+(choice=1 ? "yellow" : "white")+"`} "+GetString("str_language_name")+" {color `"+(global.language<LANGUAGE.MAX-1 ? (choice=1 ? "yellow" : "white") : "gray")+"`}>")}

if(choice=2){
size.text = (prefix + "{color `yellow`}" + GetString("str_settings_window_size"))
if(os_type=os_android||os_type=os_ios||os_type=os_winphone||fullscreen=2||Border_IsEnabled()=true){
size_index.text = (prefix + GetString("str_settings_n/a"))
}else{
size_index.text = (prefix + "{color `yellow`}" + window_size_text)}}

if(choice=3){
fullscreen_obj.text = (prefix + "{color `yellow`}" + GetString("str_settings_fullscreen"))
if(os_type=os_android||os_type=os_ios||os_type=os_winphone){
fullscreen_obj_index.text = (prefix + GetString("str_settings_n/a"))
}else{
fullscreen_obj_index.text = (prefix + "{color `yellow`}" + fullscreen_text)}}

if(choice=4){
mode.text = (prefix + "{color `yellow`}"+GetString("str_settings_mode"))
mode_index.text = (prefix + "{color `yellow`}" +modetext)}

if(choice=5){
volume.text = (prefix + "{color `yellow`}"+GetString("str_settings_volume"))}

if(choice=6){
border_obj.text = (prefix + "{color `yellow`}"+GetString("str_settings_border"))
border_obj_index.text = (prefix + "{color `yellow`}" + border_text)}

if(choice=7){
backtext.text = (prefix + "{color `yellow`}"+GetString("str_settings_save_back"))}

if(LOCK_LANGUAGE!=-1){
	if(instance_exists(language)){
	instance_destroy(language)}
	if(instance_exists(language_index)){
	instance_destroy(language_index)}
	language = instance_create_depth(70, 80, 0, text_typer)
	language_index = instance_create_depth(450, 80, 0, text_typer)
	language_index.text = (prefix + "{color `gray`}< {color `"+(choice=1 ? "yellow" : "white")+"`}"+GetString("str_language_name")+"{color `gray`} >")
	language.text = (prefix + "{color `"+(choice=1 ? "yellow" : "white")+"`}"+GetString("str_settings_language_locked"))
}