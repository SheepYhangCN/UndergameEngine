///@descr inst
if(instance_exists(_inst_name)){instance_destroy(_inst_name)}
if(instance_exists(_inst_lv)){instance_destroy(_inst_lv)}
if(instance_exists(_inst_time)){instance_destroy(_inst_time)}
if(instance_exists(_inst_room)){instance_destroy(_inst_room)}

if(instance_exists(inst_slot)){instance_destroy(inst_slot)}
if(instance_exists(inst_copy)){instance_destroy(inst_copy)}
if(instance_exists(inst_copy_index)){instance_destroy(inst_copy_index)}
if(instance_exists(inst_move)){instance_destroy(inst_move)}
if(instance_exists(inst_move_index)){instance_destroy(inst_move_index)}
if(instance_exists(inst_delete)){instance_destroy(inst_delete)}
if(instance_exists(inst_back)){instance_destroy(inst_back)}

//Player_Load()
Flag_Clear(FLAG_TYPE.INFO);
Flag_Load(FLAG_TYPE.INFO);
_inst_name=instance_create_depth(150,20,0,text_typer);
_inst_lv=instance_create_depth(318,20,0,text_typer);
_inst_lv.text=_prefix+"LV "+string(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.LV));
_inst_time=instance_create_depth(462,20,0,text_typer);
var time=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.TIME);
var minute=time div 60;
var second=time mod 60;
_inst_time.text=_prefix+string(minute)+":"+(second<10 ? "0" : "")+string(second);
_inst_room=instance_create_depth(150,56,0,text_typer);
_inst_room.text=_prefix+"["+string(Flag_GetSaveSlot())+"] "+Player_GetRoomName(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.ROOM,-1));
_inst_name.text=_prefix+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,GetString("str_menu_empty"));

inst_slot=instance_create_depth(80,50,0,text_typer)
inst_copy=instance_create_depth(70,120,0,text_typer)
inst_copy_index=instance_create_depth(460,120,0,text_typer)
inst_move=instance_create_depth(70,160,0,text_typer)
inst_move_index=instance_create_depth(460,160,0,text_typer)
inst_delete=instance_create_depth(70,200,0,text_typer)
inst_back=instance_create_depth(70,240,0,text_typer)
if(choice!=1&&Flag_GetSaveSlot()>0&&Flag_GetSaveSlot()<9){inst_slot.text=_prefix+"{scale 3}{font 0}<                   >"}
if(choice!=1&&Flag_GetSaveSlot()=0){inst_slot.text=_prefix+"{scale 3}{font 0}{color `gray`}<{color `white`}                   >"}
if(choice!=1&&Flag_GetSaveSlot()=9){inst_slot.text=_prefix+"{scale 3}{font 0}<                   {color `gray`}>"}
if(choice=1&&Flag_GetSaveSlot()>0&&Flag_GetSaveSlot()<9){inst_slot.text=_prefix+"{scale 3}{font 0}{color `yellow`}<                   >"}
if(choice=1&&Flag_GetSaveSlot()=0){inst_slot.text=_prefix+"{scale 3}{font 0}{color `gray`}<{color `yellow`}                   >"}
if(choice=1&&Flag_GetSaveSlot()=9){inst_slot.text=_prefix+"{scale 3}{font 0}{color `yellow`}<                   {color `gray`}>"}

if(choice!=2&&select>0&&select<9){inst_copy_index.text=_prefix+"< "+string(select)+"/9 >"}
if(choice!=2&&select=0){inst_copy_index.text=_prefix+"{color `gray`}< {color `white`}"+string(select)+"/9 >"}
if(choice!=2&&select=9){inst_copy_index.text=_prefix+"< "+string(select)+"/9{color `gray`} >"}
if(ok&&choice=2){
inst_copy_index.text=_prefix}else{
if(choice=2&&select>0&&select<9){inst_copy_index.text=_prefix+"{color `yellow`}< "+string(select)+"/9 >"}
if(choice=2&&select=0){inst_copy_index.text=_prefix+"{color `gray`}< {color `yellow`}"+string(select)+"/9 >"}
if(choice=2&&select=9){inst_copy_index.text=_prefix+"{color `yellow`}< "+string(select)+"/9{color `gray`} >"}
}

if(choice!=3&&select>0&&select<9){inst_move_index.text=_prefix+"< "+string(select)+"/9 >"}
if(choice!=3&&select=0){inst_move_index.text=_prefix+"{color `gray`}< {color `white`}"+string(select)+"/9 >"}
if(choice!=3&&select=9){inst_move_index.text=_prefix+"< "+string(select)+"/9{color `gray`} >"}
if(ok&&choice=3){
inst_move_index.text=_prefix}else{
if(choice=3&&select>0&&select<9){inst_move_index.text=_prefix+"{color `yellow`}< "+string(select)+"/9 >"}
if(choice=3&&select=0){inst_move_index.text=_prefix+"{color `gray`}< {color `yellow`}"+string(select)+"/9 >"}
if(choice=3&&select=9){inst_move_index.text=_prefix+"{color `yellow`}< "+string(select)+"/9{color `gray`} >"}
}

if(choice=2){
if(ok){inst_copy.text=_prefix+GetString("str_save_options_warning_overwrite")
}else{inst_copy.text=_prefix+"{color `yellow`}"+GetString("str_save_options_copy_to")}
}else{
if(Flag_GetSaveSlot()!=select&&file_exists(working_directory+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+"/flag/"+string(Flag_GetSaveSlot()))){
	inst_copy.text=_prefix+GetString("str_save_options_copy_to")}else{inst_copy.text=_prefix+"{color `gray`}"+GetString("str_save_options_copy_to")}
	}
if(choice=3){
if(ok){inst_move.text=_prefix+GetString("str_save_options_warning_overwrite")
}else{inst_move.text=_prefix+"{color `yellow`}"+GetString("str_save_options_move_to")}
}else{
if(Flag_GetSaveSlot()!=select&&file_exists(working_directory+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+"/flag/"+string(Flag_GetSaveSlot()))){
	inst_move.text=_prefix+GetString("str_save_options_move_to")}else{inst_move.text=_prefix+"{color `gray`}"+GetString("str_save_options_move_to")}
	}

if(choice=4){
if(ok){inst_delete.text=_prefix+GetString("str_save_options_warning_delete")
}else{inst_delete.text=_prefix+"{color `yellow`}"+GetString("str_save_options_delete")}
}else{
if(file_exists(working_directory+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+"/flag/"+string(Flag_GetSaveSlot()))){
	inst_delete.text=_prefix+GetString("str_save_options_delete")}else{inst_delete.text=_prefix+"{color `gray`}"+GetString("str_save_options_delete")}
	}
if(choice=5){
inst_back.text=_prefix+"{color `yellow`}"+GetString("str_save_options_confirm_back")
}else{inst_back.text=_prefix+GetString("str_save_options_confirm_back")}