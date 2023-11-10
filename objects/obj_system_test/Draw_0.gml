draw_set_font(global.sprite_font[0]);
draw_set_color(make_color_rgb(255,255,255))
for(var _j = 0; _j < _i; _j += 1) {
	draw_text(view_xview + 0,view_yview + (8 * _j),txt[_j]);
}