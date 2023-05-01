if(IsEng()){Battle_SetMenuDialog("* Sorry... Sorry......")}
if(IsChs()){Battle_SetMenuDialog("* 对不起...对不起......")}
instance_destroy(board)
Anim_Create(battle_board_cover,"up",0,0,24,-24,20)
Anim_Create(battle_board_cover,"down",0,0,24,-24,20)
Anim_Create(battle_board_cover,"left",0,0,24,-24,20)
Anim_Create(battle_board_cover,"right",0,0,24,-24,20)
event_inherited();