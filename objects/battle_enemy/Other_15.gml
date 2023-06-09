///@desc Menu End
switch(Battle_GetMenuChoiceButton()){
	case 1:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
			Dialog_Add("* Test Enemy{sleep 15}&* ATK 0 DEF 0{sleep 15}&* Check text.")
			break;
			case 1:
			Player_SetHp(Player_GetHp()+Player_GetKR())
			Player_SetKR(0)
			Dialog_Add(GetString("str_battle_act_pray_menu_dialog"))
			Dialog_Start()
			break;
			case 2:
			Player_Heal(9999999999)
			audio_play_sound(snd_item_heal,0,false)
			break
}}