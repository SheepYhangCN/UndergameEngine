if(draw){
	surface_set_target(Battle_GetBoardSurface())
	draw_set_color(c_red)
	draw_line(soulx,320-64,soulx,320+64)
	surface_reset_target()
}