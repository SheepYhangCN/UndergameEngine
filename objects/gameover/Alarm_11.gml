audio_stop_all()
fader.alpha=0
Player_Load(Flag_GetSaveSlot())
Flag_Load(FLAG_TYPE.SETTINGS)
if(file_exists(working_directory+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+"/flag/"+string(Flag_GetSaveSlot()))){
room_goto(asset_get_index(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,"room_lobby")))
}else{
CC_Add(GetString("str_gameover_file"))
room_goto(room_menu)
}