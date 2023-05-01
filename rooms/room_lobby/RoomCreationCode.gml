audio_stop_all()
Dialog_Clear()
Flag_Load(FLAG_TYPE.SETTINGS)
if(IsEng()){
window_set_caption(GAME_NAME+" - Lobby")
}else if(IsChs()){
window_set_caption(GAME_NAME+" - 大厅")
}