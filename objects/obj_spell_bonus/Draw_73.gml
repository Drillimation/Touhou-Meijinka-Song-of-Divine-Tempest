view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

draw_set_font(font);
draw_set_halign(fa_center);
if cleared == false {
	draw_set_color(make_color_rgb(255,216,0));
	draw_text(view_xview + 128,view_yview + 40,"SPELL CARD BONUS");
	font2 = font_add_sprite(spr_font_mp,32,false,0);
	draw_set_font(font2);
	draw_set_color(make_color_rgb(255,64,64));
	draw_text(view_xview + 128,view_yview + 48,bonus);
}
else {
	draw_set_color(make_color_rgb(255,216,0));
	draw_text(view_xview + 128,view_yview + 40,"SPELL BONUS FAILED");
}