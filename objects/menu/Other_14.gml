///@desc Name Check
var text="";
var valid=true;
switch(string_lower(_naming_name)){
	default:
		text=GetString("str_menu_naming_check_default")
		break;
	case "yuhang":
		if(global.debug=false){
		text=""
		valid=false}
		break;
	case "aaaaaa":
	case "aaaaa":
	case "aaaa":
	case "aaa":
	case "aa":
	case "a":
	case "111111":
	case "11111":
	case "1111":
	case "111":
	case "11":
	case "1":
	case "123456":
	case "654321":
	case "147258":
		text=GetString("str_menu_naming_check_aaaaaa")
		break;
	case "xmx":
		if(IsChs()){text="不是你谁啊，真没人在乎[笑哭]"}
		break;
	case "114514":
		if(IsChs()){text="你是一个一个一个哼哼啊啊啊啊啊啊啊啊啊啊"}
		break;
}

_confirm_title=text;
_confirm_valid=valid;