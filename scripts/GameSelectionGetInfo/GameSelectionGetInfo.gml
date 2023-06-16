///@arg *choice
function GameSelectionGetInfo(){
	var choice=obj_game_selection.choice
	if(argument_count>0){choice=argument[0]}
	var text="[scale,2][font_menu]"
	var spr=noone
	var scale=1
	var enabled=true
	var phases=0
	var phasetext0="[scale,2][font_menu]"+GetString("str_game_selection_corridor")//str_game_selection_intro
	var phasetext1="[scale,2][font_menu]"+GetString("str_game_selection_phase1")
	var phasetext2="[scale,2][font_menu]"+GetString("str_game_selection_phase2")
	var phasetext3="[scale,2][font_menu]"+GetString("str_game_selection_phase3")
	var phasetext4="[scale,2][font_menu]"+GetString("str_game_selection_phase4")//str_game_selection_phase5
	var phaseenabled0=true
	var phaseenabled1=true
	var phaseenabled2=true
	var phaseenabled3=true
	var phaseenabled4=true
	switch choice{
	case -1:
		text+=GetString("str_game_selection_shop")
		spr=spr_shopping_cart
		enabled=false
		break
	case 0:
		if(global.passed[BATTLE.ULBxNMD_P1]/*TODO*/){text+="[spr_medal]"}
		text+=GetString("str_games_ulb_nmd")
		if(global.passed[BATTLE.ULBxNMD_P1]/*TODO*/){text+="[spr_medal]"}
		enabled=true
		phases=0
		if(global.passed[BATTLE.ULBxNMD_P1]){phasetext0+="[spr_medal]"}
		phasetext0="[scale,2][font_menu]"+GetString("str_game_selection_phase1")
		phasetext1="[scale,2][font_menu]"+GetString("str_game_selection_phase2")
		phasetext2="[scale,2][font_menu]"+GetString("str_game_selection_phase3")
		phaseenabled0=true
		phaseenabled1=false
		phaseenabled2=false
		spr=spr_ulb_nmd
		scale=0.95
		break
	case 1:
		if(global.passed[BATTLE.HAIKE]){text+="[spr_medal]"}
		text+="[font_chs]拝啓 - ぺぽよ[font_menu]PEPOYO"
		if(global.passed[BATTLE.HAIKE]){text+="[spr_medal]"}
		enabled=true
		phases=1
		phasetext0="[scale,2][font_menu]"+GetString("str_game_selection_subtitle_on")
		phasetext1="[scale,2][font_menu]"+GetString("str_game_selection_subtitle_off")
		phaseenabled0=true
		phaseenabled1=true
		break
	case 2:
		if(global.passed[BATTLE.POYOROID]){text+="[spr_medal]"}
		text+=GetString("str_game_poyoroid")
		if(global.passed[BATTLE.POYOROID]){text+="[spr_medal]"}
		enabled=true
		phases=0
		spr=spr_poyoroid_game
		scale=4
		break
	}
	text+="[font_menu]"
	if(obj_game_selection.phase=0&&!phaseenabled0){enabled=false}
	if(obj_game_selection.phase=1&&!phaseenabled1){enabled=false}
	if(obj_game_selection.phase=2&&!phaseenabled2){enabled=false}
	if(obj_game_selection.phase=3&&!phaseenabled3){enabled=false}
	if(obj_game_selection.phase=4&&!phaseenabled4){enabled=false}
	if(enabled){
		text+=GetString("str_game_selection_start")
	}else{
		text+=GetString("str_game_selection_not_available")
	}
	return [text,spr,scale,enabled,phases,phasetext0,phasetext1,phasetext2,phasetext3,phasetext4,phaseenabled0,phaseenabled1,phaseenabled2,phaseenabled3,phaseenabled4]
}