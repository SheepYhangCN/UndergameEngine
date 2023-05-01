var a=Battle_MakeBoneWallRound_Rotate(0,80,0,30,-1,true,true,oRoundBone,spr_bone_body,spr_luotuo_end)
a.alarm[0]=-1
a.alarm[1]=-1
instance_destroy(battle_bone_rd)
a._bones_num=(global.mode=GAME_MODE.HARD ? 9 : (global.mode=GAME_MODE.EASY ? 6 : 8))
a.alarm[0]=1
Anim_Create(a,"_bones_angle",0,0,0,1.5,60)
BlueSoulControl_Warma(DIR.DOWN)
alarm[0]=60
alarm[1]=120