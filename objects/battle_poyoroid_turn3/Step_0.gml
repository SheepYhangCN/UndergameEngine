if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}

switch timer{
	case 1:
		audio_play_sound(snd_exclamation,0,0)
		var a=instance_create_depth(0,0,0,bone_box)
		a.duration=30
		a.audio=false
		a.x1=320+90-40
		a.y1=320+60-40
		a.x2=320+90
		a.y2=320+60
		break
	case 30:
		bone1=Battle_MakeBoneBottom(320+90,32,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(bone1,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,320+90,-180,60)
		Anim_Create(bone1,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,320-90,180,60,60)
		Anim_Create(bone1,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,320+90,-180,60,120)
		Anim_Create(bone1,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,320-90,180,60,180)
		Anim_Create(bone1,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,320+90,-180-20,60,240)
		audio_play_sound(snd_bone_out,0,0)
		break
	case 330:
		Battle_MakeBoneBottom(320-96,100,3,1,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		break
	case 400:
		Battle_EndTurn()
		break
}