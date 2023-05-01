draw_set_alpha(image_alpha)
draw_self();
var c=c_white
if(!obj_game_selection.enabled){
	c=c_gray
}else if(selected&&image_alpha>=1){
	c=c_yellow}
draw_sprite_ext(spr_obj_game,0,x,y,image_xscale,image_yscale,0,c,image_alpha)
draw_set_alpha(1)