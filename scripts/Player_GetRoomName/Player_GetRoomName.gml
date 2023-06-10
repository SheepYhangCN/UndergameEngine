///@arg room
function Player_GetRoomName() {
	var ROOM=string(argument[0]);
	var name=GetString("str_"+ROOM)
	if(name="<Undefined String: str_"+ROOM+">"||name="<Undefined Language: "+string(global.language)+">"){name="<Undefined Room Name>"}
	if(ROOM=-1){name="--"}
	return name;


}
