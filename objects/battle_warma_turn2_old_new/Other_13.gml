Battle_SetSoul(battle_soul_red)
Anim_Create(battle_board,"angle",0,0,battle_board.angle,-battle_board.angle,30)
if(IsEng()){Battle_SetMenuDialog("* How long...did we gone.")}
if(IsChs()){Battle_SetMenuDialog("* 我们...究竟走了多远。")}
event_inherited();