var STATUS=Battle_GetState();
var MENU=Battle_GetMenu();
sprite_index=GetSprite("spr"+string_copy(object_get_name(object_index),7,string_length(object_get_name(object_index))-6))
if(STATUS==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE){
	if(Battle_GetMenuChoiceButton()==_button_slot){
		image_index=1;
		if(MENU==BATTLE_MENU.BUTTON){
			battle_soul.x=x-38.5
			battle_soul.y=y
		}
	}else{
	image_index=0;
	}
}else{
	image_index=0;
}
