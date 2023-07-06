if(battle_soul._inv<=0&&!Anim_IsExists(id)){
	audio_play_sound(snd_graze, 0, false)
	image_alpha = 1
	Anim_Create(id, "image_alpha", 0, 0, 1, -1, 10)
	if(battle.tp_value<100){battle.tp_value += 1}
}