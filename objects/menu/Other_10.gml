///@desc Menu Switch
if(_menu==0){
	//_mode=file_exists(Flag_GetSavePath(FLAG_TYPE.INFO,0));
	_mode=file_exists(working_directory+"/file0.ini")||file_exists(working_directory+"/file1.ini")||file_exists(working_directory+"/file2.ini")||file_exists(working_directory+"/file3.ini")||file_exists(working_directory+"/file4.ini")||file_exists(working_directory+"/file5.ini")||file_exists(working_directory+"/file6.ini")||file_exists(working_directory+"/file7.ini")||file_exists(working_directory+"/file8.ini")||file_exists(working_directory+"/file9.ini")
	if(_mode==0){
		//_inst_instruction.text=_prefix+"{color_text `gray_light`} --- New Keys ---{space_y -1}&{space_y 2}[F2] - Restart Room&[F3] - Restart&[F4] - Fullscreen&[ESC] - Quit Game&& --- DEBUG Mode Keys ---{space_y -1}&{space_y 2}[Insert] - DEBUG Mode&[Home] - Lock/Unlock HP&[~] - Console";
		_inst_begin=instance_create_depth(170,315,0,text_typer);
		//_inst_begin.text=_prefix+"Press Z or Enter to Begin";
		_inst_settings=instance_create_depth(170,350,0,text_typer);
		_inst_credits=instance_create_depth(170,385,0,text_typer)
		_inst_instruction=instance_create_depth(120+(IsChs() ? 30 : 0),0,0,text_typer);
		_inst_instruction.text=_prefix+GetString("str_menu_instruction")
		_inst_begin.text=_prefix+GetString("str_menu_begin")
		_inst_settings.text=_prefix+GetString("str_menu_settings")
		_inst_credits.text=_prefix+GetString("str_menu_credits")
		with(text_typer){
			event_user(15);
		}
		event_user(2);
	}else{
		Flag_Load(FLAG_TYPE.INFO);
		_inst_name=instance_create_depth(140,124,0,text_typer);
		_inst_lv=instance_create_depth(308,124,0,text_typer);
		_inst_lv.text=_prefix+"LV "+string(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.LV));
		_inst_time=instance_create_depth(452,124,0,text_typer);
		var time=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.TIME);
		var minute=time div 60;
		var second=time mod 60;
		_inst_time.text=_prefix+string(minute)+":"+(second<10 ? "0" : "")+string(second);
		_inst_room=instance_create_depth(140,160,0,text_typer);
		_inst_room.text=_prefix+(IsChs() ? "" : "{font 1}")+Player_GetRoomName(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.ROOM));
		_inst_continue=instance_create_depth(170,210,0,text_typer);
		_inst_continue.override_color_text_enabled=true;
		_inst_reset=instance_create_depth(390,210,0,text_typer);
		_inst_reset.override_color_text_enabled=true;
		_inst_settings=instance_create_depth(170,250,0,text_typer);
		_inst_settings.override_color_text_enabled=true;
		_inst_credits=instance_create_depth(390,250,0,text_typer);
		_inst_credits.override_color_text_enabled=true;
		_inst_save_options=instance_create_depth(250,290,0,text_typer);
		_inst_save_options.override_color_text_enabled=true;
		_inst_name.text=_prefix+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,GetString("str_menu_empty"));
		_inst_continue.text=_prefix
		if(!file_exists(Flag_GetSavePath(FLAG_TYPE.INFO))){
		_inst_continue.text+="{color `gray`}"}
		_inst_continue.text+=GetString("str_menu_continue")
		_inst_reset.text=_prefix+GetString("str_menu_reset")
		_inst_settings.text=_prefix+GetString("str_menu_settings")
		_inst_credits.text=_prefix+GetString("str_menu_credits")
		_inst_save_options.text=_prefix+GetString("str_menu_saveoptions")
		event_user(2);
		
	}
}else{
	if(instance_exists(_inst_instruction)){
		instance_destroy(_inst_instruction);
	}
	if(instance_exists(_inst_begin)){
		instance_destroy(_inst_begin);
	}
	if(instance_exists(_inst_settings)){
		instance_destroy(_inst_settings);
	}
	if(instance_exists(_inst_name)){
		instance_destroy(_inst_name);
	}
	if(instance_exists(_inst_lv)){
		instance_destroy(_inst_lv);
	}
	if(instance_exists(_inst_time)){
		instance_destroy(_inst_time);
	}
	if(instance_exists(_inst_room)){
		instance_destroy(_inst_room);
	}
	if(instance_exists(_inst_continue)){
		instance_destroy(_inst_continue);
	}
	if(instance_exists(_inst_reset)){
		instance_destroy(_inst_reset);
	}
	if(instance_exists(_inst_credits)){
		instance_destroy(_inst_credits);
	}
	if(instance_exists(_inst_save_options)){
		instance_destroy(_inst_save_options);
	}
}

