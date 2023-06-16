if(place_meeting(x,y,battle_soul)){
	Battle_CallSoulEventBulletCollision();
}
if(place_meeting(x,y,battle_soul_graze)){
	with(battle_soul_graze){event_user(0)}
}