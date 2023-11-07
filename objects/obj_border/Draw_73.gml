vx = camera_get_view_x(view_camera[1]);
vy = camera_get_view_y(view_camera[1]);

draw_sprite_ext(spr_border,0,vx + 0,vy + 0,1,1,0,make_color_rgb(_bri,_bri,_bri),1);

draw_set_font(font_ms_gothic);
draw_set_halign(fa_left);
if room == room_arcade_title {
	draw_set_color(make_color_rgb(0,0,0));
	draw_text(vx + 1,vy + 1,prompt);
	draw_set_color(make_color_rgb(255,255,255));
	draw_text(vx + 0,vy + 0,prompt);
}
if instance_exists(obj_name_entry_p1) or instance_exists(obj_name_entry_p2) {
	draw_set_color(make_color_rgb(0,0,0));
	draw_text(vx + 1,vy + 1,prompt2);
	draw_set_color(make_color_rgb(255,255,255));
	draw_text(vx + 0,vy + 0,prompt2);
}