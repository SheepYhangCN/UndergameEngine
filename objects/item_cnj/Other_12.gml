//Dialog_Add("* The Engine won't make you drop&  it.");
if(IsEng()){
	Dialog_Add("* You threw CNJ.")
}else if(IsChs()){
	Dialog_Add("* 你扔掉了CNJ。")
}
Dialog_Start();

Item_Remove(_item_slot);
audio_play_sound(snd_item_swallow,0,false);

instance_destroy();