///@arg x*,y*,obj*,angle*,type*,width*,warning_time*,knife_time*,*hit_damage
function Battle_MakeKnife_NMD(){
var _x=random_range(0,room_width)
var _y=random_range(0,room_height)
var obj=battle_bullet_warning_knife
if(argument_count>0){
_x=argument[0]}
if(argument_count>1){
_y=argument[1]}
if(argument_count>2){
obj=argument[2]}

var a=Battle_MakeDtKnife(_x,_y,obj)

if(argument_count>3){
a.image_angle=argument[3]}
if(argument_count>4){
a.type=argument[4]}
if(argument_count>5){
a.width=argument[5]}else{a.width=5}
if(argument_count>6){
a.warning_time=argument[6]}
if(argument_count>7){
a.knife_time=argument[7]}
if(argument_count>8){
a.hit_damage=argument[8]}else{a.hit_damage=25}

//with(chara_body_hand){instance_destroy()}
var inst=instance_create_depth(0,0,0,chara_body_hand)
inst.wait=a.warning_time
inst.count=instance_number(chara_body_hand)

return a
}