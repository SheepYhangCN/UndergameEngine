window_set_caption(GAME_NAME+" - 拝啓")
global.battle=BATTLE.HAIKE

if(keyboard_check_pressed(vk_space)&&global.mode!=GAME_MODE.HARD){
hint=0
item_used+=1
item_used_hint=60
Player_SetKR(0)
Player_Heal(114514)
audio_play_sound(snd_item_heal,0,0)
}

angle += _speed;
camera.x = camerax+radius * cos(angle);
camera.y = cameray+radius * sin(2 * angle);
	
camera.angle = sin(2 * angle) * 1