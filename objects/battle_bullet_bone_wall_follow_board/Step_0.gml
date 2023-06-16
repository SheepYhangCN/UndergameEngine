if(wall=DIR.UP){
	SPR_HEIGHT=sprite_get_width(SPR)+1
    ii = 0
    for (i = -3; i < ((battle_board.left + battle_board.right) + SPR_HEIGHT); i += SPR_HEIGHT)
    {
        ii += 1
		b[ii].length=length
		b[ii].PAUSE=PAUSE
		b[ii].DURATION=DURATION
		b[ii].angle=battle_board.angle+90+180
		b[ii].i=i
		b[ii].board_x=board_x
		b[ii].board_y=board_y
        with (b[ii])
        {
			if(!Anim_IsExists(id)){
			llength=point_distance(board_x,board_y,((board_x - battle_board.left) + i),(((board_y - battle_board.up) - (length / 2)) - 5)+length)
			aangle=point_direction(board_x,board_y,((board_x - battle_board.left) + i),(((board_y - battle_board.up) - (length / 2)) - 5)+length)
			x=battle_board.x+lengthdir_x(llength,battle_board.angle+90+(aangle-90))
			y=battle_board.y+lengthdir_y(llength,battle_board.angle+90+(aangle-90))
			}else{
			llength=point_distance(board_x,board_y,anim_x,anim_y)
			aangle=point_direction(board_x,board_y,anim_x,anim_y)
			x=battle_board.x+lengthdir_x(llength,battle_board.angle+90+(aangle-90))
			y=battle_board.y+lengthdir_y(llength,battle_board.angle+90+(aangle-90))
			}
        }
    }
}
if(wall=DIR.DOWN){
	SPR_HEIGHT=sprite_get_width(SPR)+1
    ii = 0
    for (i = -3; i < ((battle_board.left + battle_board.right) + SPR_HEIGHT); i += SPR_HEIGHT)
    {
        ii += 1
		b[ii].length=length
		b[ii].PAUSE=PAUSE
		b[ii].DURATION=DURATION
		b[ii].angle=battle_board.angle+90
		b[ii].i=i
		b[ii].board_x=board_x
		b[ii].board_y=board_y
        with (b[ii])
        {
			if(!Anim_IsExists(id)){
			llength=point_distance(board_x,board_y,((board_x - battle_board.left) + i), (((board_y + battle_board.down) + (length / 2)) + 5)-length)
			aangle=point_direction(board_x,board_y,((board_x - battle_board.left) + i), (((board_y + battle_board.down) + (length / 2)) + 5)-length)
			x=battle_board.x+lengthdir_x(llength,battle_board.angle+90+(aangle-90))
			y=battle_board.y+lengthdir_y(llength,battle_board.angle+90+(aangle-90))
			}else{
			llength=point_distance(board_x,board_y,anim_x,anim_y)
			aangle=point_direction(board_x,board_y,anim_x,anim_y)
			x=battle_board.x+lengthdir_x(llength,battle_board.angle+90+(aangle-90))
			y=battle_board.y+lengthdir_y(llength,battle_board.angle+90+(aangle-90))
			}
        }
    }
}
if(wall=DIR.LEFT){
	SPR_HEIGHT=sprite_get_width(SPR)+1
    ii = 0
    for (i = 0; i < ((battle_board.up + battle_board.down) + SPR_HEIGHT); i += SPR_HEIGHT)
    {
        ii += 1
		b[ii].length=length
		b[ii].PAUSE=PAUSE
		b[ii].DURATION=DURATION
		b[ii].angle=battle_board.angle
		b[ii].i=i
		b[ii].board_x=board_x
		b[ii].board_y=board_y
        with (b[ii])
        {
			if(!Anim_IsExists(id)){
			llength=point_distance(board_x,board_y,(((board_x - battle_board.left) - (length / 2)) - 5)+length, ((board_y - battle_board.up) + i))
			aangle=point_direction(board_x,board_y,(((board_x - battle_board.left) - (length / 2)) - 5)+length, ((board_y - battle_board.up) + i))
			x=battle_board.x+lengthdir_x(llength,battle_board.angle+90+(aangle-90))
			y=battle_board.y+lengthdir_y(llength,battle_board.angle+90+(aangle-90))
			}else{
			llength=point_distance(board_x,board_y,anim_x,anim_y)
			aangle=point_direction(board_x,board_y,anim_x,anim_y)
			x=battle_board.x+lengthdir_x(llength,battle_board.angle+90+(aangle-90))
			y=battle_board.y+lengthdir_y(llength,battle_board.angle+90+(aangle-90))
			}
        }
    }
}
if(wall=DIR.RIGHT){
	SPR_HEIGHT=sprite_get_width(SPR)+1
    ii = 0
    for (i = 0; i < ((battle_board.up + battle_board.down) + SPR_HEIGHT); i += SPR_HEIGHT)
    {
        ii += 1
		b[ii].length=length
		b[ii].PAUSE=PAUSE
		b[ii].DURATION=DURATION
		b[ii].angle=battle_board.angle+180
		b[ii].i=i
		b[ii].board_x=board_x
		b[ii].board_y=board_y
        with (b[ii])
        {
			if(!Anim_IsExists(id)){
			llength=point_distance(board_x,board_y,(((board_x + battle_board.right) + (length / 2)) + 5)-length, ((board_y - battle_board.up) + i))
			aangle=point_direction(board_x,board_y,(((board_x + battle_board.right) + (length / 2)) + 5)-length, ((board_y - battle_board.up) + i))
			x=battle_board.x+lengthdir_x(llength,battle_board.angle+90+(aangle-90))
			y=battle_board.y+lengthdir_y(llength,battle_board.angle+90+(aangle-90))
			}else{
			llength=point_distance(board_x,board_y,anim_x,anim_y)
			aangle=point_direction(board_x,board_y,anim_x,anim_y)
			x=battle_board.x+lengthdir_x(llength,battle_board.angle+90+(aangle-90))
			y=battle_board.y+lengthdir_y(llength,battle_board.angle+90+(aangle-90))
			}
        }
    }
}
if(wall=360){
	var ii=0
	dir=battle_board.angle
	repeat(360/dir_add){
	ii+=1
	b[ii].gap=gap
	b[ii].dir=dir
	b[ii].angle=dir+180
	b[ii].board_x=board_x
	b[ii].board_y=board_y
	with (b[ii]){
	if(!Anim_IsExists(id)){
	x = (battle_board.x + lengthdir_x(gap, dir))
	y = (battle_board.y + lengthdir_y(gap, dir))
	}else{
	llength=point_distance(board_x,board_y,anim_x,anim_y)
	aangle=point_direction(board_x,board_y,anim_x,anim_y)
	x=battle_board.x+lengthdir_x(llength,dir+aangle)
	y=battle_board.y+lengthdir_y(llength,dir+aangle)
	}}
	dir+=dir_add}
}

if(instance_exists(bonebox)){
	bonebox.x=battle_board.x
	bonebox.y=battle_board.y
}