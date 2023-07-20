///@arg pause,length,duration,*type,*obj,*spr
function Battle_MakeBoneWallTop_FollowBoard(){
	o=instance_create_depth(0,0,0,battle_bullet_bone_wall_follow_board)
	with(o){
	wall=DIR.UP
    PAUSE = argument[0]
    length = argument[1]
    DURATION = argument[2]
    COLOR = (0 << 0)
	OBJ=battle_bullet_bone
	SPR=spr_bone
    if (argument_count >= 4)
        COLOR = argument[3]
    if (argument_count >= 5)
        OBJ = argument[4]
    if (argument_count >= 6)
        SPR = argument[5]
	SPR_HEIGHT=sprite_get_width(SPR)+1
    ii = 0
    for (i = -3; i < ((battle_board.left + battle_board.right) + SPR_HEIGHT); i += SPR_HEIGHT)
    {
        ii += 1
		if(DURATION!=-1){
        b[ii] = Battle_MakeBoneV(((battle_board.x - battle_board.left) + i), (((battle_board.y - battle_board.up) - (length / 2)) - 5), length, 0, 0, COLOR, 0, 0, 0, ((DURATION + (PAUSE * 2)) + 24),OBJ,SPR)
		}else{
		b[ii] = Battle_MakeBoneV(((battle_board.x - battle_board.left) + i), (((battle_board.y - battle_board.up) - (length / 2)) - 5), length, 0, 0, COLOR, 0, 0, 0, DURATION,OBJ,SPR)
		}
		b[ii].length=length
		b[ii].PAUSE=PAUSE
		b[ii].DURATION=DURATION
        with (b[ii])
        {
			anim_x=x
			anim_y=y
			angle+=180
            Anim_Create(id, "anim_y", 0, 0, y, length, 8, PAUSE)
			if(DURATION!=-1){
            Anim_Create(id, "anim_y", 0, 0, (y + length), ((-length) * 2), 16, ((16 + PAUSE) + DURATION))}
            a = instance_create_depth(0, 0, 0, shaker)
            a.target = id
            a.var_name = "x"
            a.shake_distance = 2
            a.shake_speed = 1
            a.shake_random = 0
            a.shake_decrease = 1
            a.delay = (PAUSE + 8)
        }
    }
    bonebox = instance_create_depth(0, 0, 0, bone_box)
	bonebox.length=length
	bonebox.dir=DIR.UP
    bonebox.duration = PAUSE
    bonebox.x1 = ((battle_board.x - battle_board.left) + 1)
    bonebox.y1 = (((battle_board.y - battle_board.up) + length) - 1)
    bonebox.x2 = ((battle_board.x + battle_board.right) - 2)
    bonebox.y2 = (battle_board.y - battle_board.up)
    audio_stop_sound(snd_exclamation)
    audio_play_sound(snd_exclamation, 0, false)
    return;
}}

///@arg pause,length,duration,*type,*obj,*spr
function Battle_MakeBoneWallBottom_FollowBoard(){
	o=instance_create_depth(0,0,0,battle_bullet_bone_wall_follow_board)
	with(o){
	wall=DIR.DOWN
	PAUSE = argument[0]
    length = argument[1]
    DURATION = argument[2]
    COLOR = (0 << 0)
	OBJ=battle_bullet_bone
	SPR=spr_bone
    if (argument_count >= 4)
        COLOR = argument[3]
    if (argument_count >= 5)
        OBJ = argument[4]
    if (argument_count >= 6)
        SPR = argument[5]
	SPR_HEIGHT=sprite_get_width(SPR)+1
    ii = 0
    for (i = -3; i < ((battle_board.left + battle_board.right) + SPR_HEIGHT); i += SPR_HEIGHT)
    {
        ii += 1
		if(DURATION!=-1){
        b[ii] = Battle_MakeBoneV(((battle_board.x - battle_board.left) + i), (((battle_board.y + battle_board.down) + (length / 2)) + 5), length, 0, 0, COLOR, 0, 0, 0, ((DURATION + (PAUSE * 2)) + 24),OBJ,SPR)
		}else{
		b[ii] = Battle_MakeBoneV(((battle_board.x - battle_board.left) + i), (((battle_board.y + battle_board.down) + (length / 2)) + 5), length, 0, 0, COLOR, 0, 0, 0, DURATION,OBJ,SPR)
		}
		b[ii].length=length
		b[ii].PAUSE=PAUSE
		b[ii].DURATION=DURATION
        with (b[ii])
        {
			anim_x=x
			anim_y=y
            Anim_Create(id, "anim_y", 0, 0, y, (-length), 8, PAUSE)
			if(DURATION!=-1){
            Anim_Create(id, "anim_y", 0, 0, (y - length), (length * 2), 16, ((16 + PAUSE) + DURATION))}
            a = instance_create_depth(0, 0, 0, shaker)
            a.target = id
            a.var_name = "x"
            a.shake_distance = 2
            a.shake_speed = 1
            a.shake_random = 0
            a.shake_decrease = 1
            a.delay = (PAUSE + 8)
        }
    }
    bonebox = instance_create_depth(0, 0, 0, bone_box)
	bonebox.length=length
	bonebox.dir=DIR.DOWN
    bonebox.duration = PAUSE
    bonebox.x1 = ((battle_board.x - battle_board.left) + 1)
	bonebox.y1 = (((battle_board.y + battle_board.down) - length) + 1)
    bonebox.x2 = ((battle_board.x + battle_board.right) - 2)
    bonebox.y2 = ((battle_board.y + battle_board.down) - 2)
    audio_stop_sound(snd_exclamation)
    audio_play_sound(snd_exclamation, 0, false)
    return;
}}

