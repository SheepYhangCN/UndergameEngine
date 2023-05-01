BlueSoulControl_Warma(DIR.DOWN)
for(var a=320-120;a<=320+120;a+=60){
var b=Battle_MakeBone(a,320+100,1,0,0,0,0,0,1.9,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end_2head)
Anim_Create(b,"length",0,0,1,139,60)
}
for(var a=320-120;a<=320+120;a+=60){
var b=Battle_MakeBone(a,320-100,1,0,0,0,0,0,-2.1,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end_2head)
Anim_Create(b,"length",0,0,1,139,60)
}
alarm[0]=20