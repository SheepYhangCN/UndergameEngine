if(global.subtitle){event_user(4)}//subtitle

timer+=1

if(Input_IsPressed(INPUT.MENU)&&timer<780){
	battle_enemy_haike.hint=0
	timer=780
	Anim_Destroy(fader)
	fader.color=c_white
	fader.alpha=1
	if(global.subtitle){
	with(closed_captions){
		with(ds_list_find_value(_list_inst,1)){instance_destroy()}
		with(ds_list_find_value(_list_inst,0)){instance_destroy()}
	}}
}

if(timer>=590&&timer<800){
	with(camera){
	camera_set_view_target(_camera,battle_board);
	camera_set_view_border(_camera,width/scale_x/2,height/scale_y/2);
	battle_enemy_haike.camerax=camera_get_view_x(_camera);
	battle_enemy_haike.cameray=camera_get_view_y(_camera);
	}}

if(instance_exists(platform)){platform.x=battle_board.x}

switch timer{
	case 590:
		Anim_Create(camera,"scale_x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,1,0.3,25)
		Anim_Create(camera,"scale_y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,1,0.3,25)
		break
	case 640:
		Anim_Create(camera,"scale_x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,1.3,0.3,25)
		Anim_Create(camera,"scale_y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,1.3,0.3,25)
		break
	case 680:
		fader.color=c_white
		Fader_Fade(0,1,100)
		break
	case 690:
		Anim_Create(camera,"scale_x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,1.6,0.4+0.5,60)
		Anim_Create(camera,"scale_y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,1.6,0.4+0.5,60)
		break
	case 800:
		battle_enemy_haike.camerax=0
		battle_enemy_haike.cameray=0
		camera.scale_x=1
		camera.scale_y=1
		Fader_Fade(1,0,120)
		break
	case 860:
		BlueSoulControl(DIR.DOWN)
		Battle_MakeBoneWallBottom(30,40,20)
		break
	case 940:
		Battle_MakeBoneBottom(320-64,30,3,0,0,0,1)
		Battle_MakeBoneBottom(320+64,30,-3,0,0,0,1)
		break
	case 990:
		Battle_MakeBoneBottom(320-64,30,3,0,0,0,1)
		Battle_MakeBoneBottom(320+64,30,-3,0,0,0,1)
		break
	case 1030:
		BlueSoulControl(DIR.UP)
		Battle_MakeBoneWallTop(30,40,20)
		break
	case 1110:
		Battle_MakeBoneTop(320-64,30,3,0,0,0,1)
		Battle_MakeBoneTop(320+64,30,-3,0,0,0,1)
		break
	case 1160:
		Battle_MakeBoneTop(320-64,30,3,0,0,0,1)
		Battle_MakeBoneTop(320+64,30,-3,0,0,0,1)
		break
	case 1220:
		BlueSoulControl(DIR.LEFT)
		Battle_MakeBlaster(320-64,0,320-64,120,0,0,20,2,2,20,20,0,false)
		break
	case 1280:
		BlueSoulControl(DIR.RIGHT)
		Battle_MakeBlaster(320+64,0,320+64,120,0,0,20,2,2,20,20,0,false)
		break
	case 1340:
		BlueSoulControl(DIR.DOWN)
		alarm[0]=20
		break
	case 1540:
		alarm[0]=-1
		bone_1=Battle_MakeBone(320,320,0,0,0,0,1,0,3,0)
		Anim_Create(bone_1,"length",0,0,0,160,60)
		bone_2=Battle_MakeBone(320,320,0,0,0,1,1,0,3.5,0)
		Anim_Create(bone_2,"length",0,0,0,160,60)
		bone_3=Battle_MakeBone(320,320,0,0,0,2,1,0,-3,0)
		Anim_Create(bone_3,"length",0,0,0,160,60)
		/*BlueSoulControl(DIR.UP)
		//alarm[1]=20
		break
	case 1560:*/
		Battle_SetSoul(battle_soul_red)
		break
	case 1700:
		//alarm[1]=-1
		bone_1.auto_destroy=true
		bone_2.auto_destroy=true
		bone_3.auto_destroy=true
		Anim_Create(bone_1,"length",0,0,bone_1.length,-bone_1.length,30)
		Anim_Create(bone_2,"length",0,0,bone_2.length,-bone_2.length,30)
		Anim_Create(bone_3,"length",0,0,bone_3.length,-bone_3.length,30)
		break
	case 1740:
		BlueSoulControl(DIR.LEFT)
		Battle_MakeBoneWallLeft(20,40,80)
		break
	case 1800:
		BlueSoulControl(DIR.RIGHT)
		Battle_MakeBoneWallRight(20,40,20)
		break
	case 1840:
		alarm[2]=5
		Battle_SetSoul(battle_soul_red)
#region bonewall
var obj = oRoundBone
var spr_body=spr_bone_body
var spr_end=spr_bone_end
var duration = -1
var sound=true
var anim=true
var angle=5
var length=100
var type=0
var pause=10
duration=260
sound=false
anim=true

var bone=instance_create_depth(0,0,0,obj);
bone._bones_angle=angle
bone._spr_bone_body=spr_body
bone._bone_end=spr_end
if(anim=true){
bone._bones_length=0
}else{
bone._bones_length=length
}
bone.type=type
with (bone)
        {
		alarm[0]=1;
		if(anim=true){
        Anim_Create(id, "_bones_length", 0, 0, 0, length, 120, pause)
		if(duration!=-1){
        Anim_Create(id, "_bones_length", 0, 0, length, -length, 60, (120 + pause + duration))
		}}
        a = instance_create_depth(0, 0, 0, shaker)
        a.target = id
        a.var_name = "y"
        a.shake_distance = 2
        a.shake_speed = 1
        a.shake_random = 0
        a.shake_decrease = 1
        a.delay = (pause + 8)
        }
if(sound=true){
a = instance_create_depth(0, 0, 0, bone_box_bonewall_round)
a.duration = pause
a.gap=130-length
audio_stop_sound(snd_exclamation)
audio_play_sound(snd_exclamation, 0, false)}
return bone;
#endregion
		break
	case 2240:
		alarm[2]=-1
		break
	case 2300:
		Anim_Create(battle_board,"x",0,0,320,-240,40)
		Anim_Create(battle_soul,"x",0,0,battle_soul.x,-240,40)
		//BlueSoulControl(DIR.LEFT)
		break
	case 2340:
		platform=Battle_MakePlatform(80,640,battle_platform,false,48,0,0,0,false,false)
		Anim_Create(platform,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,640,-300,20)
		Battle_MakeBoneWallTop_FollowBoard(20,20,-1)
		Battle_MakeBoneWallBottom_FollowBoard(20,20,-1)
		Battle_MakeBoneWallLeft_FollowBoard(20,20,-1)
		Battle_MakeBoneWallRight_FollowBoard(20,20,-1)
		break
	case 2360:
		BlueSoulControl(DIR.DOWN)
		break
	case 2400:
		platform.atemp=false
		alarm[3]=1
		alarm[4]=10
		break
	case 3120:
		alarm[4]=-1
		break
	case 3140:
		alarm[3]=-1
		with(battle_bullet_bone){instance_destroy()}
		with(battle_bullet_bone_wall_follow_board){instance_destroy()}
		Battle_SetSoul(battle_soul_red)
		Anim_Create(battle_soul,"y",0,0,battle_soul.y,-80,30)
		Anim_Create(battle_soul,"x",0,0,battle_soul.x,320-battle_board.x,30)
		Anim_Create(battle_board,"x",0,0,battle_board.x,320-battle_board.x,30)
		Anim_Create(battle_board,"y",0,0,320,-80,30)
		Anim_Create(battle_board,"angle",0,0,battle_board.angle,45-battle_board.angle,30)
		platform.atemp=false
		Anim_Create(platform,"y",ANIM_TWEEN.BACK,ANIM_EASE.IN,640-300,300,30)
		Battle_SetBoardSize(8,8,8,8)
		board=Battle_CreateBoardExtraRoundrect(battle_board.x,battle_board.y,128,0)
		Anim_Create(board,"precision",0,0,0,65,30)
		Anim_Create(board,"x",0,0,battle_board.x,320-battle_board.x,30)
		Anim_Create(board,"y",0,0,320,-80,30)
		Anim_Create(board,"angle",0,0,battle_board.angle,45-battle_board.angle,30)
		break
	case 3180:
		Battle_MakeBoneWallRound_FollowBoard(10,64,40,0,1,-1)
		break
	case 3200:
		alarm[5]=1
		alarm[4]=10
		Anim_Create(id,"bsmax",0,0,45,6.75-45,2200)
		bsbone=Battle_MakeBone(320,120,180,0,0,0,1,0,0,0)
		break
	case 4000:
		alarm[4]=-1
		break
	case 5380:
		fader.color=c_black
		Fader_Fade(0,1,120)
		break
	case 5500:
		BattlePassed(BATTLE.HAIKE)
		game_restart()
		break
}