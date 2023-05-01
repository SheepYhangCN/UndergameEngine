///@descr aim gb
var r=random(360)
var _x=battle_soul.x+lengthdir_x(500,r)
var _y=battle_soul.y+lengthdir_y(500,r)
var _xx=battle_soul.x+lengthdir_x(60,r)
var _yy=battle_soul.y+lengthdir_y(60,r)
Battle_MakeBlaster(_x,_y,_xx,_yy,r-90,r-90,30,1,2,10,20,0)
r=r+90
_x=battle_soul.x+lengthdir_x(500,r)
_y=battle_soul.y+lengthdir_y(500,r)
_xx=battle_soul.x+lengthdir_x(60,r)
_yy=battle_soul.y+lengthdir_y(60,r)
Battle_MakeBlaster(_x,_y,_xx,_yy,r-90,r-90,30,1,2,10,20,0)
alarm[2]=120