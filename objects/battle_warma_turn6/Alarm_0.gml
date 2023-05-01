with(battle_board){
var uup=choose(1,2)
if(uup=1&&up<64+20){
Anim_Create(id,"up",0,0,up,10,30)
}
if(uup=2&&up>64-20){
Anim_Create(id,"up",0,0,up,-10,30)
}
var ddn=choose(1,2)
if(ddn=1&&down<64+20){
Anim_Create(id,"down",0,0,down,10,30)
}
if(ddn=2&&down>64-20){
Anim_Create(id,"down",0,0,down,-10,30)
}
var xx=choose(1,2)
if(xx=1&&x<320+20){
Anim_Create(id,"x",0,0,x,10,30)
}
if(xx=2&&x>320-20){
Anim_Create(id,"x",0,0,x,-10,30)
}
var yy=choose(1,2)
if(yy=1&&y<320){
Anim_Create(id,"y",0,0,y,10,30)
}
if(yy=2&&y>320-30){
Anim_Create(id,"y",0,0,y,-10,30)
}
}
alarm[0]=31