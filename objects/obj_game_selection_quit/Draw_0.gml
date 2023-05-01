draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color((image_index=1 ? c_yellow : c_white))
if(IsEng()){
draw_text_scribble(x+62,y+46,"[scale,2][font_dialog]Quit\n[scale,1](X/Shift)")}
if(IsChs()){
draw_text_scribble(x+62,y+46,"[scale,2][font_chs]退出\n[font_dialog][scale,1](X/Shift)")}
draw_set_color(c_white)