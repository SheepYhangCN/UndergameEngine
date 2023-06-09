///@arg room
function Player_GetRoomName() {
	var ROOM=room_get_name(argument[0]);
	var name=GetString("str_"+ROOM)
	if(name="<Undefined String: str_"+ROOM+">"||name="<Undefined Language: "+string(global.language)+">"){name="<Undefined Room Name>"}
	if(argument[0]=-1){name="--"}
	return name;


}
