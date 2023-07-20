event_inherited();
angle+=rotate
if(auto_destroy=true&&length=0){instance_destroy()}

image_angle=angle-90
var nineslide=sprite_get_nineslice(sprite_index)
image_yscale=(length+(sprite_get_height(sprite_index)-(nineslide.top+nineslide.bottom)))/sprite_get_height(sprite_index)