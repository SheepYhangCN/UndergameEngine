Battle_MakeLineBomb(battle_board.x,battle_board.y-battle_board.up-50,90,45,0,0,1,1,10,40,10,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
var a=choose(0,1)
if(a=0){
Battle_MakeLineBomb(battle_board.x+48,battle_board.y-battle_board.up-50,90,45,0,0,1,1,10,40,10,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
}
if(a=1){
Battle_MakeLineBomb(battle_board.x-48,battle_board.y-battle_board.up-50,90,45,0,0,1,1,10,40,10,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
}
alarm[1]=100