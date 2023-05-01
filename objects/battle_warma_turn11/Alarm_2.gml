///@descr flying luotuo
audio_play_sound(snd_bone_out,0,0)
Battle_MakeFriendlyPellet(640+32,random_range(320-64-15,320+64+15),640+32,random_range(320-64-15,320+64+15),0,1,1,-4.5,0,180,0,false,battle_bullet_friendlypellet,spr_knife).depth=DEPTH_BATTLE.BULLET
alarm[2]=7