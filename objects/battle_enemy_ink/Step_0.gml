if(IsChs()){
window_set_caption(GAME_NAME+" - Ink! Sans 战")
}
if(IsEng()){
window_set_caption(GAME_NAME+" - Ink! Sans Fight")
}
global.battle=BATTLE.INK
if(variable_instance_exists(id,"bgc")&&variable_instance_exists(id,"bgu")&&variable_instance_exists(id,"bgd")){
bgc+=1
bgu.image_blend=make_color_hsv((bgc % 255), 255, 255)
bgd.image_blend=bgu.image_blend}