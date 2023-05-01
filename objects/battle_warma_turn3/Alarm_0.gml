Battle_MakeBoneTwoV(320+120,320+((Battle_GetTurnTime()>400 ? 1 : -1)*20)+yyy,-2,35,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
if(yyy<=-20){btemp=true}
if(yyy>=20){btemp=false}
if(btemp){yyy+=7}else{yyy-=7}
with(battle_bullet_bone){if(length<=0){instance_destroy()}}
alarm[0]=8