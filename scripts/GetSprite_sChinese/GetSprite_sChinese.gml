///@arg localization_id
function GetSprite_sChinese(){
	var lid=argument[0]
	var result=spr_default
	switch(lid){
		case "spr_button_fight":
			result=spr_button_fight_chs
			break
		case "spr_button_act":
			result=spr_button_act_chs
			break
		case "spr_button_item":
			result=spr_button_item_chs
			break
		case "spr_button_item_empty":
			result=spr_button_item_empty_chs
			break
		case "spr_button_mercy":
			result=spr_button_mercy_chs
			break
	}
	return (sprite_exists(result) ? result : spr_default)
}