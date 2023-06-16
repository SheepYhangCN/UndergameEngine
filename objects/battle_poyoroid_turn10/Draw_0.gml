if(draw)
{
	surface_set_target(Battle_GetBoardSurface());
	draw_sprite_ext(spr_slug,0,320+80,320+65,-2,2,0,c_white,1);
	surface_reset_target();
}