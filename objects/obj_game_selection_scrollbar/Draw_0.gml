draw_set_color(c_white)
var proc=0;
var NUMBER=obj_game_selection.choice_max-obj_game_selection.choice_min+1
var CURRENT=obj_game_selection.choice-obj_game_selection.choice_min

repeat(NUMBER){
	if(proc=0){draw_rectangle(x-30*floor(NUMBER/2)+30*(proc+0.5)-1,y-6,x-30*floor(NUMBER/2)+30*(proc+0.5)+1,y+5,false)}
	if(proc=obj_game_selection.choice_mg-obj_game_selection.choice_min){draw_rectangle(x-30*floor(NUMBER/2)+30*(proc-0.5)-1,y-6,x-30*floor(NUMBER/2)+30*(proc-0.5)+1,y+5,false)}
	if(!(GameSelectionGetInfo(proc+obj_game_selection.choice_min)[3])){var c=c_gray}else{var c=c_white}
	draw_sprite_ext(spr_battle_menu_item_scrollbar_dot,proc==CURRENT,x-30*floor(NUMBER/2)+30*proc,y,1,1,0,c,1);
	proc+=1;
}

if(NUMBER>1){
	if(obj_game_selection.choice!=obj_game_selection.choice_min){
		draw_sprite_ext(spr_battle_menu_item_scrollbar_arrow,0,x-30*floor(NUMBER/2)-15-_arrow,y,1,1,90,c_white,1);
	}
	if(obj_game_selection.choice!=obj_game_selection.choice_max){
		draw_sprite_ext(spr_battle_menu_item_scrollbar_arrow,0,x-30*floor(NUMBER/2)+30*NUMBER-15+_arrow,y,1,-1,90,c_white,1);
	}
}

draw_set_halign(fa_right)
draw_set_valign(fa_middle)
if(obj_game_selection.choice=-1){
	if(IsEng()){draw_text_scribble(620,y+22,"[font_menu][scale,2](Shop)")}
	if(IsChs()){draw_text_scribble(620,y+22,"[font_dialog][scale,2]([font_chs]商店[font_dialog])")}
}else if(obj_game_selection.choice>=obj_game_selection.choice_mg){
	if(IsEng()){draw_text_scribble(620,y+22,"[font_menu][scale,2](Minigames "+string(obj_game_selection.choice-(obj_game_selection.choice_mg-1))+"/"+string(obj_game_selection.choice_max-obj_game_selection.choice_mg+1)+")")}
	if(IsChs()){draw_text_scribble(620,y+22,"[font_menu][scale,2]([font_chs]小游戏[font_menu] "+string(obj_game_selection.choice-(obj_game_selection.choice_mg-1))+"/"+string(obj_game_selection.choice_max-obj_game_selection.choice_mg+1)+")")}
}else{
	if(IsEng()){draw_text_scribble(620,y+22,"[font_menu][scale,2](Battles "+string(obj_game_selection.choice+1)+"/"+string(obj_game_selection.choice_mg)+")")}
	if(IsChs()){draw_text_scribble(620,y+22,"[font_menu][scale,2]([font_chs]战斗[font_menu] "+string(obj_game_selection.choice+1)+"/"+string(obj_game_selection.choice_mg)+")")}
}
draw_set_color(c_white)
draw_set_valign(fa_top)
draw_set_halign(fa_left)