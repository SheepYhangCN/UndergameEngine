dialog1=instance_create_depth((page=1 ? 60 : (page=2 ? 40 : 70))+(IsChs() ? 10 : 0),70+(IsChs() ? -10 : 0),0,text_typer)
dialog1.text=GetString("str_credits"+string(page))
dialog3=instance_create_depth(450+(IsChs() ? 30 : 0),20,0,text_typer)
dialog3.text=GetString("str_credits_page")