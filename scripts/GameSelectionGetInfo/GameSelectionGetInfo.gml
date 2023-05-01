///@arg *choice
function GameSelectionGetInfo(){
	var choice=obj_game_selection.choice
	if(argument_count>0){choice=argument[0]}
	var text="[scale,2][font_menu]"
	var spr=noone
	var scale=1
	var enabled=true
	var phases=0
	var phasetext0="[scale,2][font_menu]"
	var phasetext1="[scale,2][font_menu]"
	var phasetext2="[scale,2][font_menu]"
	var phasetext3="[scale,2][font_menu]"
	var phasetext4="[scale,2][font_menu]"
	var phaseenabled0=true
	var phaseenabled1=true
	var phaseenabled2=true
	var phaseenabled3=true
	var phaseenabled4=true
	switch choice{
	case -1:
		if(IsEng()){text+="Shop"}
		if(IsChs()){text+="[font_chs]商店"}
		spr=spr_shopping_cart
		enabled=false
		break
	case 0:
		if(IsEng()){text+="Test"}
		if(IsChs()){text+="[font_chs]测试"}
		spr=-1
		enabled=true
		break
	}
	text+="[font_menu]"
	if(obj_game_selection.phase=0&&!phaseenabled0){enabled=false}
	if(obj_game_selection.phase=1&&!phaseenabled1){enabled=false}
	if(obj_game_selection.phase=2&&!phaseenabled2){enabled=false}
	if(obj_game_selection.phase=3&&!phaseenabled3){enabled=false}
	if(obj_game_selection.phase=4&&!phaseenabled4){enabled=false}
	if(enabled){
		if(IsEng()){text+="\n[[Z/Enter] or Click with cursor to Start"}
		if(IsChs()){text+="\n[[Z/Enter][font_chs]或者使用光标点击来开始"}
	}else{
		if(IsEng()){text+="\nNot available yet"}
		if(IsChs()){text+="\n[font_chs]尚未开放"}
	}
	return [text,spr,scale,enabled,phases,phasetext0,phasetext1,phasetext2,phasetext3,phasetext4,phaseenabled0,phaseenabled1,phaseenabled2,phaseenabled3,phaseenabled4]
}