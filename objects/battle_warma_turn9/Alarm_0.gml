var r=random(360)
var xx=battle_soul.x+lengthdir_x(200,r)
var yy=battle_soul.y+lengthdir_y(200,r)
var a=Battle_MakeLineBomb(xx,yy,r,20,1,0,1,1,10,45,10,10)
a.sprite_index=spr_rabbit_bomb
alarm[0]=50