if(global.mode=GAME_MODE.HARD){empty=55}else{empty=65}
var a=Battle_MakeBoneTop(battle_board.x-64,basey-(battle_board.y-64),3,0,0,0,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
a.aaaa=true
var a=Battle_MakeBoneBottom(battle_board.x-64,battle_board.y+64-basey-empty,3,0,0,0,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
a.aaaa=true

//Battle_MakeBoneLeft(battle_board.y-64,basex-(battle_board.x-64),2,0,0,0,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)
//Battle_MakeBoneRight(battle_board.y-64,battle_board.x+64-basex-empty,2,0,0,0,1,-1,battle_bullet_bone,spr_bone_body,spr_luotuo_end)

if(temp=0){
basey+=5}
if(temp=1){
basey-=5}

if(temp1=0){
basex+=5}
if(temp1=1){
basex-=5}

if(basey>=310){
temp=1}
if(basey<=290){
temp=0}

if(basex>=310){
temp1=1}
if(basex<=290){
temp1=0}

alarm[0]=8