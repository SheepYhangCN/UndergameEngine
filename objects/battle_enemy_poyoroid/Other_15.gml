///@desc Menu End
switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
				Dialog_Add(GetString("str_poyoroid_check"))
				break;
			case 1:
				Player_Heal(9999999999)
				audio_play_sound(snd_item_heal,0,false)
				break
}}