timer+=1
switch timer{
case 30:
	Battle_MakeBoneWallTop(1,20,680)
	Battle_MakeBoneWallBottom(1,20,680)
	Battle_MakeBoneWallLeft(1,20,680)
	Battle_MakeBoneWallRight(1,20,680)
	alarm[0]=1
	break
case 90:
	BlueSoulControl(DIR.DOWN)
	break
case 200:
	alarm[1]=1
	break
case 320:
	alarm[2]=1
	break
case 700:
	alarm[0]=-1
	alarm[1]=-1
	alarm[2]=-1
	Battle_SetBoardSize(64,64,64,64,70)
	Battle_SetSoul(battle_soul_red)
	break
case 770:
	a=Battle_CreateBoardExtraRoundrect(320,320,128,0)
	Anim_Create(a,"precision",0,0,0,64,60)
	Battle_SetBoardSize(32,32,32,32,1)
	break
case 830:
	alarm[1]=1
	alarm[3]=1
	angle=0
	break
case 1400:
	alarm[1]=-1
	alarm[3]=-1
	Anim_Create(a,"precision",0,0,64,-64,60)
	break
case 1461:
	Battle_SetBoardSize(64,64,64,64,1)
	instance_destroy(a)
	break
case 1500:
	Battle_SetBoardSize(12,12,12,12,60)
	break
case 1560:
	global.passed[BATTLE.MIKU_PM_0]=true
	ini_open(working_directory+"/file"+string(Flag_GetSaveSlot())+".ini")
	ini_write_real("passed",BATTLE.MIKU_PM_0,global.passed[BATTLE.MIKU_PM_0])
	ini_close()
	alarm[4]=1
	break
}