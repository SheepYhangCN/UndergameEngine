//Dialog_Add("* The Engine won't make you drop&  it.");
if(IsEng()){
	Dialog_Add("* AX ran away.")
}else if(IsChs()){
	Dialog_Add("* 暗星陶艺了。")
}
Dialog_Start();

Item_Remove(_item_slot);
audio_play_sound(snd_item_swallow,0,false);

instance_destroy();