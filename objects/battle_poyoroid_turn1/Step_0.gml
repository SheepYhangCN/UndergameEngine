if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}

if(timer!=0&&timer<420&&timer mod 10=0){
	var a=choose(0,1)
	if(a=0)Battle_MakeBoneBottom(320+96,random_range(30,150),random_range(-5,-1),1,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
	if(a=1)Battle_MakeBoneTop(320+96,random_range(30,150),random_range(-5,-1),1,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
	}

if(timer=440){
	audio_sound_gain(battle_enemy_poyoroid.bgm,0,2000)
}
if(timer=560){
	Battle_SetSoul(battle_soul_blue)
	battle_soul_blue.impact=false
	Battle_MakeBoneBottom(320+96+96,24,-4,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
}
if(timer=650){
	var dialog=instance_create_depth(420,110,DEPTH_BATTLE.ENEMY-1,battle_dialog_enemy)
	dialog.text=GetString("str_poyoroid_dialog_1_1")
}