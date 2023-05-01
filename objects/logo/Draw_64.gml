if(_hint){
	draw_set_font(font_mars_needs_cunnilingus);
	draw_set_halign(fa_middle);
	draw_set_color(c_gray);
	if(IsEng()){
	draw_text_scribble(320,360,"[scale,1][font_mars_needs_cunnilingus][[Press Z or Enter]")
	}else if(IsChs()){
	draw_text_scribble(320,360,"[scale,2][font_dialog][[[font_chs]按下 [font_dialog]Z[font_chs] 或 [font_dialog]Enter]")}
	draw_set_halign(fa_left);
}