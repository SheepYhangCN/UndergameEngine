///@arg localization_id
function GetFont_sChinese(){
	var lid=argument[0]
	var result=font_chs_enemy
	switch(lid){
		case "font_menu":
			result=font_chs
			break
		case "font_dialog":
			result=font_chs
			break
		case "font_battle":
			result=font_chs_enemy
			break
		case "font_sans":
			result=font_sans
			break
		case "font_papyrus":
			result=font_papyrus
			break
	}
	return result
}