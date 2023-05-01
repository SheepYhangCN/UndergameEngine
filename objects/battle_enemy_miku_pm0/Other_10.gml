x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,1);
global.shield=false
global.shield_useable=false

Battle_SetEnemyDEF(_enemy_slot,1);
Player_SetLv(20)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetFleeable(false)
Battle_SetMenuMercyFleeEnabled(false)
audio_stop_all()
depth=DEPTH_BATTLE.ENEMY
image_speed=0
image_index=1
image_xscale=0.5
image_yscale=0.5
Blur_Make(-1,0.3)
RGB_Make(1,true)
global.kr=true
var ba=instance_create_depth(0,room_height,0,battle_bg)
ba.image_blend=c_purple
ba.image_yscale=-1.5