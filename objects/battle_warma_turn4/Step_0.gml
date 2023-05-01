if(Battle_GetTurnTime()=120){
	Anim_Create(battle_enemy_warma,"_body",0,0,0,5,0)
	Anim_Create(battle_enemy_warma,"_body",0,0,5,1,0,5)
	Anim_Create(battle_enemy_warma,"_body",0,0,6,-6,0,30)
	alarm[1]=-1
	id._body=0
	instance_destroy(anim_gun_shoot)
	Anim_Create(id,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN,640+160-320,320,40,10)
}
if(Battle_GetTurnTime()=70){
	audio_play_sound(snd_impact,0,0)
	Camera_Shake(8,8,1,1,1,1)
}
bodyx = (x-7 + cos((battle_enemy_warma.animsin / 3)))
bodyy = (y-45 + (sin((battle_enemy_warma.animsin / 1.5)) / 1.5))
legx = x
legy = y+30
headx=bodyx
heady=bodyy-55