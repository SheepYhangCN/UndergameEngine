if(IsChs()){
window_set_caption(GAME_NAME+" - 宇航战")
}
if(IsEng()){
window_set_caption(GAME_NAME+" - Yuhang Fight")
}
global.battle=BATTLE.YUHANG

bodyx = (x-7 + cos((animsin / 3)))
bodyy = (y-45 + (sin((animsin / 1.5)) / 1.5))
legx = x
legy = y+30
headx=bodyx
heady=bodyy-55

if(global.debug&&mouse_check_button_pressed(mb_left)){Battle_GunShoot_Yuhang(mouse_x,mouse_y)}