Battle_MakePlatform(320,340,battle_platform,false,48,0,1,0,true,1)
BlueSoulControl_Warma(DIR.DOWN)
Battle_MakeBoneWallBottom(1,35,-1,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
Battle_MakeBoneWallTop(1,(global.mode=GAME_MODE.HARD ? 35 : 25),-1,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
alarm[0]=1