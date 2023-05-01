Anim_Create(id,"image_alpha",0,0,0,1,spawn_time)
Anim_Create(id,"image_xscale",ANIM_TWEEN.BACK,ANIM_EASE.OUT,image_xscale/4,image_xscale/4*3,spawn_time)
Anim_Create(id,"image_yscale",ANIM_TWEEN.BACK,ANIM_EASE.OUT,image_yscale/4,image_yscale/4*3,spawn_time)
Anim_Create(id,"image_xscale",0,0,image_xscale,-image_xscale/6,5,spawn_time+wait_time-10)
Anim_Create(id,"image_yscale",0,0,image_yscale,-image_yscale/6,5,spawn_time+wait_time-10)
Anim_Create(id,"image_xscale",0,0,image_xscale,image_xscale/6+image_xscale/6,5,spawn_time+wait_time-5)
Anim_Create(id,"image_yscale",0,0,image_yscale,image_yscale/6+image_xscale/6,5,spawn_time+wait_time-5)
alarm[2]=spawn_time+wait_time