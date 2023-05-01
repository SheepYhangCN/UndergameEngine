global.debug=false
global.undead=false
global.mode=GAME_MODE.NORMAL
global.language=LANGUAGE.ENGLISH
global.battle=BATTLE.TEST
global.shop=SHOP.TEST
global.tas=false
global.kr=false
global.shield=false
global.shield_useable=false
global.shielding=false
global.shieldval=120
global.vape=false
global.controller=0
var a=0
repeat(BATTLE.NUM){global.passed[a]=false;a+=1}
room_speed=60
//cursor_sprite=spr_cursor
window_set_size(640,480)

#region Music
if(!file_exists(working_directory+"Music/bgm_bird.ogg")){show_error("'working_directory+\"Music/bgm_bird.ogg\"' doesn't exists.",true)};global._bgm_bird=audio_create_stream(working_directory+"Music/bgm_bird.ogg");#macro bgm_bird global._bgm_bird
if(!file_exists(working_directory+"Music/bgm_gameover.ogg")){show_error("'working_directory+\"Music/bgm_gameover.ogg\"' doesn't exists.",true)};global._bgm_gameover=audio_create_stream(working_directory+"Music/bgm_gameover.ogg");#macro bgm_gameover global._bgm_gameover
if(!file_exists(working_directory+"Music/bgm_heartbeat.ogg")){show_error("'working_directory+\"Music/bgm_heartbeat.ogg\"' doesn't exists.",true)};global._bgm_heartbeat=audio_create_stream(working_directory+"Music/bgm_heartbeat.ogg");#macro bgm_heartbeat global._bgm_heartbeat
if(!file_exists(working_directory+"Music/bgm_menu_spring_autumn.ogg")){show_error("'working_directory+\"Music/bgm_menu_spring_autumn.ogg\"' doesn't exists.",true)};global._bgm_menu_spring_autumn=audio_create_stream(working_directory+"Music/bgm_menu_spring_autumn.ogg");#macro bgm_menu_spring_autumn global._bgm_menu_spring_autumn
if(!file_exists(working_directory+"Music/bgm_menu_summer.ogg")){show_error("'working_directory+\"Music/bgm_menu_summer.ogg\"' doesn't exists.",true)};global._bgm_menu_summer=audio_create_stream(working_directory+"Music/bgm_menu_summer.ogg");#macro bgm_menu_summer global._bgm_menu_summer
if(!file_exists(working_directory+"Music/bgm_menu_winter.ogg")){show_error("'working_directory+\"Music/bgm_menu_winter.ogg\"' doesn't exists.",true)};global._bgm_menu_winter=audio_create_stream(working_directory+"Music/bgm_menu_winter.ogg");#macro bgm_menu_winter global._bgm_menu_winter
if(!file_exists(working_directory+"Music/bgm_rickroll.ogg")){show_error("'working_directory+\"Music/bgm_rickroll.ogg\"' doesn't exists.",true)};global._bgm_rickroll=audio_create_stream(working_directory+"Music/bgm_rickroll.ogg");#macro bgm_rickroll global._bgm_rickroll
if(!file_exists(working_directory+"Music/bgm_sansdate.ogg")){show_error("'working_directory+\"Music/bgm_sansdate.ogg\"' doesn't exists.",true)};global._bgm_sansdate=audio_create_stream(working_directory+"Music/bgm_sansdate.ogg");#macro bgm_sansdate global._bgm_sansdate
if(!file_exists(working_directory+"Music/bgm_shop.ogg")){show_error("'working_directory+\"Music/bgm_shop.ogg\"' doesn't exists.",true)};global._bgm_shop=audio_create_stream(working_directory+"Music/bgm_shop.ogg");#macro bgm_shop global._bgm_shop
if(!file_exists(working_directory+"Music/bgm_snowdin.ogg")){show_error("'working_directory+\"Music/bgm_snowdin.ogg\"' doesn't exists.",true)};global._bgm_snowdin=audio_create_stream(working_directory+"Music/bgm_snowdin.ogg");#macro bgm_snowdin global._bgm_snowdin
if(!file_exists(working_directory+"Music/bgm_thinking.ogg")){show_error("'working_directory+\"Music/bgm_thinking.ogg\"' doesn't exists.",true)};global._bgm_thinking=audio_create_stream(working_directory+"Music/bgm_thinking.ogg");#macro bgm_thinking global._bgm_thinking
if(!file_exists(working_directory+"Music/loop_rain.ogg")){show_error("'working_directory+\"Music/loop_rain.ogg\"' doesn't exists.",true)};global._loop_rain=audio_create_stream(working_directory+"Music/loop_rain.ogg");#macro loop_rain global._loop_rain
if(!file_exists(working_directory+"Music/bgm_yuhang.ogg")){show_error("'working_directory+\"Music/bgm_yuhang.ogg\"' doesn't exists.",true)};global._bgm_yuhang=audio_create_stream(working_directory+"Music/bgm_yuhang.ogg");#macro bgm_yuhang global._bgm_yuhang
if(!file_exists(working_directory+"Music/bgm_cxx.ogg")){show_error("'working_directory+\"Music/bgm_cxx.ogg\"' doesn't exists.",true)};global._bgm_cxx=audio_create_stream(working_directory+"Music/bgm_cxx.ogg");#macro bgm_cxx global._bgm_cxx
if(!file_exists(working_directory+"Music/bgm_warma.ogg")){show_error("'working_directory+\"Music/bgm_warma.ogg\"' doesn't exists.",true)};global._bgm_warma=audio_create_stream(working_directory+"Music/bgm_warma.ogg");#macro bgm_warma global._bgm_warma
if(!file_exists(working_directory+"Music/bgm_ulb_nmd.ogg")){show_error("'working_directory+\"Music/bgm_ulb_nmd.ogg\"' doesn't exists.",true)};global._bgm_ulb_nmd=audio_create_stream(working_directory+"Music/bgm_ulb_nmd.ogg");#macro bgm_ulb_nmd global._bgm_ulb_nmd
if(!file_exists(working_directory+"Music/bgm_dt_p2_intro.ogg")){show_error("'working_directory+\"Music/bgm_dt_p2_intro.ogg\"' doesn't exists.",true)};global._bgm_dt_p2_intro=audio_create_stream(working_directory+"Music/bgm_dt_p2_intro.ogg");#macro bgm_dt_p2_intro global._bgm_dt_p2_intro
if(!file_exists(working_directory+"Music/bgm_dt_p2_main.ogg")){show_error("'working_directory+\"Music/bgm_dt_p2_main.ogg\"' doesn't exists.",true)};global._bgm_dt_p2_main=audio_create_stream(working_directory+"Music/bgm_dt_p2_main.ogg");#macro bgm_dt_p2_main global._bgm_dt_p2_main
if(!file_exists(working_directory+"Music/bgm_sans_core.ogg")){show_error("'working_directory+\"Music/bgm_sans_core.ogg\"' doesn't exists.",true)};global._bgm_sans_core=audio_create_stream(working_directory+"Music/bgm_sans_core.ogg");#macro bgm_sans_core global._bgm_sans_core
if(!file_exists(working_directory+"Music/bgm_ink.ogg")){show_error("'working_directory+\"Music/bgm_ink.ogg\"' doesn't exists.",true)};global._bgm_ink=audio_create_stream(working_directory+"Music/bgm_ink.ogg");#macro bgm_ink global._bgm_ink
#endregion

