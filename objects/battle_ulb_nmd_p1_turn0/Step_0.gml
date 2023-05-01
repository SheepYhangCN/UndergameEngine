timer+=1

if(Input_IsPressed(INPUT.MENU)&&timer<1000){
	battle_enemy_ulb_nmd_p1.hint=0
	timer=1000
	Anim_Destroy(battle_enemy_ulb_nmd_p1)
	if(instance_exists(obj_effect_glitch)){instance_destroy(a)}
	if(!instance_exists(obj_effect_rgb)){b=RGB_Make(10,true);b.range=1}else{b.range=1}
	battle_enemy_ulb_nmd_p1.x=320+60
	/*battle_enemy_ulb_nmd_p1.headx=320+60
	battle_enemy_ulb_nmd_p1.bodyx=320+60
	battle_enemy_ulb_nmd_p1.legx=320+60*/
	battle_enemy_ulb_nmd_p1.charax=320-60
	/*battle_enemy_ulb_nmd_p1.charaheadx=320-60
	battle_enemy_ulb_nmd_p1.charabodyx=320-60
	battle_enemy_ulb_nmd_p1.charalegx=320-60*/
	battle_enemy_ulb_nmd_p1.charaalpha=1
	bg=instance_create_depth(0,480,DEPTH_BATTLE.BG,battle_bg)
	bg.image_blend=c_red
	bg.image_yscale=-1.5
	bg.tempscale=-1.5
	bg.alarm[2]=1
}

