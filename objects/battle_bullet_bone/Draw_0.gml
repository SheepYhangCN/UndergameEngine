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