if(_menu==1){
	_inst_naming_title=instance_create_depth(180,35,0,text_typer);
	_inst_naming_letters=instance_create_depth(120,107,0,text_typer);
	_inst_naming_letters.text=_prefix+"{font 0}{effect 0}{space_x 24}{space_y -2}ABCDEFG&HIJKLMN&OPQRSTU&VWXYZ{space_y -7}&&{space_y -2}abcdefg&hijklmn&opqrstu&vwxyz{space_y -7}&&{space_y -2}1234567&890";
	_inst_naming_quit=instance_create_depth(120,410,0,text_typer);
	_inst_naming_backspace=instance_create_depth(240,410,0,text_typer);
	_inst_naming_done=instance_create_depth(440,410,0,text_typer);
	_inst_naming_title.text=_prefix+GetString("str_menu_naming_title")
	_inst_naming_quit.text=_prefix+GetString("str_menu_naming_quit")
	_inst_naming_backspace.text=_prefix+GetString("str_menu_naming_backspace")
	_inst_naming_done.text=_prefix+GetString("str_menu_naming_done")
	with(text_typer){
		event_user(15);
	}
	event_user(3);
	//room_goto(room_area_0);
}else{
	if(instance_exists(_inst_naming_title)){
		instance_destroy(_inst_naming_title);
	}
	if(instance_exists(_inst_naming_letters)){
		instance_destroy(_inst_naming_letters);
	}
	if(instance_exists(_inst_naming_quit)){
		instance_destroy(_inst_naming_quit);
	}
	if(instance_exists(_inst_naming_backspace)){
		instance_destroy(_inst_naming_backspace);
	}
	if(instance_exists(_inst_naming_done)){
		instance_destroy(_inst_naming_done);
	}
	//if(instance_exists(_inst_naming)){
		//instance_destroy(_inst_naming);
	//}
}

if(_menu==2){
	_inst_confirm_title=instance_create_depth(180,60,0,text_typer);
	_inst_confirm_title.text=_prefix+_confirm_title;
	_inst_confirm_no=instance_create_depth(146,400,0,text_typer);
	_inst_confirm_yes=instance_create_depth(460,400,0,text_typer);
	_inst_confirm_no.text=_prefix+GetString("str_menu_naming_no")
	_inst_confirm_yes.text=_prefix+GetString("str_menu_naming_yes")
	_confirm_name_x=280;
	_confirm_name_y=72;
	_confirm_name_scale=2;
	Anim_Destroy(id,"_confirm_name_x");
	Anim_Destroy(id,"_confirm_name_y");
	Anim_Destroy(id,"_confirm_name_scale");
	Anim_Create(id,"_confirm_name_x",0,0,280,-80,270);
	Anim_Create(id,"_confirm_name_y",0,0,72,158,270);
	Anim_Create(id,"_confirm_name_scale",0,0,2,5,270);
	_choice_confirm=0;
	with(text_typer){
		event_user(15);
	}
	event_user(5);
}else{
	if(instance_exists(_inst_confirm_title)){
		instance_destroy(_inst_confirm_title);
	}
	if(instance_exists(_inst_confirm_no)){
		instance_destroy(_inst_confirm_no);
	}
	if(instance_exists(_inst_confirm_yes)){
		instance_destroy(_inst_confirm_yes);
	}
}

if(_menu==3){
	fader.color=c_white;
	Fader_Fade(-1,1,240);
	alarm[0]=240;
}