switch timer{
case 500:
	Anim_Create(battle_enemy_ulb_nmd_p1,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,battle_enemy_ulb_nmd_p1.x,60,30)
	/*Anim_Create(battle_enemy_ulb_nmd_p1,"headx",ANIM_TWEEN.SINE,ANIM_EASE.OUT,battle_enemy_ulb_nmd_p1.headx,60,30)
	Anim_Create(battle_enemy_ulb_nmd_p1,"bodyx",ANIM_TWEEN.SINE,ANIM_EASE.OUT,battle_enemy_ulb_nmd_p1.bodyx,60,30)
	Anim_Create(battle_enemy_ulb_nmd_p1,"legx",ANIM_TWEEN.SINE,ANIM_EASE.OUT,battle_enemy_ulb_nmd_p1.legx,60,30)*/
	Anim_Create(battle_enemy_ulb_nmd_p1,"charax",ANIM_TWEEN.SINE,ANIM_EASE.OUT,battle_enemy_ulb_nmd_p1.charax,-60,30)
	/*Anim_Create(battle_enemy_ulb_nmd_p1,"charaheadx",ANIM_TWEEN.SINE,ANIM_EASE.OUT,battle_enemy_ulb_nmd_p1.charaheadx,-60,30)
	Anim_Create(battle_enemy_ulb_nmd_p1,"charabodyx",ANIM_TWEEN.SINE,ANIM_EASE.OUT,battle_enemy_ulb_nmd_p1.charabodyx,-60,30)
	Anim_Create(battle_enemy_ulb_nmd_p1,"charalegx",ANIM_TWEEN.SINE,ANIM_EASE.OUT,battle_enemy_ulb_nmd_p1.charalegx,-60,30)*/
	Anim_Create(battle_enemy_ulb_nmd_p1,"charaalpha",ANIM_TWEEN.SINE,ANIM_EASE.OUT,0,1,30)
	Camera_Shake(8,8,2,2)
	a=Glitch_Make(-20,20)
	b=RGB_Make(10,true)
	battle_enemy_ulb_nmd_p1._face=4
	battle_enemy_ulb_nmd_p1.chara_face=6
	bg=instance_create_depth(0,480,DEPTH_BATTLE.BG,battle_bg)
	bg.image_blend=c_red
	bg.image_yscale=0
	bg.tempscale=-1.5
	bg.alarm[2]=63
	Anim_Create(bg,"image_yscale",0,0,0,-1.5,60,2)
	Anim_Create(bg,"tempscale",0,0,-1.5,0,1,60)
	break
case 530:
	instance_destroy(a)
	b.range=1
	break
case 650:
	battle_enemy_ulb_nmd_p1._face=1
	battle_enemy_ulb_nmd_p1.chara_face=1
	break
case 770:
	battle_enemy_ulb_nmd_p1._face=3
	battle_enemy_ulb_nmd_p1.chara_face=6
	break
case 1000:
	battle_enemy_ulb_nmd_p1._face=0
	battle_enemy_ulb_nmd_p1.chara_face=0
	break
case 1040:
	Battle_MakeKnife_NMD(320,320,battle_bullet_warning_knife,45,0,5,30)
	Battle_MakeKnife_NMD(320,320,battle_bullet_warning_knife,-45,0,5,30)
	break
case 1060:
	BlueSoulControl_ULBxNMD(DIR.DOWN)
	Battle_MakeBlaster(320,0,320,240,0,0,20,2,2,20,20,0)
	Battle_MakeBlaster(320,480,320,400,180,180,20,2,2,20,20,0)
	Battle_SetBoardSize(64,64,96,96)
	var PAUSE = 20
    var LENGTH = 40
    var DURATION = -1
	#region bonewall
    var COLOR = 0
	var OBJ=battle_bullet_bone
	var SPR_BODY=spr_bone_body
	var SPR_END=spr_bone_end
	var SPR_HEIGHT=max(sprite_get_height(SPR_END),sprite_get_height(SPR_BODY))
    var ii = 0
    for (i = -3; i < (((battle_board.left+32) + (battle_board.right+32)) + SPR_HEIGHT); i += SPR_HEIGHT)
    {
        ii += 1
		if(DURATION!=-1){
        b[ii] = Battle_MakeBoneV(((battle_board.x - (battle_board.left+32)) + i), (((battle_board.y + battle_board.down) + (LENGTH / 2)) + 5), LENGTH, 0, 0, COLOR, 0, 0, 0, ((DURATION + (PAUSE * 2)) + 24),OBJ,SPR_BODY,SPR_END)
		}else{
		b[ii] = Battle_MakeBoneV(((battle_board.x - (battle_board.left+32)) + i), (((battle_board.y + battle_board.down) + (LENGTH / 2)) + 5), LENGTH, 0, 0, COLOR, 0, 0, 0, DURATION,OBJ,SPR_BODY,SPR_END)
		}
        with (b[ii])
        {
            Anim_Create(id, "y", 0, 0, y, (-LENGTH), 8, PAUSE)
			if(DURATION!=-1){
            Anim_Create(id, "y", 0, 0, (y - LENGTH), (LENGTH * 2), 16, ((16 + PAUSE) + DURATION))}
            a = instance_create_depth(0, 0, 0, shaker)
            a.target = id
            a.var_name = "x"
            a.shake_distance = 2
            a.shake_speed = 1
            a.shake_random = 0
            a.shake_decrease = 1
            a.delay = (PAUSE + 8)
        }
    }
    a = instance_create_depth(0, 0, 0, bone_box)
    a.duration = PAUSE
    a.x1 = ((battle_board.x - (battle_board.left+32)) + 1)
    a.y1 = (((battle_board.y + battle_board.down) - LENGTH) + 1)
    a.x2 = ((battle_board.x + (battle_board.right+32)) - 2)
    a.y2 = ((battle_board.y + battle_board.down) - 2)
    audio_stop_sound(snd_exclamation)
    audio_play_sound(snd_exclamation, 0, false)
	#endregion
	break
case 1080:
	b1=Battle_MakeBoneBottom(320+48,40,0,0,0,0,1)
	b1.y+=50
	Anim_Create(b1,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b1.y,-50,20)
	b2=Battle_MakeBoneBottom(320-48,40,0,0,0,0,1)
	b2.y+=50
	Anim_Create(b2,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b2.y,-50,20)
	b3=Battle_MakeBoneTop(320+48,40,0,0,0,0,1)
	b3.y-=50
	Anim_Create(b3,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b3.y,50,20)
	b4=Battle_MakeBoneTop(320-48,40,0,0,0,0,1)
	b4.y-=50
	Anim_Create(b4,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b4.y,50,20)
	break
case 1100:
	Battle_MakeBoneWallLeft(20,40,5)
	BlueSoulControl_ULBxNMD(DIR.LEFT)
	Battle_MakeBlaster(320+160,320-40,320+120,320-40,-90,-90,20,1,2,20,20,0)
	Battle_MakeBlaster(320+160,320+40,320+120,320+40,-90,-90,20,1,2,20,20,0)
	break
case 1180:
	Anim_Create(b1,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b1.y,50,20)
	Anim_Create(b2,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b2.y,50,20)
	Anim_Create(b3,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b3.y,-50,20)
	Anim_Create(b4,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,b4.y,-50,20)
	Battle_SetSoul(battle_soul_red)
	alarm[0]=1
	alarm[1]=30
	break
case 1220:
	instance_destroy(b1)
	instance_destroy(b2)
	instance_destroy(b3)
	instance_destroy(b4)
	Battle_SetBoardSize(64,64,-16,96,240)
	break
case 1460:
	alarm[0]=-1
	break
case 1480:
	alarm[1]=-1
	Battle_MakeBlaster(320+16+15,0,320+16+15,240,0,0,20,1,2,20,20,0)
	Battle_MakeBlaster(320+16+65,0,320+16+65,240,0,0,20,1,2,20,20,0)
	break
case 1520:
	Battle_MakeKnife_NMD(320+40+16,320-32,battle_bullet_warning_knife,90,0,5)
	Battle_MakeKnife_NMD(320+40+16,320+32,battle_bullet_warning_knife,90,0,5)
	Battle_MakeBlaster(320+16+35,0,320+16+35,240,0,0,20,1,2,20,20,0)
	Battle_MakeBlaster(320+16+45,0,320+16+45,240,0,0,20,1,2,20,20,0)
	break
case 1600:
	Battle_MakeBoneWallRight(30,30,-1)
	Battle_SetBoardSize(64,64,64,64,300)
	break
case 1660:
	alarm[2]=1
	alarm[3]=30
	break
case 1900:
	alarm[2]=-1
	alarm[3]=-1
	break
}

if(timer>=1180&&timer<1460){with(battle_bullet_bone){if(variable_instance_exists(id,"tmp")){x=(((battle_board.x - battle_board.left) + (length / 2)) + 5)}}}

if(mouse_check_button_pressed(mb_left)){Battle_MakeKnife_NMD(mouse_x,mouse_y,battle_bullet_warning_knife,random(360),0)}