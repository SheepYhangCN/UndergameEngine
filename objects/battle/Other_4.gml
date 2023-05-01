//生成实例
audio_stop_all()
instance_create_depth(0,0,0,battle_fader);
instance_create_depth(0,0,0,battle_board);
instance_create_depth(30,401,0,battle_ui);
instance_create_depth(32+53.5,432+20,0,battle_button_fight);
instance_create_depth(185+53.5,432+20,0,battle_button_act);
instance_create_depth(345+53.5,432+20,0,battle_button_item);
instance_create_depth(500+53.5,432+20,0,battle_button_mercy);
Anim_Create(battle_button,"y",ANIM_TWEEN.EXPO,ANIM_EASE.OUT,505,452-505,30)
Anim_Create(battle_ui,"y",ANIM_TWEEN.EXPO,ANIM_EASE.OUT,454,401-454,30)
Battle_SetSoul(battle_soul_red);
Dialog_Clear()
Player_SetKR(0)
fader.color=c_black
fader.alpha=1
Fader_Fade(1,0,20)

var ENCOUNTER=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.ENCOUNTER);
var BGM=Encounter_GetBGM(ENCOUNTER);
if(audio_exists(BGM)){
	BGM_Play(5,BGM);
}

//初始化敌人
var proc=0;
repeat(3){
	Battle_SetEnemy(_enemy_object[proc],proc);
	proc+=1;
}

Battle_SetNextState(BATTLE_STATE.MENU);

//调用事件
Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.BATTLE_START);

Battle_GotoNextState();

if(global.mode=GAME_MODE.EASY&&Player_GetInvTotal()=0){Player_SetInv(1)}else if(global.mode!=1){Player_SetInv(0)}

var save_slot=Flag_GetSaveSlot()
Player_Save(10)
Flag_SetSaveSlot(save_slot)