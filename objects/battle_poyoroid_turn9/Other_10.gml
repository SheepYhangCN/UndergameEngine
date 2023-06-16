Battle_SetTurnInfo(BATTLE_TURN.TIME,600)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_Y,320)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,48)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,48)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,340)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,340)

var dialog=instance_create_depth(420,110,DEPTH_BATTLE.ENEMY-1,battle_dialog_enemy)
dialog.text=GetString("str_poyoroid_dialog_9")
count=0