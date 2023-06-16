with(battle_soul_blue){sprite_index=spr_battle_soul;image_blend=c_fuchsia}
with(battle_soul_blue_effect){sprite_index=spr_battle_soul;image_blend=c_fuchsia}
with(battle_bullet){
    if((variable_instance_exists(id,"color")&&color=BULLET_TYPE.BLUE)||(variable_instance_exists(id,"type")&&type=BULLET_TYPE.BLUE)){
        if(image_blend=c_aqua){image_blend=c_fuchsia}
		if(variable_instance_exists(id,"blend")&&blend=c_aqua){blend=c_fuchsia}
    }
}