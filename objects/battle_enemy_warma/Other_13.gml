if(Battle_GetMenu() == BATTLE_MENU.FIGHT_ANIM&&Battle_GetTurnNumber()!=16){
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
	if(Battle_GetMenu() == BATTLE_MENU.FIGHT_DAMAGE){
		if(Battle_GetTurnNumber()=16){
			Battle_SetMenuDialog("")
			audio_stop_all()
			audio_play_sound(snd_cut,0,0)
			fader.color=c_black
			fader.alpha=1
			alarm[5]=60
		}else{
	var attack_damage = instance_create_depth(320,y-30,0,battle_damage);
		attack_damage.bar_hp_max = _hpmax;
		attack_damage.bar_hp_original = _hp;
		Battle_SetMenuFightDamage(BATTLE_DAMAGE.MISS)
		attack_damage.damage = BATTLE_DAMAGE.MISS
		attack_damage.bar_hp_target = _hp-Battle_GetMenuFightDamage();
}}