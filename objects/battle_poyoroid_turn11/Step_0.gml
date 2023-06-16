if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1};

switch timer
{
	case 1:
		audio_play_sound(snd_bone_out,0,0);
		Battle_MakeBone(320-112,320+70,100,2.5,0,0,0,0,-2.5,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone_2);
		Battle_MakeBone(320-112,320+70,100,2.5,0,0,0,90,-2.5,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone_2);
		break;
	case 30:
		Battle_MakeBoneBottom(320+112,30,-2.4,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneBottom(320+112+18*2,30,-2.4,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		break;
	case 90:
		audio_play_sound(snd_niao,0,0);
		var a=Battle_MakeFriendlyPellet(0,320+50,160,320+50,0,40,40,8,0,90,1,true,battle_bullet_friendlypellet,spr_syringe);
		Anim_Create(a,"image_angle",ANIM_TWEEN.SINE,ANIM_EASE.OUT,180,-90,30);
		Battle_MakeBoneBottom(320+112,12*7,-2.5,1,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		break;
	case 150:
		Battle_MakeBoneBottom(320+112,15,-2.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneBottom(320-112,15,2.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		break;
	case 210:
		audio_play_sound(snd_bone_out,0,0);
		Battle_MakeBoneBottom(320+112,15,-2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneBottom(320+112+18*1,15+4,-2.25,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneBottom(320+112+18*2,15+4*2,-2.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneBottom(320+112+18*3,15+4*3,-2.75,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneBottom(320+112+18*4,15+4*4,-3,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneBottom(320-112,15,2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneBottom(320-112-18*1,15+4,2.25,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneBottom(320-112-18*2,15+4*2,2.5,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneBottom(320-112-18*3,15+4*3,2.75,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneBottom(320-112-18*4,15+4*4,3,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		break;
	case 240:
		Battle_MakeBoneTop(320+112,90,-2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneTop(320-112,90,2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		break;
	case 270:
		var b=Battle_MakeBoneBottom(320+112,90,-2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Anim_Create(b,"y",0,0,b.y,70,40);
		var b=Battle_MakeBoneBottom(320-112,90,2,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Anim_Create(b,"y",0,0,b.y,70,40);
		break;
	case 310:
		var b=instance_create_depth(0,0,DEPTH_BATTLE.BULLET,bone_box);
		b.x1=320-110;
		b.x2=320-10;
		b.y1=320-60;
		b.y2=320+60;
		b.audio=false;
		b.duration=60;
		audio_play_sound(snd_exclamation,0,0);
		var b=instance_create_depth(0,0,DEPTH_BATTLE.BULLET,bone_box);
		b.x1=320+110;
		b.x2=320+10;
		b.y1=320-60;
		b.y2=320+60;
		b.audio=false;
		b.duration=60;
		break;
	case 370:
		audio_play_sound(snd_bone_out,0,0);
		var b=Battle_MakeBoneBottom(320-112,90,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b.x,320-10-b.x,30)
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,320-10,b.x-18-(320-10),30,30)
		var b=Battle_MakeBoneBottom(320+112,90,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b.x,320+10-b.x,30)
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,320+10,b.x+18-(320+10),30,30)
		var b=instance_create_depth(0,0,DEPTH_BATTLE.BULLET,bone_box);
		b.x1=320-110;
		b.x2=320-40;
		b.y1=320-60;
		b.y2=320+60;
		b.audio=false;
		b.duration=90;
		audio_play_sound(snd_exclamation,0,0);
		var b=instance_create_depth(0,0,DEPTH_BATTLE.BULLET,bone_box);
		b.x1=320+110;
		b.x2=320-20;
		b.y1=320-60;
		b.y2=320+60;
		b.audio=false;
		b.duration=90;
		break;
	case 460:
		audio_play_sound(snd_bone_out,0,0);
		var b=Battle_MakeBoneBottom(320-112,90,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b.x,320-40-b.x,30)
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,320-40,b.x-18-(320-40),30,30)
		var b=Battle_MakeBoneBottom(320+112,90,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b.x,320-20-b.x,30)
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,320-20,b.x+18-(320-20),30,30)
		var b=instance_create_depth(0,0,DEPTH_BATTLE.BULLET,bone_box);
		b.x1=320-110;
		b.x2=320+20;
		b.y1=320-60;
		b.y2=320+60;
		b.audio=false;
		b.duration=90;
		audio_play_sound(snd_exclamation,0,0);
		var b=instance_create_depth(0,0,DEPTH_BATTLE.BULLET,bone_box);
		b.x1=320+110;
		b.x2=320+40;
		b.y1=320-60;
		b.y2=320+60;
		b.audio=false;
		b.duration=90;
		break;
	case 510:
		audio_play_sound(snd_niao,0,0)
		var a=Battle_MakeFriendlyPellet(640,320+50,480,320+50,0,60,60,8,180,-90,1,true,battle_bullet_friendlypellet,spr_syringe)
		Anim_Create(a,"image_angle",ANIM_TWEEN.SINE,ANIM_EASE.OUT,180,90,50)
		break;
	case 550:
		audio_play_sound(snd_bone_out,0,0);
		var b=Battle_MakeBoneBottom(320-112,90,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b.x,320+20-b.x,30)
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,320+20,b.x-18-(320+20),30,30)
		var b=Battle_MakeBoneBottom(320+112,90,0,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b.x,320+40-b.x,30)
		Anim_Create(b,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,320+40,b.x+18-(320+40),30,30)
		var b=instance_create_depth(0,0,DEPTH_BATTLE.BULLET,bone_box);
		b.x1=320-110;
		b.x2=320+110;
		b.y1=320-60;
		b.y2=320-6;
		b.audio=false;
		b.duration=120;
		audio_play_sound(snd_exclamation,0,0);
		var b=instance_create_depth(0,0,DEPTH_BATTLE.BULLET,bone_box);
		b.x1=320-110;
		b.x2=320+110;
		b.y1=320+60;
		b.y2=320+26;
		b.audio=false;
		b.duration=120;
		break;
	case 670:
		Battle_MakeBoneTwoV(320+112,330,-3.5,40,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneTwoV(320+112+18*1,330,-3.5,24,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneTwoV(320+112+18*2,330,-3.5,24,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneTwoV(320+112+18*3,330,-3.5,24,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneTwoV(320+112+18*4,330,-3.5,40,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneTwoV(320-112,330,3.5,40,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneTwoV(320-112-18*1,330,3.5,24,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneTwoV(320-112-18*2,330,3.5,24,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneTwoV(320-112-18*3,330,3.5,24,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		Battle_MakeBoneTwoV(320-112-18*4,330,3.5,40,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		break;
	case 730:
		Battle_MakeFriendlyPellet(0,320+50,0,320+50,0,1,1,5,0,0,1,false,battle_bullet_friendlypellet,spr_slug_mid);
		break;
	case 940:
		Battle_MakeBoneBottom(320+112,32,-1,1,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone);
		break;
	case 1180:
		battle_enemy_poyoroid._face=4;
		break;
	case 1240:
		var dialog=instance_create_depth(420,110,DEPTH_BATTLE.ENEMY-1,battle_dialog_enemy);
		dialog.text=GetString("str_poyoroid_dialog_11_end");
		break;
}

if(timer>=730&&timer<=940&&instance_exists(battle_bullet_friendlypellet)&&battle_bullet_friendlypellet.sprite_index=spr_slug_mid)
{
	battle_bullet_friendlypellet.image_angle+=3;
}