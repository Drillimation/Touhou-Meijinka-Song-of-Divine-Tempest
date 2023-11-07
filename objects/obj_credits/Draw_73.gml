var scribble_object = scribble(txt)
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)

var crd_hgt = string_height_scribble(txt)
vx = camera_get_view_x(view_camera[1]);
vy = camera_get_view_y(view_camera[1]);
/*
draw_set_font(font_ms_gothic);
draw_set_halign(fa_left);
draw_set_color(make_color_rgb(0,0,0));
draw_text(vx + 1,vy + 1,y);
draw_text(vx + 17,vy + 17,crd_hgt - 288);
draw_set_color(make_color_rgb(255,255,255));
draw_text(vx + 0,vy + 0,y);
draw_text(vx + 16,vy + 16,crd_hgt - 288);
*/