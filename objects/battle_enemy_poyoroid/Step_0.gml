window_set_caption(GetString("str_poyoroid_caption"))
global.battle=BATTLE.POYOROID

if(!tailt){
	if(tail_angle<5){
			tail_angle+=0.2
		}else{
			tailt=true
		}
}
if(tailt){
	if(tail_angle>-5){
			tail_angle-=0.2
		}else{
			tailt=false
		}
}