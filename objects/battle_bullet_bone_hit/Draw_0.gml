angle+=rotate
image_angle=angle-90
var nineslide=sprite_get_nineslice(sprite_index)
image_yscale=(length+(sprite_get_height(sprite_index)-(nineslide.top+nineslide.bottom)))/sprite_get_height(sprite_index)

image_blend=c_yellow

if(out){
	depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
	draw_self()
}else{
	depth=DEPTH_BATTLE.BULLET
	surface_set_target(Battle_GetBoardSurface());{
		draw_self();
	}surface_reset_target();
}