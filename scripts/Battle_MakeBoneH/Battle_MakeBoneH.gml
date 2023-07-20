///@arg x,y,length,hspeed,vspeed,type,out,rotate,auto_destroy,*duration,*obj,*spr
function Battle_MakeBoneH(){
	var OBJ = battle_bullet_bone
    var X = argument[0]
    var Y = argument[1]
    var LENGTH = argument[2]
    var HSPEED = argument[3]
    var VSPEED = argument[4]
    var COLOR = argument[5]
    var OUT = argument[6]
    var ROT = argument[7]
    var DESTROY = argument[8]
    var DURATION = -1
    if (argument_count >= 10)
        DURATION = argument[9]
    if (argument_count >= 11)
        OBJ = argument[10]
    var bone = instance_create_depth(X, Y, 0, OBJ)
    bone.length = LENGTH
    bone.hspeed = HSPEED
    bone.vspeed = VSPEED
    bone.type = COLOR
    bone.out = OUT
    bone.rotate = ROT
    bone.auto_destroy = DESTROY
    bone.angle = (0 << 0)
    bone.duration = DURATION
    if (argument_count >= 12)
        bone.sprite_index = argument[11]
    return bone;
}