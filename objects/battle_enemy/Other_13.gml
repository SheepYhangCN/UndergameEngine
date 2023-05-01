///@desc Menu Switch
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_ANIM){
		var random_flash=choose(0,1)
		if(random_flash=0){
		Anim_Create(id,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,320,100,15)
		Anim_Create(id,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,420,-100,15,40)
		}
		if(random_flash=1){
		Anim_Create(id,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,320,-100,15)
		Anim_Create(id,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,220,100,15,40)
		}
	}