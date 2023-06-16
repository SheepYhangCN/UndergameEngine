if(hint>0){
draw_set_color(c_white)
draw_set_font(font_sans)
draw_text(10,10,GetString("str_hint_spaceheal_cskip"))
hint-=1}

if(item_used_hint>0){
draw_set_color(c_white)
draw_set_font(font_sans)
draw_text_transformed(10,10,GetString("str_hint_itemused")+string(item_used),2,2,0)
item_used_hint-=1}