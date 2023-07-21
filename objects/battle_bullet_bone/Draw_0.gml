angle+=rotate
image_angle=angle-90
var nineslide=sprite_get_nineslice(sprite_index)
image_yscale=(length+(sprite_get_height(sprite_index)-(nineslide.top+nineslide.bottom)))/sprite_get_height(sprite_index)

if(type=BULLET_TYPE.WHITE){image_blend = c_white}
if(type=BULLET_TYPE.BLUE){image_blend = c_aqua}
if(type=BULLET_TYPE.ORANGE){image_blend = c_orange}
if(type=3){image_blend = c_lime}

if(out){
	depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
	draw_self()
}else{
	depth=DEPTH_BATTLE.BULLET
	surface_set_target(Battle_GetBoardSurface());{
		draw_self();
	}surface_reset_target();
}