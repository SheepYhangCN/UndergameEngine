function Battle_EndMenu(){
	if(instance_exists(battle_soul)){
	battle_soul.image_angle=0}
	if(Battle_GetState()==BATTLE_STATE.MENU){
		Battle_SetMenu(-1,false);
	
		var BUTTON=Battle_GetMenuChoiceButton();
		var MERCY=Battle_GetMenuChoiceMercy();
	
		//使用物品
		/*if(BUTTON==BATTLE_MENU_CHOICE_BUTTON.ITEM){
			battle._menu_item_used_last=Item_Get(Battle_GetMenuChoiceItem());
			Item_CallEvent(Item_Get(Battle_GetMenuChoiceItem()),ITEM_EVENT.USE,Battle_GetMenuChoiceItem());
		}*/
		if(BUTTON==BATTLE_MENU_CHOICE_BUTTON.ITEM){
			switch(Battle_GetMenuChoiceItemSecondary()){
				case 0:
					battle._menu_item_used_last=Item_Get(Battle_GetMenuChoiceItem());	
					Item_CallEvent(Item_Get(Battle_GetMenuChoiceItem()),ITEM_EVENT.USE,Battle_GetMenuChoiceItem());
					break;
				case 1:
					//battle._menu_item_used_last=Item_Get(Battle_GetMenuChoiceItem());	
					Item_CallEvent(Item_Get(Battle_GetMenuChoiceItem()),ITEM_EVENT.INFO,Battle_GetMenuChoiceItem());
					break;
				case 2:
					battle._menu_item_used_last=Item_Get(Battle_GetMenuChoiceItem());	
					Item_CallEvent(Item_Get(Battle_GetMenuChoiceItem()),ITEM_EVENT.DROP,Battle_GetMenuChoiceItem());
					break;
			}
		}

	
		if(BUTTON==BATTLE_MENU_CHOICE_BUTTON.FIGHT){
			if(instance_exists(battle_menu_fight)){
				with(battle_menu_fight){
					event_user(BATTLE_MENU_FIGHT_EVENT.END);
				}
			}
		}
	
		//计算逃跑
		if(BUTTON==BATTLE_MENU_CHOICE_BUTTON.MERCY && MERCY==BATTLE_MENU_CHOICE_MERCY.FLEE){
			if(Battle_IsMenuMercyFleeEnabled()){
				var value=irandom(100)+10*Battle_GetTurnNumber();
				Battle_SetFleeable(round(value/100));
			}else{
				Battle_SetFleeable(false);
			}
		}
	
		//调用事件
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_END);
	
		if(Battle_GetEnemyNumber()>0){
			//逃跑
			if(BUTTON==BATTLE_MENU_CHOICE_BUTTON.MERCY && MERCY==BATTLE_MENU_CHOICE_MERCY.FLEE && Battle_IsFleeable()){
				Battle_SetState(BATTLE_STATE.RESULT);
				Battle_SetNextState(BATTLE_STATE.RESULT);
				instance_create_depth(0,0,0,battle_result_flee);
			
				var EXP=Battle_GetRewardExp();
				var GOLD=Battle_GetRewardGold();
				var text="";
				if(GOLD==0&&EXP==0){
					text+=GetString("str_battle_ran")
				}else{
					text+="{define `EXP` "+string(EXP)+"}"+"{define `GOLD` "+string(GOLD)+"}";
					text+=GetString("str_battle_ran_with")
					Player_SetExp(Player_GetExp()+Battle_GetRewardExp());
					Player_SetGold(Player_GetGold()+Battle_GetRewardGold());
					if(Player_UpdateLv()){
						audio_play_sound(snd_level_up,0,false);
					}
				}
				Battle_SetDialog(text,true);
			}else{
				Battle_GotoNextState();
			}
		}
		return true;
	}else{
		return false;
	}


}
