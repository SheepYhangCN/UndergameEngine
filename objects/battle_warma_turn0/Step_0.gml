if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}
switch timer{
	case 1:
		BlueSoulControl_Warma(DIR.DOWN)
		Battle_MakeBoneWallBottom(30,60,10,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
		var a=Battle_MakeBone(320-60,320+60,120,0,0,0,0,90,0,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
		Anim_Create(a,"angle",0,0,90,-100,10,60)
		var a=Battle_MakeBone(320+60,320+60,120,0,0,0,0,90,0,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
		Anim_Create(a,"angle",0,0,90,100,10,60)
		break
	case 70:
		with(battle_bullet_bone){instance_destroy()}
		break
	case 90:
		Battle_SetSoul(battle_soul_red)
		Battle_MakeBoneWallBottom(30,40,30,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
		Battle_MakeBoneWallTop(30,60,30,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
		Battle_MakeBoneWallLeft(30,30,30,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
		Battle_MakeBoneWallRight(30,70,30,0,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
		break
	case 180:
		alarm[0]=1
		break
	case 240:
		//Battle_MakeBoneWallRound_Rotate(3,80,0,20,-1,true,true,oRoundBone,spr_bone_body,spr_luotuo_end)
		Battle_MakeBoneWallRound(30,90,90,0,20,300,battle_bullet_bone,spr_bone_body,spr_luotuo_end_2head)
		break
	case 280:
		with(battle_bullet_bone){if(!variable_instance_exists(id,"aaaa")){rotate=3}}
		break
	case 300:
		alarm[1]=1
		break
	case 540:
		alarm[1]=-1
		alarm[0]=-1
		break
	case 600:
		Battle_MakeLineBomb(320-64,320-64,0,20,2,0,1,1,10,40,20,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
		Battle_MakeLineBomb(320-64,320+64,0,20,2,0,1,1,10,40,20,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
		Battle_MakeLineBomb(320+64,320-64,0,20,2,0,1,1,10,40,20,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
		Battle_MakeLineBomb(320+64,320+64,0,20,2,0,1,1,10,40,20,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
		break
	case 640:
		Battle_MakeLineBomb(320,320,0,20,2,0,1,1,10,50,20,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
		break
	case 740:
		Battle_MakeBoneWallRound(30,90,(global.mode=GAME_MODE.HARD ? 150 : 140),0,(global.mode=GAME_MODE.HARD ? 20 : 30),-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
		break
	case 820:
		var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
		if(IsEng()){inst.text="{voice VOICE.ASRIEL}...{pause}{clear}{warma_face 2}What's wrong?{sleep 30}{warma_face 1}&Nobody said that the rabbit&can only make fireworks{pause}{warma_face 0}{end_turn}{end}"}
		if(IsChs()){inst.text="{voice VOICE.ASRIEL}{speed 4}...{pause}{clear}{warma_face 2}怎么了?{sleep 30}{warma_face 1}&谁告诉你这兔子&只能放礼花了{pause}{warma_face 0}{end_turn}{end}"}
		/*if(IsEng()){inst.text="{voice VOICE.ASRIEL}{warma_face 0}I'm,{sleep 15} always have&hope for you.{pause}{clear}{warma_face 3}Can you just, {sleep 15}back......{pause}{warma_face 0}{end_turn}{end}"}
		if(IsChs()){inst.text="{voice VOICE.ASRIEL}{speed 4}{warma_face 0}我对你, {sleep 15}&可是一直抱着希望的。{pause}{clear}{warma_face 3}可以, {sleep 15}回来吗......{pause}{warma_face 0}{end_turn}{end}"}*/
		break
}