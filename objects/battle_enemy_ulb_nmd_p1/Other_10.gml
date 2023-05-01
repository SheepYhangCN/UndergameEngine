x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,1);
global.shield=false
global.shield_useable=false
global.kr=true
animsin = 0
sinn = 2
headx = x-1
heady = y-30
bodyx = x-1
bodyy = y+13
legx = x
legy = y+60
_face_spr=spr_sans_face
_face = 3
_body = 0
_legs= 0
sweat=0
alarm[2]=1
Battle_SetEnemyDEF(_enemy_slot,1);
Player_SetLv(20)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetFleeable(false)
Battle_SetMenuMercyFleeEnabled(false)
hint=300
item_used_hint=0
item_used=0
sansalpha=1
charaalpha=0
audio_stop_all()
charax=x
animsin1 = 0
sinn1 = 2
charaheadx = 0
charaheady = 0
charabodyx = 0
charabodyy = 0
charalegx = 0
charalegy = 0
chara_face_spr=spr_nmdc_face
chara_face = 6
chara_body = 0
chara_legs= 0
alarm[3]=1