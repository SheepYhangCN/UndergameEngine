function Encounter_Custom(){
	if(IsEng()){
	var text0="* test battle"
	var text1="* Now you have no way out." 
	var text2="* A familiar figure stands in&  front of you."
	var text3="* 墨染天地，挥笔成画。"}
	if(IsChs()){
	var text0="* 测试战斗"
	var text1="* 现在你已无路可逃。"
	var text2="* 一个熟悉的身影站在你面前。"
	var text3="* 墨染天地，挥笔成画。"}
	Encounter_Set(BATTLE.TEST,-1,battle_enemy,-1,text0);
	Encounter_Set(BATTLE.YUHANG,-1,battle_enemy_yuhang,-1,text1,bgm_yuhang)
	Encounter_Set(BATTLE.SANS_CORE,-1,battle_enemy_sans_core,-1,"",-1,false,false,false,320,320)
	Encounter_Set(BATTLE.WARMA,-1,battle_enemy_warma,-1,text2,bgm_warma)
	Encounter_Set(BATTLE.MIKU_PM_0,-1,battle_enemy_miku_pm0,-1,"")
	Encounter_Set(BATTLE.ULBxNMD_P1,-1,battle_enemy_ulb_nmd_p1,-1,"")
	Encounter_Set(BATTLE.INK,-1,battle_enemy_ink,-1,text3,bgm_ink)
}
