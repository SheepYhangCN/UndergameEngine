///@descr aim knife
var r=random(360)
var _x=battle_soul.x+lengthdir_x(500,r)
var _y=battle_soul.y+lengthdir_y(500,r)
var _xx=battle_soul.x+lengthdir_x(120,r)
var _yy=battle_soul.y+lengthdir_y(120,r)
Battle_MakeFriendlyPellet(_x,_y,_xx,_yy,0,30,20,12,r+180,r+180,1,true,battle_bullet_friendlypellet,spr_knife)
r=r+90
_x=battle_soul.x+lengthdir_x(500,r)
_y=battle_soul.y+lengthdir_y(500,r)
_xx=battle_soul.x+lengthdir_x(120,r)
_yy=battle_soul.y+lengthdir_y(120,r)
Battle_MakeFriendlyPellet(_x,_y,_xx,_yy,0,30,20,12,r+180,r+180,1,true,battle_bullet_friendlypellet,spr_knife)
alarm[3]=90