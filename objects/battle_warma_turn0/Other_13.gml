battle_enemy_warma.bgm=audio_play_sound(bgm_warma,0,1)
battle_enemy_warma.alarm[2]=1
if(IsEng()){Battle_SetMenuDialog("* She just standing there.")}
if(IsChs()){Battle_SetMenuDialog("* 她就站在那里。")}
battle_enemy_warma.bg=instance_create_depth(0,480,DEPTH_BATTLE.BG,battle_bg)
battle_enemy_warma.bg.image_blend=c_yellow
battle_enemy_warma.bg.image_yscale=0
battle_enemy_warma.bg.tempscale=-1.5
battle_enemy_warma.bg.alarm[2]=63
Anim_Create(battle_enemy_warma.bg,"image_yscale",0,0,0,-1.5,60,2)
Anim_Create(battle_enemy_warma.bg,"tempscale",0,0,-1.5,0,1,60)
event_inherited()