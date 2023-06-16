if(draw)
{
	depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
	draw_sprite_ext(spr_salt,0,saltx,salty,2,2,saltangle,c_white,1);
	depth=0;
}

if(instance_exists(obj_explosion))
{
	draw_sprite_ext(spr_explosion,obj_explosion.image_index,obj_explosion.x,obj_explosion.y,obj_explosion.image_xscale,obj_explosion.image_yscale,obj_explosion.image_angle,obj_explosion.image_blend,obj_explosion.image_alpha);
}