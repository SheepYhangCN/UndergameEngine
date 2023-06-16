if(type=BULLET_TYPE.WHITE){image_blend = c_white}
if(type=BULLET_TYPE.BLUE){image_blend = c_aqua}
if(type=BULLET_TYPE.ORANGE){image_blend = c_orange}
if(type=3){image_blend = c_lime}
surface_set_target(Battle_GetBoardSurface());{
	draw_self();
}surface_reset_target();