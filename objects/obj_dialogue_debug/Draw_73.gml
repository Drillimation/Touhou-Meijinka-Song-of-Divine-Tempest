view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_set_alpha(1);
draw_sprite(asset_get_index(dialogue_table[# 0,index]),0,view_xview + 0,view_yview + 16);
draw_sprite(asset_get_index(dialogue_table[# 1,index]),0,view_xview + 128,view_yview + 16);
draw_sprite(spr_textbox,0,view_xview + 0,view_yview + 192);

scribble_object3 = scribble(dialogue_table[# 2,index])
	.starting_format(font_get_name(global.font[1]),make_color_rgb(0,0,0))
	.wrap(240)
	.line_spacing(16)
	.draw((view_xview + 8) + 1, (view_yview + 200) + 1)

scribble_object4 = scribble(dialogue_table[# 2,index])
	.starting_format(font_get_name(global.font[1]),make_color_rgb(255,0,0))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 200)

scribble_object = scribble(dialogue_table[# 3,index])
	.starting_format(font_get_name(global.font[1]),make_color_rgb(0,0,0))
	.wrap(240)
	.line_spacing(16)
	.draw((view_xview + 8) + 1, (view_yview + 216) + 1,typist)

scribble_object2 = scribble(dialogue_table[# 3,index])
	.starting_format(font_get_name(global.font[1]),make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(view_xview + 8, view_yview + 216,typist)
	
if reveal_boss == true {
	scribble_object5 = scribble(boss_name)
		.starting_format(font_get_name(font_misaki),make_color_rgb(0,0,0))
		.align(fa_center, fa_top)
		.wrap(128)
		.line_spacing(8)
		.draw((view_xview + 192) + 1, (view_yview + 160) + 1)

	scribble_object6 = scribble(boss_name)
		.starting_format(font_get_name(font_misaki),make_color_rgb(255 * boss_opac,255 * boss_opac,255 * boss_opac))
		.align(fa_center, fa_top)
		.wrap(128)
		.line_spacing(8)
		.draw(view_xview + 192, view_yview + 160)
}
draw_set_alpha(1);