///@arg pause,length,duration,*type,*obj,*spr
function Battle_MakeBoneWallLeft_FollowBoard(){
	o=instance_create_depth(0,0,0,battle_bullet_bone_wall_follow_board)
	with(o){
	wall=DIR.LEFT
    PAUSE = argument[0]
    length = argument[1]
    DURATION = argument[2]
    COLOR = (0 << 0)
	OBJ=battle_bullet_bone
	SPR=spr_bone
    if (argument_count >= 4)
        COLOR = argument[3]
    if (argument_count >= 5)
        OBJ = argument[4]
    if (argument_count >= 6)
        SPR = argument[5]
	SPR_HEIGHT=sprite_get_width(SPR)+1
    ii = 0
    for (i = 0; i < ((battle_board.up + battle_board.down) + SPR_HEIGHT); i += SPR_HEIGHT)
    {
        ii += 1
		if(DURATION!=-1){
        b[ii] = Battle_MakeBoneH((((battle_board.x - battle_board.left) - (length / 2)) - 5), ((battle_board.y - battle_board.up) + i), length, 0, 0, COLOR, 0, 0, 0, ((DURATION + (PAUSE * 2)) + 24),OBJ,SPR)
		}else{
		b[ii] = Battle_MakeBoneH((((battle_board.x - battle_board.left) - (length / 2)) - 5), ((battle_board.y - battle_board.up) + i), length, 0, 0, COLOR, 0, 0, 0, DURATION,OBJ,SPR)
		}
		b[ii].length=length
		b[ii].PAUSE=PAUSE
		b[ii].DURATION=DURATION
		with (b[ii])
        {
			anim_x=x
			anim_y=y
            Anim_Create(id, "anim_x", 0, 0, x, length, 8, PAUSE)
			if(DURATION!=-1){
            Anim_Create(id, "anim_x", 0, 0, (x + length), ((-length) * 2), 16, ((16 + PAUSE) + DURATION))}
            a = instance_create_depth(0, 0, 0, shaker)
            a.target = id
            a.var_name = "y"
            a.shake_distance = 2
            a.shake_speed = 1
            a.shake_random = 0
            a.shake_decrease = 1
            a.delay = (PAUSE + 8)
        }
    }
    bonebox = instance_create_depth(0, 0, 0, bone_box)
	bonebox.length=length
	bonebox.dir=DIR.LEFT
    bonebox.duration = PAUSE
    bonebox.x1 = ((battle_board.x - battle_board.left) + 1)
    bonebox.y1 = ((battle_board.y - battle_board.up) + 1)
    bonebox.x2 = (((battle_board.x - battle_board.left) + length) - 2)
    bonebox.y2 = ((battle_board.y + battle_board.down) - 2)
    audio_stop_sound(snd_exclamation)
    audio_play_sound(snd_exclamation, 0, false)
    return;
}}

