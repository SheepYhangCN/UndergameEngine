for(var a=-320;320+a<=640;a+=80){
	var b=Battle_MakeBoneTop(320+a,80,1,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
	Anim_Create(b,"y",0,0,b.y-b.length-20,b.length+20,30)
	b.y=b.y-b.length-20
}
for(var a=-320;320+a<=640;a+=160){
	var b=Battle_MakeBoneBottom(320+a,24,-1,0,0,0,1,-1,battle_bullet_bone,spr_poyoroid_tail_bone)
	Anim_Create(b,"y",0,0,b.y+b.length+20,-b.length-20,30)
	b.y=b.y+b.length+20
}