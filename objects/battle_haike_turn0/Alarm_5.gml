///@desc board swing
if(!bstemp){
	if(bsangle<bsmax){
		bsangle+=(bsmax/135)
	}else{
		bstemp=true
	}
}
if(bstemp){
	if(bsangle>-bsmax){
		bsangle-=(bsmax/135)
	}else{
		bstemp=false
	}
}

bsbone.angle=bsangle+90
bsbone.x=320+lengthdir_x(80,bsangle-90)
bsbone.y=lengthdir_y(80,bsangle-90)

battle_board.angle=bsangle+45
battle_board.x=320+lengthdir_x(240,bsangle-90)
battle_board.y=lengthdir_y(240,bsangle-90)
board.angle=battle_board.angle
board.x=battle_board.x
board.y=battle_board.y
alarm[5]=1