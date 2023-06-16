var dialog=instance_create_depth(420,110,DEPTH_BATTLE.ENEMY-1,battle_dialog_enemy)
dialog.text=GetString("str_poyoroid_dialog_10_1")
Anim_Create(id,"saltx",0,0,saltx,320+80+sprite_get_width(spr_slug)-saltx,30)
Anim_Create(id,"salty",0,0,salty,320+65-sprite_get_height(spr_slug)-salty,30)
Anim_Create(id,"saltangle",0,0,0,360,30)
alarm[2]=30