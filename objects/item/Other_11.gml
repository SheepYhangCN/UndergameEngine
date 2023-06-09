///@desc Info
Dialog_Clear()
Dialog_Add(GetString("str_"+object_get_name(object_index)+"_info"))
Dialog_Start()
instance_destroy();