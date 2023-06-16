var b=Battle_MakeBoneTop(320-96,106/2+24,1.75,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
Anim_Create(b,"y",0,0,b.y,-12,15,15)
var b=Battle_MakeBoneBottom(320-96,106/2-24,1.75,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
Anim_Create(b,"y",0,0,b.y,12,15,15)
var b=Battle_MakeBoneTop(320+96,106/2+24,-1.75,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
Anim_Create(b,"y",0,0,b.y,-12,15,15)
var b=Battle_MakeBoneBottom(320+96,106/2-24,-1.75,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
Anim_Create(b,"y",0,0,b.y,12,15,15)
count+=1
if(count=4){
	alarm[1]=90
}else{
	alarm[0]=90
}