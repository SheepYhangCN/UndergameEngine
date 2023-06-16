Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_Y,320+32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,128)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,128)

var dialog=instance_create_depth(420,110,DEPTH_BATTLE.ENEMY-1,battle_dialog_enemy)
dialog.text=GetString("str_poyoroid_dialog_8")
timer=0