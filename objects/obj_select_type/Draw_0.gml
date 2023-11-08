view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

draw_set_alpha(1);
draw_set_font(global.font[1]);
draw_set_halign(fa_left);

draw_sprite(spr_buttons_type,0,view_xview + 0,view_yview + 16);
draw_sprite(spr_setup_cursor,0,view_xview + 0,(view_yview + 16) + (48 * menu_index_y));
draw_sprite(spr_textbox_small,0,view_xview + 0,view_yview + 208);

scribble_object = scribble(button[menu_index_y])
	.starting_format(font_get_name(global.font[1]),make_color_rgb(0,0,0))
	.wrap(240)
	.line_spacing(16)
	.draw((view_xview + 8) + 1, (view_yview + 216) + 1)

scribble_object2 = scribble(button[menu_index_y])
	.starting_format(font_get_name(global.font[1]),make_color_rgb(255,0,0))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 216)

scribble_object3 = scribble(desc[menu_index_y])
	.starting_format(font_get_name(global.font[1]),make_color_rgb(0,0,0))
	.wrap(240)
	.line_spacing(16)
	.draw((view_xview + 8) + 1, (view_yview + 232) + 1)

scribble_object4 = scribble(desc[menu_index_y])
	.starting_format(font_get_name(global.font[1]),make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 232)