draw_sprite_ext(spr_nmdc_legs,chara_legs,charalegx,charalegy,2,2,0,c_white,charaalpha)
draw_sprite_ext(spr_nmdc_body,chara_body,charabodyx,charabodyy,2,2,0,c_white,charaalpha)
draw_sprite_ext(chara_face_spr,chara_face,charaheadx,charaheady,2,2,0,c_white,charaalpha)

draw_sprite_ext(spr_sans_leg,_legs,legx,legy,2,2,0,c_white,sansalpha)
draw_sprite_ext(spr_sans_body,_body,bodyx,bodyy,2,2,0,c_white,sansalpha)
draw_sprite_ext(_face_spr,_face,headx,heady,2,2,0,c_white,sansalpha)
if(sweat>0){
draw_sprite_ext(spr_sans_sweat,sweat-1,headx,heady,2,2,0,c_white,sansalpha)}

if(hint>0){
draw_set_color(c_white)
draw_set_font(font_sans)
if(IsEng()){
draw_text(10,10,"Press Space to heal\nPress C or Ctrl to skip intro")}
if(IsChs()){
draw_text(10,10,"按下空格吃药\n按下C或Ctrl来跳过开头")}
hint-=1}

if(item_used_hint>0){
draw_set_color(c_white)
draw_set_font(font_sans)
if(IsEng()){
draw_text_transformed(10,10,"Item used:"+string(item_used),2,2,0)}
if(IsChs()){
draw_text_transformed(10,10,"已吃药数:"+string(item_used),2,2,0)}
item_used_hint-=1}