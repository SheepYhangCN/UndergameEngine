Battle_SetTurnInfo(BATTLE_TURN.TIME,-1);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,65);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,65);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,112);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,112);

var dialog=instance_create_depth(420,110,DEPTH_BATTLE.ENEMY-1,battle_dialog_enemy);
dialog.text=GetString("str_poyoroid_dialog_12");

alpha=0;
mercy=0;
depth=battle_enemy_poyoroid.depth-5;