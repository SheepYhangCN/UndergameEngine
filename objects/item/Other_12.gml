///@desc Drop
Dialog_Clear()
Dialog_Add(GetString("str_"+object_get_name(object_index)+"_drop"))
Dialog_Start();

Item_Remove(_item_slot);
audio_play_sound(snd_item_swallow,0,false);

instance_destroy();