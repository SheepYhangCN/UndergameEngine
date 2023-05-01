if(IsEng()){
window_set_caption(GAME_NAME+" - Undertale: the Core Encounter Sans Fight")
}else if(IsChs()){
window_set_caption(GAME_NAME+" - Undertale: 核心之遇 Sans战")}
global.battle=BATTLE.SANS_CORE

if(keyboard_check_pressed(ord("C"))&&Battle_GetTurnNumber()=0&&battle_sans_core_turn0.timer<1500){
hint=0
audio_sound_set_track_position(bgm,1519/60)
audio=1519/60
battle_sans_core_turn0.timer=1499
with(battle_dialog_enemy){instance_destroy()}
}

if(keyboard_check_pressed(vk_space)&&global.mode!=GAME_MODE.HARD){
hint=0
item_used+=1
item_used_hint=60
Player_SetKR(0)
Player_Heal(114514)
audio_play_sound(snd_item_heal,0,0)
}

headx = (x-1 + cos((animsin / 3))*2)
heady = (y-30 + sin((animsin / 1.5))*1.5)
bodyx = (x-1 + cos((animsin / 3))*2)
bodyy = (y+13 + (sin((animsin / 1.5)) / 1.5))
legx = x
legy = y+60