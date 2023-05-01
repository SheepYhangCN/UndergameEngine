x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,1);
global.shield=false
global.shield_useable=false
Battle_SetEnemyName(_enemy_slot,"Ink! Sans")
if(IsEng()){
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionInfo(_enemy_slot,0,"Check Enemy Data")
}

if(IsChs()){
Battle_SetEnemyActionName(_enemy_slot,0,"检查")
Battle_SetEnemyActionInfo(_enemy_slot,0,"查看敌人数据")
}
_hp=1
_hpmax=1
Battle_SetEnemyDEF(_enemy_slot,1);
Player_SetLv(1)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetFleeable(false)
Battle_SetMenuMercyFleeEnabled(false)
Battle_SetPlayerTempInv(30)
Battle_SetEnemyAtk(5)
bgu=instance_create_depth(0,0,DEPTH_BATTLE.BG,battle_bg)
bgu.image_yscale=1.5
bgu.alarm[2]=3
bgd=instance_create_depth(0,480,DEPTH_BATTLE.BG,battle_bg)
bgd.alarm[2]=3
bgd.image_yscale=-1.5
bgc=0
//RGB_Make(1,true)