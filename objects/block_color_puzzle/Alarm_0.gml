///@descr 退后

/*with(char_player){
if(Input_IsHeld(INPUT.UP)&&!Input_IsHeld(INPUT.DOWN)){
	move[DIR.UP]=-20
}
if(Input_IsHeld(INPUT.DOWN)&&!Input_IsHeld(INPUT.UP)){
	move[DIR.DOWN]=-20
}
if(Input_IsHeld(INPUT.LEFT)&&!Input_IsHeld(INPUT.RIGHT)){
	move[DIR.LEFT]=-20
}
if(Input_IsHeld(INPUT.RIGHT)&&!Input_IsHeld(INPUT.LEFT)){
	move[DIR.RIGHT]=-20
}}*/

if((place_meeting(x+20,y,block_color_puzzle)&&!instance_place(x+20,y,block_color_puzzle).image_blend=c_blue&&!instance_place(x+20,y,block_color_puzzle).image_blend=c_yellow&&!instance_place(x+20,y,block_color_puzzle).image_blend=c_orange&&!instance_place(x+20,y,block_color_puzzle).image_blend=c_red)||(!place_meeting(x+20,y,block_color_puzzle)&&!place_meeting(x+20,y,block))){char_player.dir=DIR.LEFT}
if((place_meeting(x-20,y,block_color_puzzle)&&!instance_place(x-20,y,block_color_puzzle).image_blend=c_blue&&!instance_place(x-20,y,block_color_puzzle).image_blend=c_yellow&&!instance_place(x-20,y,block_color_puzzle).image_blend=c_orange&&!instance_place(x-20,y,block_color_puzzle).image_blend=c_red)||(!place_meeting(x-20,y,block_color_puzzle)&&!place_meeting(x-20,y,block))){char_player.dir=DIR.RIGHT}
if((place_meeting(x,y+20,block_color_puzzle)&&!instance_place(x,y+20,block_color_puzzle).image_blend=c_blue&&!instance_place(x,y+20,block_color_puzzle).image_blend=c_yellow&&!instance_place(x,y+20,block_color_puzzle).image_blend=c_orange&&!instance_place(x,y+20,block_color_puzzle).image_blend=c_red)||(!place_meeting(x,y+20,block_color_puzzle)&&!place_meeting(x,y+20,block))){char_player.dir=DIR.UP}
if((place_meeting(x,y-20,block_color_puzzle)&&!instance_place(x,y-20,block_color_puzzle).image_blend=c_blue&&!instance_place(x,y-20,block_color_puzzle).image_blend=c_yellow&&!instance_place(x,y-20,block_color_puzzle).image_blend=c_orange&&!instance_place(x,y-20,block_color_puzzle).image_blend=c_red)||(!place_meeting(x,y-20,block_color_puzzle)&&!place_meeting(x,y-20,block))){char_player.dir=DIR.DOWN}

moving=true
if(char_player.dir=DIR.LEFT){
Anim_Create(char_player,"x",0,0,char_player.x,20,10)}
if(char_player.dir=DIR.RIGHT){
Anim_Create(char_player,"x",0,0,char_player.x,-20,10)}
if(char_player.dir=DIR.UP){
Anim_Create(char_player,"y",0,0,char_player.y,20,10)}
if(char_player.dir=DIR.DOWN){
Anim_Create(char_player,"y",0,0,char_player.y,-20,10)}

if(char_player.dir=DIR.UP){char_player.dir=DIR.DOWN}else
if(char_player.dir=DIR.DOWN){char_player.dir=DIR.UP}else
if(char_player.dir=DIR.LEFT){char_player.dir=DIR.RIGHT}else
if(char_player.dir=DIR.RIGHT){char_player.dir=DIR.LEFT}

alarm[3]=12
