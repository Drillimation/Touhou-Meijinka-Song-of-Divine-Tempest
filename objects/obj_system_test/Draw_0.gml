font = font_add_sprite(spr_font,32,false,0);
draw_set_font(font);
draw_set_color(make_color_rgb(255,255,255))
for(var _j = 0; _j < _i; _j += 1) {
	draw_text(view_xview + 0,view_yview + (8 * _j),txt[_j]);
}