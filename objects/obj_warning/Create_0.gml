audio_play_sound(snd_ding,0,0)
temp=0
dialog=instance_create_depth(135+(IsChs() ? 35 : 0),10,0,text_typer)
dialog.text=GetString("str_warning_title")
dialog1=instance_create_depth(40+(IsChs() ? 35 : 0),60,0,text_typer)
dialog1.text=GetString("str_warning")
dialog2=instance_create_depth(180+(IsChs() ? 20 : 0),440,0,text_typer)
dialog2.text=GetString("str_warning_press")