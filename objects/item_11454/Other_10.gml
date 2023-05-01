///@desc Use
//Dialog_Add("* You ate TML.&{sleep 20}* Undertale Engine Forever!&{sleep 20}* Your HP is maxed out.");
if(IsEng()){
	Dialog_Add("* You typed [29 59 14 6C].{sleep 20}&* Inscreased 30 to your max HP.")
}else if(IsChs()){
	Dialog_Add("* 你输入了[29 59 14 6C]。{sleep 20}&* 你的HP上限被增加了30。")
}
Dialog_Start();

Player_SetHpMax(Player_GetHpMax()+30)

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();