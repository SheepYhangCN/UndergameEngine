x=room_width;
y=room_height/3;

image_xscale=0.4;
image_yscale=0.4;

fader.alpha=0;
Anim_Destroy(fader);
audio_play_sound(snd_logo,0,false);
pressed=false;
BattlePassed(BATTLE.POYOROID);

var a=instance_create_depth(60,160,depth,text_typer);
a.text="{instant true}{font 0}{scale 2}"+GetString("str_poyoroid_end");
var a=instance_create_depth(200,440,0,text_typer);
a.text=GetString("str_warning_press");