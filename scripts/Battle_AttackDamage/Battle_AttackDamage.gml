///@arg enemy,hp_max,hp_current,*shake,*damage
function Battle_AttackDamage(){
	audio_play_sound(snd_damage,0,0);
	if(argument_count>4){Battle_SetMenuFightDamage(argument[4])}
	var inst=argument[0]
	var	attack_damage = instance_create_depth(inst.x,inst.y-30,0,battle_damage);
	attack_damage.bar_hp_max = argument[1];
	attack_damage.bar_hp_original = argument[2];
	attack_damage.damage = Battle_GetMenuFightDamage();
	var hp_target=argument[2]-Battle_GetMenuFightDamage()
	attack_damage.bar_hp_target = (hp_target>=0 ? hp_target : 0)
	inst._hp=attack_damage.bar_hp_target
	if(argument_count>3&&argument[3]=true){
		var a = instance_create_depth(0,0,0,shaker);
		a.target = inst;
		a.var_name = "x";
		a.shake_distance = 20;
		a.shake_speed = 3;
		a.shake_random = 0;
		a.shake_decrease = 10;
		}
	return attack_damage
}
