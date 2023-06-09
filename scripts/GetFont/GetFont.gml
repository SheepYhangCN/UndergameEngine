///@arg localization_id
function GetFont(){
	var lid=argument[0]
	var result=font_chs_enemy
	result=GetFont_English(lid)
	if(IsChs()){result=GetFont_sChinese(lid)}
	return result
}