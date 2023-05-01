    var X = battle_board.x-120
    var LENGTH = 80
    var HSPEED = 3
    var COLOR = 0
    var OUT = 0
    var ROT = 0
    var DESTROY = 1
    var DURATION = -1
	var OBJ=battle_bullet_bone
	var SPR_BODY=spr_bone_body
	var SPR_END=spr_luotuo_end
	Battle_MakeBoneV(X, (((battle_board.y + battle_board.down + 40) - (LENGTH / 2)) - 5), LENGTH, HSPEED, 0, COLOR, OUT, ROT, DESTROY, DURATION,OBJ,SPR_BODY,SPR_END)

    var X = battle_board.x+120
    var LENGTH = 80
    var HSPEED = -3
    var COLOR = 0
    var OUT = 0
    var ROT = 0
    var DESTROY = 1
    var DURATION = -1
	var OBJ=battle_bullet_bone
	var SPR_BODY=spr_bone_body
	var SPR_END=spr_luotuo_end
	Battle_MakeBoneV(X, (((battle_board.y + battle_board.down + 40) - (LENGTH / 2)) - 5), LENGTH, HSPEED, 0, COLOR, OUT, ROT, DESTROY, DURATION,OBJ,SPR_BODY,SPR_END)
	
    var X = battle_board.x-120
    var LENGTH = 40
    var HSPEED = 3
    var COLOR = 0
    var OUT = 0
    var ROT = 0
    var DESTROY = 1
    var DURATION = -1
	var OBJ=battle_bullet_bone
	var SPR_BODY=spr_bone_body
	var SPR_END=spr_luotuo_end
    var bone = Battle_MakeBoneV(X, (((battle_board.y - battle_board.up - 20) + (LENGTH / 2)) + 5), LENGTH, HSPEED, 0, COLOR, OUT, ROT, DESTROY, DURATION,OBJ,SPR_BODY,SPR_END)
	bone.angle+=180
	
    var X = battle_board.x+120
    var LENGTH = 40
    var HSPEED = -3
    var COLOR = 0
    var OUT = 0
    var ROT = 0
    var DESTROY = 1
    var DURATION = -1
	var OBJ=battle_bullet_bone
	var SPR_BODY=spr_bone_body
	var SPR_END=spr_luotuo_end
    var bone = Battle_MakeBoneV(X, (((battle_board.y - battle_board.up - 20) + (LENGTH / 2)) + 5), LENGTH, HSPEED, 0, COLOR, OUT, ROT, DESTROY, DURATION,OBJ,SPR_BODY,SPR_END)
	bone.angle+=180
alarm[1]=70