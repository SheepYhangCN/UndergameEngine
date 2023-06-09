///@desc Init
audio_stop_all()
global.kr=0
Player_SetKR(0)
_hp=1
_hpmax=1
audio_stop_all()
global.shield=true
global.shield_useable=true
Battle_SetEnemyAtk(1)
Battle_SetPlayerTempInv(60)
Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyName(_enemy_slot,"Enemy Name");
Battle_SetEnemyActionName(_enemy_slot,0,GetString("str_battle_act_check"))
Battle_SetEnemyActionName(_enemy_slot,1,GetString("str_battle_act_pray"))
Battle_SetEnemyActionName(_enemy_slot,2,GetString("str_battle_act_heal"))
Battle_SetEnemyActionInfo(_enemy_slot,0,GetString("str_battle_act_check_info"))
Battle_SetEnemyActionInfo(_enemy_slot,1,GetString("str_battle_act_pray_info"))
Battle_SetEnemyActionInfo(_enemy_slot,2,GetString("str_battle_act_heal_info"))

ab=instance_create_depth(0,0,0,battle_bg)
ab.image_blend=$E16941
ab.image_yscale=3
ba=instance_create_depth(0,room_height,0,battle_bg)
ba.image_blend=c_orange
ba.image_yscale=-3

aba=instance_create_depth(0,room_height,0,battle_bg)
aba.image_blend=c_aqua
aba.image_angle=90
aba.image_yscale=3
bab=instance_create_depth(room_width,0,0,battle_bg)
bab.image_blend=c_red
bab.image_angle=-90
bab.image_yscale=3

Battle_SetMenuDialog("* test battle")