draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_text(x,y,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.NAME)+"   LV "+string(Player_GetLv()));
draw_sprite(spr_battle_ui_hp,0,x+214,y+4);
if(hp_bar_lock=-1){event_user(0)}else{event_user(1)}
if(battle.tp){
if(battle.tp_value<100){color = c_aqua}else{color=c_yellow}
with(battle){
	if(tp_value>100){tp_value=100}
	if(tp_value<0){tp_value=0}
}
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_font(font_dialog)
draw_set_color(c_white)
draw_text_transformed(40,180,"TP\n"+string(round(battle.tp_value))+"%",2,2,0)
draw_sprite_ext(spr_pixel, 0, 20, 180, 40,-100*1.25, 0, make_color_rgb(192, 0, 0), 1)
draw_sprite_ext(spr_pixel, 0, 20, 180, 40,-battle.tp_value*1.25, 0, color, 1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)}