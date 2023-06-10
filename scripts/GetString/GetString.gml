///@arg localization_id
function GetString(){
	var lid=argument[0]
	var result="<Undefined Language: "+string(global.language)+">"
	result=GetString_English(lid)
	if(IsChs()){
		result=GetString_sChinese(lid)
		if(IsChsT()){result=GetString_tChinese(lid)}
		}
	return result
}