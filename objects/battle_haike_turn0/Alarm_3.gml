///@desc platform&board
with(platform){
	if(angle>=25&&!atemp){atemp=true}
	if(angle>-25&&atemp){angle-=0.75}
	if(angle<=-25&&atemp){atemp=false}
	if(angle<25&&!atemp){angle+=0.75}
}
battle_board.x+=0.5
battle_board.angle+=1
alarm[3]=1