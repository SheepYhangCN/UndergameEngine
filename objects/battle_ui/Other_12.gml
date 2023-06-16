///@descr shield timer control
if((!keyboard_check(ord("C"))) || battle.shield_useable == false)
        {
            if(battle.shieldval < 120){
			if(global.mode=GAME_MODE.NORMAL){
                battle.shieldval += 1.5}
			if(global.mode=GAME_MODE.EASY){
                battle.shieldval += 2}
			if(global.mode=GAME_MODE.HARD){
                battle.shieldval += 1}
			}
			battle.shielding=false
        }
if(keyboard_check(ord("C")) && battle.shield_useable == true && battle.shieldval > 0)
        {
			if(global.mode=GAME_MODE.NORMAL){
            battle.shieldval -= 2}
			if(global.mode=GAME_MODE.EASY){
            battle.shieldval -= 1}
			if(global.mode=GAME_MODE.HARD){
            battle.shieldval -= 3}
            battle.shielding = true
        }
if(battle.shieldval<=0){battle.shielding=false}
        if(battle.shieldval > 120){
            battle.shieldval = 120}
        if(battle.shieldval < 0){
            battle.shieldval = 0}