if(Battle_GetTurnNumber()>=13){
if(Battle_GetMenuChoiceButton()=BATTLE_BUTTON.ACT||Battle_GetMenuChoiceButton()=BATTLE_BUTTON.ITEM){
		Battle_SetNextState(BATTLE_MENU.BUTTON)
		Battle_GotoNextState()
}
if(Battle_GetMenuChoiceButton()=BATTLE_BUTTON.MERCY){
	//instance_create_depth(0,0,0,battle_warma_turn_spared)
	Battle_SetState(BATTLE_STATE.DIALOG)
	if(IsEng()){Battle_SetDialog("{color `red`}{voice VOICE.CHARA}* You know that,&  we can't go back already.{pause}{script `Battle_SetState` "+string(BATTLE_STATE.MENU)+"}{end}")}
	if(IsChs()){Battle_SetDialog("{color `red`}{voice VOICE.CHARA}* 你知道的, 我们已经回不去了。{pause}{script `Battle_SetState` "+string(BATTLE_STATE.MENU)+"}{end}")}
}
}else{
if(Battle_GetMenuChoiceButton()=BATTLE_BUTTON.ACT||Battle_GetMenuChoiceButton()=BATTLE_BUTTON.ITEM||Battle_GetMenuChoiceButton()=BATTLE_BUTTON.MERCY){
		Battle_SetNextState(BATTLE_MENU.BUTTON)
		Battle_GotoNextState()
}}
if(Battle_GetMenuChoiceButton()=BATTLE_BUTTON.FIGHT&&Battle_GetTurnNumber()!=16){
	_face=0
	instance_create_depth(0,0,0,asset_get_index("battle_warma_turn"+string(Battle_GetTurnNumber())))
}