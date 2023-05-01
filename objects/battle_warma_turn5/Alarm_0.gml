var angle=random_range(155,25)
Battle_MakeLineBomb(battle_soul.x+lengthdir_x(100,angle),battle_soul.y+lengthdir_y(100,angle),angle,(global.mode=GAME_MODE.HARD ? 30 : 25),1,0,1,1,10,40,10,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
Battle_MakeFriendlyPellet(battle_soul.x+lengthdir_x(400,angle+45),battle_soul.y+lengthdir_y(400,angle+45),battle_soul.x+lengthdir_x(150,angle+45),battle_soul.y+lengthdir_y(150,angle+45),0,20,20,12,angle+45+180,angle+45+180,1,true,battle_bullet_friendlypellet,spr_knife)
if(global.mode=GAME_MODE.HARD){alarm[0]=70}else{alarm[0]=80}