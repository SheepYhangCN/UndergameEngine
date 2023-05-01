battle_enemy_sans_core.visible=false
var a=instance_create_depth(battle_enemy_sans_core.bodyx,battle_enemy_sans_core.bodyy,-203,battle_death_particle)
a.sprite=spr_sans_almost_dead_core
audio_play_sound(snd_vaporize,1,0)
alarm[4]=60