///@arg pause,length,duration,*type,*obj,*spr
function Battle_MakeBoneWallRight_FollowBoard(){
	o=instance_create_depth(0,0,0,battle_bullet_bone_wall_follow_board)
	with(o){
	wall=DIR.RIGHT
    PAUSE = argument[0]
    length = argument[1]
    DURATION = argument[2]
    COLOR = (0 << 0)
	OBJ=battle_bullet_bone
	SPR=spr_bone
    if (argument_count >= 4)
        COLOR = argument[3]
    if (argument_count >= 5)
        OBJ = argument[4]
    if (argument_count >= 6)
        SPR = argument[5]
	SPR_HEIGHT=sprite_get_width(SPR)+1
    ii = 0
    for (i = 0; i < ((battle_board.up + battle_board.down) + SPR_HEIGHT); i += SPR_HEIGHT)
    {
        ii += 1
		if(DURATION!=-1){
        b[ii] = Battle_MakeBoneH((((battle_board.x + battle_board.right) + (length / 2)) + 5), ((battle_board.y - battle_board.up) + i), length, 0, 0, COLOR, 0, 0, 0, ((DURATION + (PAUSE * 2)) + 24),OBJ,SPR)
		}else{
		b[ii] = Battle_MakeBoneH((((battle_board.x + battle_board.right) + (length / 2)) + 5), ((battle_board.y - battle_board.up) + i), length, 0, 0, COLOR, 0, 0, 0, DURATION,OBJ,SPR)
		}
		b[ii].length=length
		b[ii].PAUSE=PAUSE
		b[ii].DURATION=DURATION
        with (b[ii])
        {
			anim_x=x
			anim_y=y
			angle+=180
            Anim_Create(id, "anim_x", 0, 0, x, (-length), 8, PAUSE)
			if(DURATION!=-1){
            Anim_Create(id, "anim_x", 0, 0, (x - length), (length * 2), 16, ((16 + PAUSE) + DURATION))}
            a = instance_create_depth(0, 0, 0, shaker)
            a.target = id
            a.var_name = "y"
            a.shake_distance = 2
            a.shake_speed = 1
            a.shake_random = 0
            a.shake_decrease = 1
            a.delay = (PAUSE + 8)
        }
    }
    bonebox = instance_create_depth(0, 0, 0, bone_box)
	bonebox.length=length
	bonebox.dir=DIR.RIGHT
	bonebox.duration = PAUSE
    bonebox.x1 = ((battle_board.x + battle_board.right) - 1)
    bonebox.y1 = ((battle_board.y - battle_board.up) + 1)
    bonebox.x2 = ((battle_board.x + battle_board.right) - length)
    bonebox.y2 = ((battle_board.y + battle_board.down) - 2)
    audio_stop_sound(snd_exclamation)
    audio_play_sound(snd_exclamation, 0, false)
    return;
}}

///@arg bone_gap,gap_board,length,type,pause,*duration,*obj,*spr
function Battle_MakeBoneWallRound_FollowBoard(){
o=instance_create_depth(0,0,0,battle_bullet_bone_wall_follow_board)
with(o){
wall=360
obj = battle_bullet_bone
spr=spr_bone
duration = -1
dir=0
dir_add=argument[0]
gap=argument[1]
length=argument[2]
type=argument[3]
pause=argument[4]
if(argument_count>5){
duration=argument[5]}
if(argument_count>6){
obj=argument[6]}
if(argument_count>7){
spr=argument[7]}

ii=0
repeat(360/dir_add){
ii+=1
_x = (battle_board.x + lengthdir_x(gap, dir))
_y = (battle_board.y + lengthdir_y(gap, dir))

if(duration!=-1){
b[ii]=Battle_MakeBone(_x,_y,length,0,0,type,0,dir,0,0,((duration + (pause * 2)) + 24),obj,spr)
}else{
b[ii]=Battle_MakeBone(_x,_y,length,0,0,type,0,dir,0,0,duration,obj,spr)}
b[ii].gap=gap
b[ii].dir=dir
b[ii].length=length
b[ii].pause=pause
b[ii].duration=duration
b[ii]._x=_x
b[ii]._y=_y
with (b[ii])
        {
		anim_x=x
		anim_y=y
		angle+=180
		x=(battle_board.x + lengthdir_x(gap+length, dir))
		y=(battle_board.y + lengthdir_y(gap+length, dir))
        Anim_Create(id, "anim_x", 0, 0, x, _x-x, 16, pause)
        Anim_Create(id, "anim_y", 0, 0, y, _y-y, 16, pause)
		if(duration!=-1){
        Anim_Create(id, "anim_x", 0, 0, _x, (battle_board.x + lengthdir_x(gap+length, dir))-_x, 16, (16 + pause + duration))
        Anim_Create(id, "anim_y", 0, 0, _y, (battle_board.y + lengthdir_y(gap+length, dir))-_y, 16, (16 + pause + duration))
		}
        a = instance_create_depth(0, 0, 0, shaker)
        a.target = id
        a.var_name = "y"
        a.shake_distance = 2
        a.shake_speed = 1
        a.shake_random = 0
        a.shake_decrease = 1
        a.delay = (pause + 8)
        }
dir+=dir_add
}
bonebox = instance_create_depth(0, 0, 0, bone_box_round)
bonebox.duration = pause
bonebox.gap=gap-(length/2)
audio_stop_sound(snd_exclamation)
audio_play_sound(snd_exclamation, 0, false)
return;
}}