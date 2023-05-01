audio_stop_all()
fader.alpha=0
Player_Load(Flag_GetSaveSlot())
Flag_Load(FLAG_TYPE.SETTINGS)
if(file_exists(working_directory+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+"/flag/"+string(Flag_GetSaveSlot()))){
room_goto(asset_get_index(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,"room_lobby")))
}else{
if(IsEng()){CC_Add("You have no save file,\nnow you have been sent back to menu.")}
if(IsChs()){CC_Add("你没有存档，你已被送回菜单。")}
room_goto(room_menu)
}