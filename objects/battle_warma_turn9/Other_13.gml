Anim_Create(board,"up",0,0,300,-300,30)
Anim_Create(board,"down",0,0,300,-300,30)
Anim_Create(board,"left",0,0,16,-16,30)
Anim_Create(board,"right",0,0,16,-16,30)
if(IsEng()){Battle_SetMenuDialog("* The mistake that unremedyable.")}
if(IsChs()){Battle_SetMenuDialog("* 无法弥补之过错。")}
event_inherited();