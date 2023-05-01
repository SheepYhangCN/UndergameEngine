if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}
if(timer=1){
	BlueSoulControl_Warma(DIR.DOWN)
	Battle_MakeBoneWallBottom(30,60,10,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
}
if(timer=40){
	Battle_SetSoul(battle_soul_red)
	Battle_MakeBoneWallTop(30,56,10,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
}
if(timer=80){
	BlueSoulControl_Warma(DIR.LEFT)
	Battle_MakeBoneWallLeft(30,60,10,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
}
if(timer=120){
	Battle_SetSoul(battle_soul_red)
	Battle_MakeBoneWallRight(30,56,10,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
}
if(timer=160){
	var a=Battle_MakeLineBomb(320-64,320-64,45,35)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320-64,320+64,45,35)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320+64,320-64,45,35)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320+64,320+64,45,35)
	a.sprite_index=spr_rabbit_bomb
}
if(timer=200){
	var a=Battle_MakeLineBomb(320-64,320-64,0,30)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320-64,320+64,0,30)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320+64,320-64,0,30)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320+64,320+64,0,30)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320,320,0,30)
	a.sprite_index=spr_rabbit_bomb
}
if(timer=240){
	var a=Battle_MakeLineBomb(320-64,320-64,45,35)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320-64,320+64,45,35)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320+64,320-64,45,35)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320+64,320+64,45,35)
	a.sprite_index=spr_rabbit_bomb
}
if(timer=280){
	var a=Battle_MakeLineBomb(320-64,320-64,0,35)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320-64,320+64,0,35)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320+64,320-64,0,35)
	a.sprite_index=spr_rabbit_bomb
	var a=Battle_MakeLineBomb(320+64,320+64,0,35)
	a.sprite_index=spr_rabbit_bomb
}
if(timer=320){
	Battle_MakeLineBomb(320-64,320-64,0,20,2,0,1,1,10,40,20,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
	Battle_MakeLineBomb(320-64,320+64,0,20,2,0,1,1,10,40,20,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
	Battle_MakeLineBomb(320+64,320-64,0,20,2,0,1,1,10,40,20,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
	Battle_MakeLineBomb(320+64,320+64,0,20,2,0,1,1,10,40,20,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
}
if(timer=380){
	Battle_SetBoardSize(64,64,128,64,40)
}
if(timer=420){
	BlueSoulControl_Warma(DIR.LEFT)
	Battle_MakeBoneWallLeft(30,30,5,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
}
if(timer=460){
	Battle_SetBoardSize(64,64,128,320,40)
	BlueSoulControl_Warma(DIR.RIGHT)
	Anim_Create(battle_soul,"x",0,0,battle_soul.x,320-battle_soul.x,40)
	Anim_Create(battle_enemy_warma,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,320,-320-160,80,40)
}
if(timer=500){
	soultemp=true
	moving=true
	boarding=true
	screening=true
	Battle_SetBoardSize(64,64,330,330,40)
}
if(timer=560){
	alarm[0]=1
}
if(timer=860){
	alarm[0]=-1
	alarm[1]=-1
}
if(timer=900){
	alarm[4]=1
}
if(timer=1200){
	alarm[4]=-1
}
if(timer=1300){
	alarm[2]=1
}
if(timer=1600){
	alarm[2]=-1
}
if(timer=1700){
	alarm[3]=1
	alarm[6]=30
}
if(timer=2000){
	alarm[3]=-1
	alarm[6]=-1
}
if(timer=2180){
	moving=false
	boarding=false
	screening=false
	Anim_Create(camera,"angle",0,0,camera.angle,-camera.angle,40)
	Anim_Create(battle_board,"y",0,0,battle_board.y,320-battle_board.y,40)
	Battle_SetBoardSize(64,64,330,120,40)
	Anim_Create(id,"_x",0,0,_x,320-_x,40)
	Anim_Create(battle_enemy_warma,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-160,320+160,80)
}
if(timer=2220){
	soultemp=false
	BlueSoulControl(DIR.RIGHT,10)
	Battle_MakeBoneWallRight(30,30,5,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
}
if(timer=2280){
	fader.color=c_black
	fader.alpha=1
	audio_pause_sound(bgm_warma)
	audio_play_sound(snd_cut,0,0)
	Battle_SetBoardSize(64,64,64,64,20)
	_x=114514
}
if(timer=2320){
	fader.alpha=0
	audio_resume_sound(bgm_warma)
	BlueSoulControl_Warma(DIR.DOWN)
	camera.angle=90
	Battle_MakeBoneWallBottom(40,40,5,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
	Battle_MakeBoneWallTop(40,40,5,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
}
if(timer=2380){
	fader.alpha=1
	camera.angle=-90
	audio_pause_sound(bgm_warma)
	audio_play_sound(snd_cut,0,0)
}
if(timer=2420){
	fader.alpha=0
	audio_resume_sound(bgm_warma)
	BlueSoulControl_Warma(DIR.UP)
	battle_soul.x=battle_board.x-32
	battle_soul.y=battle_board.y-32
	Battle_MakeBoneWallTop(40,40,5,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
	Battle_MakeBoneWallLeft(40,40,5,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
}
if(timer=2480){
	fader.alpha=1
	camera.angle=0
	audio_pause_sound(bgm_warma)
	Battle_SetBoardSize(80,80,80,80,5)
	audio_play_sound(snd_cut,0,0)
}
if(timer=2520){
	fader.alpha=0
	audio_resume_sound(bgm_warma)
	Battle_MakeBoneWallRound(15,90,30,0,1,300,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
	Battle_SetSoul(battle_soul_red)
	battle_soul.x=320
	battle_soul.y=280
	alarm[5]=1
}
if(timer=2820){
	alarm[5]=-1
}
if(timer=2850){
	Battle_SetBoardSize(16,16,16,16,30)
}
if(timer=2930){
	Anim_Create(battle_enemy_warma,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,320,320+160,80)
	_x=320
	Anim_Create(id,"_y",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-64,64+battle_enemy_warma.y,80)
}
if(timer=3030){
	var a=audio_play_sound(snd_slice,0,0)
	audio_sound_pitch(a,0.75)
	wave=Battle_MakeWave(_x,_y,0,0.04,1,battle_bullet_wave_warma)
	fader.color=c_white
	Fader_Fade(0,1,60)
	audio_sound_gain(battle_enemy_warma.bgm,0,1000)
}
if(timer=3090){
	instance_destroy(wave)
}
if(timer=3150){
	battle_enemy_warma.x=320
	Fader_Fade(1,0,60)
	Player_SetHp(1)
	Battle_EndTurn()
}

if(timer>520&&timer<1600){
if(timer mod 100 = 0){
	Battle_MakeWave(_x,_y,2,0.1,1,battle_bullet_wave_warma)
}
}

if(soultemp){battle_soul.x=320}

if(moving){
if(temp=false&&_x<512){_x+=3}
if(_x>=512){temp=true}
if(temp=true&&_x>128){_x-=3}
if(_x<=128){temp=false}
}

if(boarding){
if(btemp=false&&battle_board.y<335){battle_board.y+=0.5}
if(battle_board.y>=335){btemp=true}
if(btemp=true&&battle_board.y>305){battle_board.y-=0.5}
if(battle_board.y<=305){btemp=false}
}
if(screening){
if(stemp=false&&camera.angle<10){camera.angle+=0.2}
if(camera.angle>=5){stemp=true}
if(stemp=true&&camera.angle>-10){camera.angle-=0.2}
if(camera.angle<=-5){stemp=false}
}