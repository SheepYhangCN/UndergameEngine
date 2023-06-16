if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}

switch timer{
	case 1:
		var a=Battle_MakeBoneBottom(320+108,65,-1.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(a,"y",0,0,a.y+45,-45,40)
		Anim_Create(a,"y",0,0,a.y,45,40,40)
		Anim_Create(a,"y",0,0,a.y+45,-45,40,80)
		Anim_Create(a,"y",0,0,a.y,45,40,120)
		a.y+=45
		var a=Battle_MakeBoneBottom(320+108+20,65,-1.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(a,"y",0,0,a.y+45,-45,40,20)
		Anim_Create(a,"y",0,0,a.y,45,40,60)
		Anim_Create(a,"y",0,0,a.y+45,-45,40,100)
		Anim_Create(a,"y",0,0,a.y,45,40,140)
		a.y+=45
		var a=Battle_MakeBoneBottom(320+108+20*2,65,-1.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(a,"y",0,0,a.y+45,-45,40,40)
		Anim_Create(a,"y",0,0,a.y,45,40,80)
		Anim_Create(a,"y",0,0,a.y+45,-45,40,120)
		Anim_Create(a,"y",0,0,a.y,45,40,160)
		a.y+=45
		break
	case 120:
		var a=Battle_MakeBoneBottom(320-108,65,1.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(a,"y",0,0,a.y+45,-45,40)
		Anim_Create(a,"y",0,0,a.y,45,40,40)
		Anim_Create(a,"y",0,0,a.y+45,-45,40,80)
		Anim_Create(a,"y",0,0,a.y,45,40,120)
		a.y+=45
		var a=Battle_MakeBoneBottom(320-108-20,65,1.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(a,"y",0,0,a.y+45,-45,40,20)
		Anim_Create(a,"y",0,0,a.y,45,40,60)
		Anim_Create(a,"y",0,0,a.y+45,-45,40,100)
		Anim_Create(a,"y",0,0,a.y,45,40,140)
		a.y+=45
		var a=Battle_MakeBoneBottom(320-108-20*2,65,1.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(a,"y",0,0,a.y+45,-45,40,40)
		Anim_Create(a,"y",0,0,a.y,45,40,80)
		Anim_Create(a,"y",0,0,a.y+45,-45,40,120)
		Anim_Create(a,"y",0,0,a.y,45,40,160)
		a.y+=45
		break
	case 220:
		Battle_MakeBoneWallBottom(60,90,40,1,battle_bullet_bone,spr_poyoroid_tail_bone)
		break
	case 320:
		audio_play_sound(snd_niao,0,0)
		var a=Battle_MakeFriendlyPellet(0,320+50,160,320+50,0,40,40,8,0,90,1,true,battle_bullet_friendlypellet,spr_syringe)
		Anim_Create(a,"image_angle",ANIM_TWEEN.SINE,ANIM_EASE.OUT,180,-90,30)
		break
	case 440:
		var b=Battle_MakeBoneTop(320+96, (((320+50 - battle_board.y) + battle_board.up) - 24), -2, (0 << 0), 0, 0, 1, -1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(b,"y",0,0,b.y,-80,60)
		Anim_Create(b,"y",0,0,b.y-80,80,60,60)
		Anim_Create(b,"y",0,0,b.y,-80,60,120)
		Anim_Create(b,"y",0,0,b.y-80,80,60,180)
		var b=Battle_MakeBoneBottom(320+96, (((battle_board.y + battle_board.down) - 24) - (320-50)), -2, (0 << 0), 0, 0, 1, -1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(b,"y",0,0,b.y+100,-80,60)
		Anim_Create(b,"y",0,0,b.y+100-80,80,60,60)
		Anim_Create(b,"y",0,0,b.y+100,-80,60,120)
		Anim_Create(b,"y",0,0,b.y+100-80,80,60,180)
		break
	case 530:
		var b=Battle_MakeBoneTop(320+96,56,-2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(b,"y",0,0,b.y-32,32,30)
		Anim_Create(b,"y",0,0,b.y,-32,30,30)
		Anim_Create(b,"y",0,0,b.y-32,32,30,60)
		Anim_Create(b,"y",0,0,b.y,-32,30,90)
		var b=Battle_MakeBoneBottom(320+96,56,-2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
		Anim_Create(b,"y",0,0,b.y+32,-32,30)
		Anim_Create(b,"y",0,0,b.y,32,30,30)
		Anim_Create(b,"y",0,0,b.y+32,-32,30,60)
		Anim_Create(b,"y",0,0,b.y,32,30,30,90)
		break
	case 650:
		Battle_EndTurn()
		break
}