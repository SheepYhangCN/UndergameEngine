///@desc Use
Dialog_Clear()
Dialog_Add(GetString("str_"+object_get_name(object_index)+"_use"))
Dialog_Start();
Item_Remove(_item_slot);

instance_destroy();