Battle_SetTurnInfo(BATTLE_TURN.TIME,1050)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(IsEng()){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}Dusts on the knife,{sleep 15}&and the horror smile{pause}{clear}I can't believe, &that is true......"}
if(IsChs()){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}刀子上的尘埃, {sleep 15}&还有可怕的笑容{pause}{clear}我一直都不敢相信, &那是真的......"}
board=Battle_CreateBoardExtraRect(320,320,32,32,32,32,0)