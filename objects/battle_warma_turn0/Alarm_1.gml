var r=random(360)
Battle_MakeLineBomb(battle_soul.x+lengthdir_x(100,r),battle_soul.y+lengthdir_y(100,r),r,(global.mode=GAME_MODE.HARD ? 25 : 15),0,0,0.5,0.5,10,50,10,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
Battle_MakeLineBomb(battle_soul.x-lengthdir_x(100,r),battle_soul.y-lengthdir_y(100,r),r,(global.mode=GAME_MODE.HARD ? 25 : 15),0,0,0.5,0.5,10,50,10,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
r+=90
Battle_MakeLineBomb(battle_soul.x+lengthdir_x(100,r),battle_soul.y+lengthdir_y(100,r),r,(global.mode=GAME_MODE.HARD ? 25 : 15),0,0,0.5,0.5,10,50,10,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
Battle_MakeLineBomb(battle_soul.x-lengthdir_x(100,r),battle_soul.y-lengthdir_y(100,r),r,(global.mode=GAME_MODE.HARD ? 25 : 15),0,0,0.5,0.5,10,50,10,10,true,battle_bullet_line_bomb,spr_rabbit_bomb)
alarm[1]=80