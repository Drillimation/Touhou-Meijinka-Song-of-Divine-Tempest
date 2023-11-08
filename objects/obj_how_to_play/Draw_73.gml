draw_set_alpha(1);
draw_set_font(global.font[1]);
draw_set_halign(fa_left);

draw_sprite(spr_textbox,0,view_xview + 0,view_yview + 192);
scribble_object = scribble(text)
	.starting_format(font_get_name(global.font[1]),make_color_rgb(0,0,0))
	.wrap(240)
	.line_spacing(16)
	.draw((view_xview + 8) + 1, (view_yview + 200) + 1,typist)

scribble_object2 = scribble(text)
	.starting_format(font_get_name(global.font[1]),make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 200,typist)

draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(255,255,255));
draw_text(view_xview + 128,view_xview + 16,"HOW TO PLAY")