view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_set_font(font_ms_gothic);
draw_set_halign(fa_left);

draw_sprite(spr_menu_cursor,0,-8,(32) + (menu_index_y * 16));
draw_set_color(make_color_rgb(0,0,0));

for(var i = 0; i < buttons_y; i += 1) {
	draw_text(8+1,(32+1) + (i * 16),button[i])
}
var scribble_object = scribble(desc[menu_index_y])
	.starting_format("font_ms_gothic",make_color_rgb(0,0,0))
	.wrap(288)
	.line_spacing(16)
	.draw(328+1,32+1)
//draw_text_scribble_ext(328+1,32+1,desc[menu_index_y],288);
draw_text(0+1,0+1,prompt);

draw_set_color(make_color_rgb(255,255,255));
for(var i = 0; i < buttons_y; i += 1) {
	draw_text(8,(32) + (i * 16),button[i])
}
var scribble_object2 = scribble(desc[menu_index_y])
	.starting_format("font_ms_gothic",make_color_rgb(255,255,255))
	.wrap(288)
	.line_spacing(16)
	.draw(328,32)
//draw_text_scribble_ext(328,32,desc[menu_index_y],288);
draw_text(0,0,prompt);