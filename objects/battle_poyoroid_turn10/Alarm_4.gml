audio_play_sound(snd_exclamation,0,0);
var b=instance_create_depth(0,0,DEPTH_BATTLE.BULLET,bone_box);
b.x1=320-sprite_get_width(spr_louis_x_vi_toy)/2*3
b.x2=320+sprite_get_width(spr_louis_x_vi_toy)/2*3
b.y1=320-60
b.y2=320+60
b.duration=90;
var a=Battle_MakeFriendlyPellet(320,320-60-18*3,320,320-60-18*3,0,0,0,0,0,0,0,false,battle_bullet_friendlypellet,spr_louis_x_vi_toy)
a.image_xscale=3;
a.image_yscale=3;
a.depth=DEPTH_BATTLE.BULLET;
Anim_Create(a,"y",0,0,a.y,320+60-a.y,10,90);
Anim_Create(a,"y",0,0,320+60,a.y-(320+60),30,150);
alarm[5]=120;