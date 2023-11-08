view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_set_alpha(1);
scribble_object = scribble(txt)
	.starting_format("drp_shd",make_color_rgb(255,255,255))
	.wrap(240)
	.line_spacing(16)
	.draw(x, y)

crd_hgt = string_height_scribble(txt)
if y < 0 - (crd_hgt - 512) {
	instance_create_depth(0,0,0,obj_gameover_transition)
	instance_destroy();
}

vx = camera_get_view_x(view_camera[1]);
vy = camera_get_view_y(view_camera[1]);

draw_set_font(font_ms_gothic);
draw_set_halign(fa_left);
draw_set_color(make_color_rgb(0,0,0));
draw_text(vx + 1,vy + 1,y);
draw_set_color(make_color_rgb(255,255,255));
draw_text(vx + 0,vy + 0,y);