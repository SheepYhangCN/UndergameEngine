if(IsEng()){Battle_SetMenuDialog("* That \"Human being\"......")}
if(IsChs()){Battle_SetMenuDialog("* 那个“人”......")}
with(battle_board_cover){
	if(y=320+64){Anim_Create(id,"up",0,0,up,-up-down,30)}
	if(y=320-128){Anim_Create(id,"down",0,0,down,-down-up,30)}
	Anim_Create(id,"x",0,0,114514,0,1,31)
}
event_inherited();