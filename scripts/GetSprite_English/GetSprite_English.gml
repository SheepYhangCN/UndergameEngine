///@arg localization_id
function GetSprite_English(){
	var lid=argument[0]
	var result=spr_default
	switch(lid){
		case "spr_button_fight":
			result=spr_button_fight
			break
		case "spr_button_act":
			result=spr_button_act
			break
		case "spr_button_item":
			result=spr_button_item
			break
		case "spr_button_item_empty":
			result=spr_button_item_empty
			break
		case "spr_button_mercy":
			result=spr_button_mercy
			break
	}
	return (sprite_exists(result) ? result : spr_default)
}