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
		if(global.passed[BATTLE.YUHANG]){text+="[spr_medal]"}
		if(IsEng()){text+="Yuhang Fight"}
		if(IsChs()){text+="[font_chs]宇航战"}
		if(global.passed[BATTLE.YUHANG]){text+="[spr_medal]"}
		enabled=false
		spr=spr_yuhang
		scale=0.95
		break
	case 1:
		if(global.passed[BATTLE.SANS_CORE]){text+="[spr_medal]"}
		if(IsEng()){text+="Undertale: the Core Encounter Sans Fight"}
		if(IsChs()){text+="Undertale: [font_chs]核心之遇[font_menu] Sans[font_chs]战"}
		if(global.passed[BATTLE.SANS_CORE]){text+="[spr_medal]"}
		enabled=true
		spr=spr_sans
		scale=0.95
		break
	case 2:
		if(global.passed[BATTLE.WARMA]){text+="[spr_medal]"}
		if(IsEng()){text+="Warmtale Warma Fight Remake"}
		if(IsChs()){text+="Warmtale [font_chs]沃玛战 重制版"}
		if(global.passed[BATTLE.WARMA]){text+="[spr_medal]"}
		enabled=true
		spr=spr_warma
		break
	case 3:
		if(global.passed[BATTLE.MIKU_PM_0]){text+="[spr_medal]"}
		if(IsEng()){text+="Miku was hit with rock in Noroino Neurose"+(global.passed[BATTLE.MIKU_PM_0] ? "[spr_medal]" : "")+"\n"+(global.passed[BATTLE.MIKU_PM_0] ? "[spr_medal]" : "")+"then think she is dt2 and then held double guns[font_chs]±[font_menu]0"}
		if(IsChs()){text+="Miku[font_chs]在诅咒神经症被石头撅了"+(global.passed[BATTLE.MIKU_PM_0] ? "[spr_medal]" : "")+"\n"+(global.passed[BATTLE.MIKU_PM_0] ? "[spr_medal]" : "")+"然后她认为自己是[font_menu]dt2[font_chs]然后化身±[font_menu]0[font_chs]掏双枪"}
		if(global.passed[BATTLE.MIKU_PM_0]){text+="[spr_medal]"}
		enabled=true
		spr=spr_miku
		scale=0.65
		break
	case 4:
		if(global.passed[BATTLE.ULBxNMD_P1]/*TODO*/){text+="[spr_medal]"}
		if(IsEng()){text+="ULB Sans x NMD Chara Fight"}
		if(IsChs()){text+="[font_chs]终焉之息[font_menu] Sans x [font_chs]再无交易[font_menu] Chara [font_chs]战"}
		if(global.passed[BATTLE.ULBxNMD_P1]/*TODO*/){text+="[spr_medal]"}
		enabled=false
		phases=0
		if(global.passed[BATTLE.ULBxNMD_P1]){phasetext0+="[spr_medal]"}
		if(IsEng()){
		phasetext0+="Phase 1"
		phasetext1+="Phase 2"
		phasetext2+="Phase 3"}
		if(IsChs()){
		phasetext0+="[font_chs]第[font_menu]1[font_chs]阶段"
		phasetext1+="[font_chs]第[font_menu]2[font_chs]阶段"
		phasetext2+="[font_chs]第[font_menu]3[font_chs]阶段"}
		phaseenabled0=true
		phaseenabled1=false
		phaseenabled2=false
		spr=spr_ulb_nmd
		scale=0.95
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