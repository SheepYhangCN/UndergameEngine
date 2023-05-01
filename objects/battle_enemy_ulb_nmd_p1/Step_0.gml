if(IsEng()){
window_set_caption(GAME_NAME+" - ULB Sans x NMD Chara Fight")
}
if(IsChs()){
window_set_caption(GAME_NAME+" - 终焉之息 Sans x 再无交易 Chara 战")
}
global.battle=BATTLE.ULBxNMD_P1

if(keyboard_check_pressed(vk_space)&&global.mode!=GAME_MODE.HARD){
hint=0
item_used+=1
item_used_hint=60
Player_SetKR(0)
Player_Heal(114514)
audio_play_sound(snd_item_heal,0,0)
}
charaheadx = charax
charaheady = y-59+(sin((animsin1 / 4)) / 1.8)
charabodyx = charax
charabodyy = y+sin((animsin1 / 4))*1.5
charalegx = charax
charalegy = y+50
headx = (x-1 + cos((animsin / 3))*1.2)
heady = (y-30 + sin((animsin / 1.5)))
bodyx = (x-1 + cos((animsin / 3)))
bodyy = (y+13 + (sin((animsin / 1.5))))
legx = x
legy = y+60