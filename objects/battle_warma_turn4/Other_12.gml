alarm[0]=1
BlueSoulControl_Warma(DIR.DOWN)
Battle_MakePlatform(battle_board.x,battle_board.y+12,battle_platform,true,56,0,0.5,0,true)
Battle_MakeBoneWallBottom(0,50,-1,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
Anim_Create(id,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,640+160,-320,30,10)
alarm[1]=60