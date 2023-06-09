if(finish>0){

draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_color(c_yellow)
draw_set_font(GetFont("font_menu"))
if(choice_previous=2){
draw_text_scribble(320,360,GetString("str_save_options_message_copied"))}
if(choice_previous=3){
draw_text_scribble(320,360,GetString("str_save_options_message_moved"))}
if(choice_previous=4){
draw_text_scribble(320,360,GetString("str_save_options_message_deleted"))}
draw_set_valign(fa_top)
draw_set_halign(fa_left)
finish-=1

}