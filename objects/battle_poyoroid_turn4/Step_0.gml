if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}

switch timer{
	case 1:
		Battle_MakeBoneTwoV(320-108,320-24,2,24,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Battle_MakeBoneTwoV(320-108-24,320-24,2,24,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		break
	case 120:
		Battle_MakeBoneTwoV(320+108,320+12,-2,24,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Battle_MakeBoneTwoV(320+108+24,320+12,-2,24,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		break
	case 190:
		Battle_MakeBoneBottom(320+108,16,-2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Battle_MakeBoneBottom(320+108+20,24,-2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Battle_MakeBoneBottom(320+108+20*2,32,-2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Battle_MakeBoneBottom(320+108+20*3,40,-2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Battle_MakeBoneBottom(320+108+20*4,48,-2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		break
	case 290:
		Battle_MakeBoneBottom(320-108-20*2,100,4,1,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		soulx=battle_soul.x
		draw=true
		break
	case 330:
		draw=false
		var bone=Battle_MakeBoneTop(soulx,120,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(bone,"y",0,0,bone.y-bone.length,bone.length,10)
		Anim_Create(bone,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,bone.y,-bone.length-16,20,10)
		break
	case 340:
		audio_play_sound(snd_impact,0,0)
		Anim_Create(battle_board,"y",0,0,320,5,5)
		Anim_Create(battle_board,"y",0,0,325,-5,5,5)
		break
	case 400:
		Battle_EndTurn()
		break
}