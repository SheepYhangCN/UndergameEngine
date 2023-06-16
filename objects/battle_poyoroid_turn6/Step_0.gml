if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}

switch timer{
	case 1:
		bone1=Battle_MakeBoneBottom(320+96,60,-1.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Battle_MakeBoneTop(320+96+48,90,-1.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Battle_MakeBoneTop(320+96+48+120,90,-1.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		break
	case 120:
		bone1.hspeed=0
		Anim_Create(bone1,"length",ANIM_TWEEN.SINE,ANIM_EASE.OUT,bone1.length,20-bone1.length,20)
		Anim_Create(bone1,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,bone1.y,20,30)
		Anim_Create(bone1,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN,bone1.x,200,30,30)
		break
	case 200:
		var bone=Battle_MakeBoneLeft(320-50,95,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(bone,"x",ANIM_TWEEN.QUINT,ANIM_EASE.OUT,bone.x-120,120,30)
		Anim_Create(bone,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,bone.y,140,100,40)
		bone.x=bone.x-120
		var bone=Battle_MakeBoneRight(320-50,75,0,1,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(bone,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,bone.x+100,-100,30)
		Anim_Create(bone,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,bone.y,140,100,40)
		bone.x=bone.x+100
		break
	case 260:
		var bone=Battle_MakeBoneRight(320-50,95,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(bone,"x",ANIM_TWEEN.QUINT,ANIM_EASE.OUT,bone.x+120,-120,30)
		Anim_Create(bone,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,bone.y,140,100,40)
		bone.x=bone.x+120
		var bone=Battle_MakeBoneLeft(320-50,75,0,1,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(bone,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,bone.x-100,100,30)
		Anim_Create(bone,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,bone.y,140,100,40)
		bone.x=bone.x-100
		break
	case 320:
		var bone=Battle_MakeBoneLeft(320-50,95,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(bone,"x",ANIM_TWEEN.QUINT,ANIM_EASE.OUT,bone.x-120,120,30)
		Anim_Create(bone,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,bone.y,140,100,40)
		bone.x=bone.x-120
		var bone=Battle_MakeBoneRight(320-50,75,0,1,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(bone,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,bone.x+100,-100,30)
		Anim_Create(bone,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,bone.y,140,100,40)
		bone.x=bone.x+100
		break
	case 380:
		var bone=Battle_MakeBoneRight(320-50,95,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(bone,"x",ANIM_TWEEN.QUINT,ANIM_EASE.OUT,bone.x+120,-120,30)
		Anim_Create(bone,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,bone.y,140,100,40)
		bone.x=bone.x+120
		var bone=Battle_MakeBoneLeft(320-50,75,0,1,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(bone,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,bone.x-100,100,30)
		Anim_Create(bone,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,bone.y,140,100,40)
		bone.x=bone.x-100
		break
	case 520:
		Battle_EndTurn()
		break
}