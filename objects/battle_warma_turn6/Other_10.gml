Battle_SetTurnInfo(BATTLE_TURN.TIME,900)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,120)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,120)
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(IsEng()){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}Yiyu told me not to care&these{pause}{clear}But......{sleep 15}{warma_face 0}&I can't just await&everyone's doom"}
if(IsChs()){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}忆雨老师曾经告诉我&不要管这些{pause}{clear}可是......{sleep 15}{warma_face 0}&我不能坐以待毙"}