draw_set_alpha(1);
draw_set_font(global.font[1]);
/*switch(global.language) {
	case 0: draw_set_font(font_chicago); break;
	case 1: draw_set_font(font_ms_gothic); break;
}*/
draw_set_halign(fa_left);

var scribble_object = scribble(text)
	.starting_format(font_get_name(global.font[1]),make_color_rgb(0,0,0))
	.wrap(240)
	.line_spacing(16)
	.draw((view_xview + 8) + 1, (view_yview + 200) + 1,typist)

var scribble_object2 = scribble(text)
	.starting_format(font_get_name(global.font[1]),make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 200,typist)
/*draw_set_color(make_color_rgb(0, 0, 0));
draw_text_scribble_ext((view_xview + 8) + 1, (view_yview + 200) + 1, text,240,index);
draw_set_color(make_color_rgb(255, 255, 255));
draw_text_scribble_ext(view_xview + 8, view_yview + 200, text,240,index);

draw_set_color(make_color_rgb(0, 0, 0));
draw_text_ext((view_xview + 8) + 1, (view_yview + 24) + 1, txt[0],16,240);
draw_set_color(make_color_rgb(255, 255, 255));
draw_text_ext(view_xview + 8, view_yview + 24, txt[0],16,240);*/
draw_set_alpha(1);