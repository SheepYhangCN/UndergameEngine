///@descr bone
if(global.mode=GAME_MODE.HARD){var empty=42}else{var empty=48}

	var X = battle_board.x+320
    var LENGTH = basey-(320-64)+15
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

    var X = battle_board.x+320
    var LENGTH = 320+64-basey-empty+15
    var HSPEED = -3.5
    var COLOR = 0
    var OUT = 0
    var ROT = 0
    var DESTROY = 1
    var DURATION = -1
	var OBJ=battle_bullet_bone
	var SPR_BODY=spr_bone_body
	var SPR_END=spr_luotuo_end
	var bone = Battle_MakeBoneV(X, (((320 + 64+15) - (LENGTH / 2)) - 5), LENGTH, HSPEED, 0, COLOR, OUT, ROT, DESTROY, DURATION,OBJ,SPR_BODY,SPR_END)
	
if(temp1=0){
basey+=5}
if(temp1=1){
basey-=5}

if(basey>=320){
temp1=1}
if(basey<=280){
temp1=0}

alarm[4]=6