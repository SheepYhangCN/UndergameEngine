///@arg slot
function Battle_SetMenuChoiceItemSecondary(){
	var SLOT = argument[0];
	var TXT = []
	TXT[0] = ""
	TXT[1] = ""
	TXT[2] = GetString("str_battle_secondary_use")
	TXT[3] = GetString("str_battle_secondary_info")
	TXT[4] = GetString("str_battle_secondary_drop")
	TXT[5] = ""
	TXT[6] = ""
	if(SLOT<3&&Item_IsValid(Item_Get(battle._menu_choice_item))){
		battle._menu_choice_item_secondary=SLOT;
		//更新文字
		var text="";
		var proc = battle._menu_choice_item_secondary+2;
		text+="{color `gray`}"+TXT[proc-2]+"&"
		text+="{color `gray`}"+TXT[proc-1]+"&{color `white`}"
		text+=TXT[proc]+"&"
		text+="{color `gray`}"+TXT[proc+1]+"&"
		text+="{color `gray`}"+TXT[proc+2]+"&"
		Battle_SetDialog5Line(text,true,true);
		return true;
	}else{
		return false;
	}
}
