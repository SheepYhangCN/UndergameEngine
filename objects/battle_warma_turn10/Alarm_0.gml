var a=Battle_MakeBoneBottom(battle_board.x-70,20+random_range(-10,10),0,0,0,0,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
var b=Battle_MakeBoneTop(battle_board.x-70,40+random_range(-10,10),0,0,0,0,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
var c=Battle_MakeBoneBottom(battle_board.x+70,20+random_range(-10,10),0,0,0,0,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
var d=Battle_MakeBoneTop(battle_board.x+70,40+random_range(-10,10),0,0,0,0,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
Anim_Create(a,"x",0,0,a.x,+20,15)
Anim_Create(b,"x",0,0,b.x,+20,15)
Anim_Create(c,"x",0,0,c.x,-20,15)
Anim_Create(d,"x",0,0,d.x,-20,15)

Anim_Create(a,"hspeed",0,0,2.5,2.5,1,60)
Anim_Create(b,"hspeed",0,0,2.5,2.5,1,60)
Anim_Create(c,"hspeed",0,0,-2.5,-2.5,1,60)
Anim_Create(d,"hspeed",0,0,-2.5,-2.5,1,60)
alarm[0]=90