view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

draw_set_alpha(1);
draw_set_font(global.font[1]);
draw_set_halign(fa_left);

draw_sprite(spr_textbox_small,0,view_xview + 0,view_yview + 208);

var scribble_object = scribble(txt)
	.starting_format(font_get_name(global.font[1]),make_color_rgb(0,0,0))
	.wrap(240)
	.line_spacing(16)
	.draw((view_xview + 8) + 1, (view_yview + 216) + 1)

var scribble_object2 = scribble(txt)
	.starting_format(font_get_name(global.font[1]),make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 216)

font = font_add_sprite(spr_font_mp,32,false,0);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(255,0,0));
draw_text(view_xview + 128,view_yview + 104,"CONTINUE?\n" + string(time_limit));