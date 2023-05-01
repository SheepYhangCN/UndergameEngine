///@descr up bone
    var X = 640
    var LENGTH = 50+15
    var HSPEED = -3.5
    var COLOR = 0
    var OUT = 0
    var ROT = 0
    var DESTROY = 1
    var DURATION = -1
	var OBJ=battle_bullet_bone
	var SPR_BODY=spr_bone_body
	var SPR_END=spr_luotuo_end
	var bone = Battle_MakeBoneV(X, (((320 - 64-15) + (LENGTH / 2)) + 5), LENGTH, HSPEED, 0, COLOR, OUT, ROT, DESTROY, DURATION,OBJ,SPR_BODY,SPR_END)
	bone.angle+=180
alarm[1]=25