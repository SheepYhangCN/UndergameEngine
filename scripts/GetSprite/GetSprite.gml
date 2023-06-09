///@arg localization_id
function GetSprite(){
	var lid=argument[0]
	var result=spr_default
	result=GetSprite_English(lid)
	if(IsChs()){result=GetSprite_sChinese(lid)}
	return result
}