instance_destroy(a)
_sin += 0.08
a=instance_create_depth(80 + sin(_sin)*3,365 + cos(_sin)*3,0,text_typer)
//a=instance_create_depth(random_range(79,81),random_range(359,361),0,text_typer)
if(current_month>=3&&current_month<=5){
	a.text=GetString("str_settings_season_spring")
}
if(current_month>=6&&current_month<=8){
	a.text=GetString("str_settings_season_summer")
}
if(current_month>=9&&current_month<=11){
	a.text=GetString("str_settings_season_autumn")
}
if(current_month=12||current_month<=2){
	a.text=GetString("str_settings_season_winter")
}
alarm[0]=1