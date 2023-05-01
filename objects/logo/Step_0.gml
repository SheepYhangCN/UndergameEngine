if(Input_IsPressed(INPUT.CONFIRM)){
	Dialog_Clear()
	room_goto(room_warning)
}

if(IsEng()){
window_set_caption(GAME_NAME+" - Logo")
}else if(IsChs()){
window_set_caption(GAME_NAME+" - 标题画面")
}