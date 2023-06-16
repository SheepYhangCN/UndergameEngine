x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,1);
battle.shield=false
battle.shield_useable=false
battle.kr=true
Battle_SetEnemyDEF(_enemy_slot,1);
Player_SetLv(20)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetFleeable(false)
Battle_SetMenuMercyFleeEnabled(false)
hint=300
item_used_hint=0
item_used=0
audio_stop_all()

_speed = 0.01; // 调整此值来更改速度
radius = 10; // 调整此值来改变∞形状的大小
angle = pi / 2;

camerax=0
cameray=0

closed_captions._alpha_base=0
closed_captions._x=320
closed_captions._y=140

if(!variable_global_exists("subtitle")){global.subtitle=true}