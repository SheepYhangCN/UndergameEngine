if(!changing){
	draw_set_font(font_dialog)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text_scribble(320,360,GameSelectionGetInfo(choice)[0])
	if(phases>0){
	draw_set_halign(fa_right)
	draw_text_scribble(320,432.5,GameSelectionGetInfo(choice)[5+phase])
	draw_set_halign(fa_middle)
	}
}
if(gameobj.selected){var a=1}else{var a=0}
if(sprite_exists(GameSelectionGetInfo(choice-1)[1])){with(gameobj_previous){draw_sprite_ext(GameSelectionGetInfo(obj_game_selection.choice-1)[1],a,x,y,GameSelectionGetInfo(obj_game_selection.choice-1)[2]*image_xscale,GameSelectionGetInfo(obj_game_selection.choice-1)[2]*image_yscale,0,c_white,image_alpha)}}
if(sprite_exists(GameSelectionGetInfo(choice)[1])){with(gameobj){draw_sprite_ext(GameSelectionGetInfo(obj_game_selection.choice)[1],a,x,y,GameSelectionGetInfo(obj_game_selection.choice)[2]*image_xscale,GameSelectionGetInfo(obj_game_selection.choice)[2]*image_yscale,0,c_white,image_alpha)}}
if(sprite_exists(GameSelectionGetInfo(choice+1)[1])){with(gameobj_next){draw_sprite_ext(GameSelectionGetInfo(obj_game_selection.choice+1)[1],a,x,y,GameSelectionGetInfo(obj_game_selection.choice+1)[2]*image_xscale,GameSelectionGetInfo(obj_game_selection.choice+1)[2]*image_yscale,0,c_white,image_alpha)}}

draw_set_halign(fa_left)
draw_set_valign(fa_top)