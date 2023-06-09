Anim_Step();
BGM_Step();

if(LOCK_LANGUAGE!=-1&&global.language!=LOCK_LANGUAGE){Language_Set(LOCK_LANGUAGE)}

if(volume<0){
volume=0}
if(volume>1){
volume=1}

if(_time>=60){
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.TIME,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.TIME)+1);
	_time=0;
}else{
	_time+=1;
}

if(Game_GetFrameSkip()>0){
	if(_frame_skip>=Game_GetFrameSkip()){
		draw_enable_drawevent(true);
		_frame_skip=0;
	}else{
		_frame_skip+=1;
		draw_enable_drawevent(false);
	}
}else{
	draw_enable_drawevent(true);
}
if(room!=room_battle){
global.battle=BATTLE.TEST}
if(room!=room_shop){
global.shop=SHOP.TEST}

if(keyboard_check_pressed(vk_f2)){
	room_restart();
}

if(keyboard_check_pressed(vk_f1)){
	window_set_caption(GetString("str_restarting"))
	game_restart();
	//room_goto(room_restarting)
}

if(keyboard_check_pressed(vk_f4)&&!keyboard_check(vk_alt)&&!keyboard_check(vk_control)&&!keyboard_check(vk_shift)){
	window_set_fullscreen(!window_get_fullscreen());
	if(window_get_fullscreen()=true){
	Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.FULLSCREEN,2)}
	if(window_get_fullscreen()=false){
	Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.FULLSCREEN,1)}
	Flag_Save(FLAG_TYPE.SETTINGS)
	//display_set_gui_maximize();
}
if(keyboard_check(ord("T"))){
if(keyboard_check(ord("A"))){
if(keyboard_check_pressed(ord("S"))){
	if(global.tas=false){
	audio_play_sound(snd_save,0,0)
	global.tas=true
	}else if(global.tas=true){
	global.tas=false
	room_speed=60}
}}}
if(keyboard_check(ord("V"))){
if(keyboard_check(ord("A"))){
if(keyboard_check(ord("P"))){
if(keyboard_check_pressed(ord("E"))){
	global.vape=!global.vape
	audio_play_sound(snd_save,0,0)
	if(global.vape){
	CC_Add(GetString("str_vape_installed"))
	}else{
	CC_Add(GetString("str_vape_uninstalled"))}
}}}}
if(global.vape){
	global.debug=false
	global.undead=false
	Player_SetKR(0)
	Player_SetHp(Player_GetHpMax())
	//Player_SetName("Vape")
	//if(instance_exists(menu)){menu._naming_name="Vape"}
	}
if(global.tas=true){
if(keyboard_check(vk_lalt)){
room_speed-=1}
if(keyboard_check(vk_ralt)){
room_speed+=1}
}
if(keyboard_check_pressed(vk_backspace)){
CC_Add(GetString("str_mobile_control_hint"))
if(instance_exists(obj_left_analog)||instance_exists(obj_touch_buttons)){
instance_destroy(obj_left_analog)
instance_destroy(obj_touch_buttons)
instance_create_depth(0,0,depth-1,mobile_control)
CC_Add(GetString("str_mobile_control_current_crosu"))
}else if(instance_exists(mobile_control)){
instance_destroy(mobile_control)
CC_Add(GetString("str_mobile_control_current_off"))
}else{
instance_create_depth(0,0,depth-1,obj_left_analog)
instance_create_depth(0,0,depth-1,obj_touch_buttons)
CC_Add(GetString("str_mobile_control_current_darknslim"))
}
}

if(instance_exists(battle_soul_yellow)||instance_exists(battle_soul_yellow_aqua)||instance_exists(battle_soul_yellow_orange)||instance_exists(battle_soul_yellow_aqua_orange)){
cursor_sprite=noone
}else if(display_mouse_get_x()=window_get_x()+window_mouse_get_x()&&display_mouse_get_y()=window_get_y()+window_mouse_get_y()){
cursor_sprite=spr_cursor
}else{
cursor_sprite=noone}

//边框
if(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)>0){
if(Border_GetSprite()!=Border_Get_Sprite(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0))){
Border_SetSprite(Border_Get_Sprite(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)))}
//if(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)=1&&Border_GetSprite()!=Border_Get_DynamicSprite()){
	//Border_SetSprite(Border_Get_DynamicSprite())
}//}
else if(Border_IsEnabled()){Border_SetEnabled(false)}