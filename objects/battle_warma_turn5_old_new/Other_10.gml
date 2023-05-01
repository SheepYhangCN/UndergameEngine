Battle_SetTurnInfo(BATTLE_TURN.TIME,1200)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,192)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,192)
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(IsEng()){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}Everyone... Everyone likes&you so much{pause}{clear}{warma_face 0}Why can't we be good&friends{pause}{clear}{warma_face 3}Why can't we...&live together happily......"}
if(IsChs()){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}大家...大家都是那么喜欢你{pause}{clear}{warma_face 0}我们为什么不能&成为好朋友{pause}{clear}{warma_face 3}为什么不能...&快乐的生活在一起......"}