Anim_Init();

Input_Init();
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,vk_enter);
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,ord("Z"));
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,vk_shift);
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,ord("X"));
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,vk_control);
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,ord("C"));
Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,vk_up);
Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,vk_down);
Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,vk_left);
Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,vk_right);

Flag_Init();

Encounter_Init();

BGM_Init();

Dialog_Init();

Demo_Init();

Shop_Init();

instance_create_depth(0,0,0,camera);
instance_create_depth(0,0,0,fader);
instance_create_depth(0,0,0,border);
instance_create_depth(0,0,0,closed_captions);

application_surface_draw_enable(false);

//Border_SetEnabled(false);

show_debug_overlay(false);

Flag_Load(FLAG_TYPE.SETTINGS)
var default_lang=0
if(os_get_language()="zh"){default_lang=1}
Language_Set(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.LANGUAGE,default_lang))
//边框
border_=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)
if(border_=0){
Border_SetEnabled(false)}else{
Border_SetEnabled(true)
Border_SetSprite(Border_Get_Sprite(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)))}
//全屏
if(!(os_type=os_android||os_type=os_ios||os_type=os_winphone)){
if(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.FULLSCREEN,1)=2){
window_set_fullscreen(true)}}
//音量
volume=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.VOLUME,1)
//模式
global.mode=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.MODE,0)
//窗口大小
if(!(os_type=os_android||os_type=os_ios||os_type=os_winphone)){
_window_size=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.WINDOW_SIZE,1)
if(!Border_IsEnabled()&&window_get_fullscreen()=false){
Window_Size_Set(_window_size)}}

if(LOCK_LANGUAGE!=-1){Language_Set(LOCK_LANGUAGE)}
alarm[0]=30