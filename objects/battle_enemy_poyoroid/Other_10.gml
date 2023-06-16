x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)-20
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,1);
battle.shield=false
battle.shield_useable=false
battle.kr=false
Battle_SetEnemyDEF(_enemy_slot,1);
Player_SetLv(1)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetFleeable(false)
Battle_SetMenuMercyFleeEnabled(false)
audio_stop_all()
Battle_SetPlayerTempInv(30)
Battle_SetEnemyAtk(4)
_hp=1
_hpmax=1
Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyName(_enemy_slot,"Poyoroid");
Battle_SetEnemyActionName(_enemy_slot,0,GetString("str_battle_act_check"))
Battle_SetEnemyActionInfo(_enemy_slot,0,GetString("str_battle_act_check_info"))
Battle_SetEnemyActionName(_enemy_slot,1,GetString("str_battle_act_heal"))
Battle_SetEnemyActionInfo(_enemy_slot,1,GetString("str_battle_act_heal_info"))

Battle_SetMenuDialog(GetString("str_poyoroid_menu_dialog_0"))

_face=0

tail_angle=0
tailt=false

bgm=audio_play_sound(bgm_poyoroid,0,1)

bg=noone

repeat(8){Item_Remove(0)};