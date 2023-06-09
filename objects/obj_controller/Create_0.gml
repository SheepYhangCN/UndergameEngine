choice=0
temp=0

title=instance_create_depth(140,100,0,text_typer)
keyboard=instance_create_depth(170,220,0,text_typer)
controller_n=instance_create_depth(170,255,0,text_typer)
controller_x=instance_create_depth(170,290,0,text_typer)
prefix=GetString("str_controller_prefix")
title.text=prefix+GetString("str_controller_title")
keyboard.text=prefix+"{color `yellow`}"+GetString("str_controller_keyboard")
controller_n.text=prefix+GetString("str_controller_n")
controller_x.text=prefix+GetString("str_controller_x")