Battle_SetTurnInfo(BATTLE_TURN.TIME,1200)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,128)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,192)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,192)
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(IsEng()){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}I started to trace this{pause}{clear}Follow all the dust&and the traces of fighting{sleep 15}{warma_face 0}&I found one human being."}
if(IsChs()){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}我开始追查这件事{pause}{clear}顺着所有的尘埃&和战斗的痕迹{sleep 15}{warma_face 0}&我找到了一个人"}