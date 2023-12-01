view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
draw_set_font(font_ms_gothic);
draw_set_halign(fa_left);

draw_set_color(make_color_rgb(0,0,0));
draw_text(0+1,0+1, prompt);

for(var i = 0; i < 8; i += 1) {
	draw_text(16+1,((i * 32) + 48) + 1, button[menu_index_x][i]);
}
draw_set_halign(fa_right);
draw_text(400+1,32 + 1, desc[0]);
draw_text(512+1,32 + 1, desc[1]);
draw_text(624+1,32 + 1, desc[2]);
for(var i = 0; i < 8; i += 1) {
	draw_text(400+1,((i * 32) + 64) + 1, spellcard_history[# 0,(menu_index_x * 8) + i]);
	draw_text(512+1,((i * 32) + 64) + 1, spellcard_history[# 1,(menu_index_x * 8) + i]);
	if is_nan(round((spellcard_history[# 0,(menu_index_x * 8) + i] / spellcard_history[# 1,(menu_index_x * 8) + i]) * 100)) {
	percen = 0;
	}
	else {
		percen = round((spellcard_history[# 0,(menu_index_x * 8) + i] / spellcard_history[# 1,(menu_index_x * 8) + i]) * 100);
	}
	draw_text(624+1,((i * 32) + 64) + 1, percen);
}

draw_set_halign(fa_left);

draw_set_color(make_color_rgb(255,255,255));
draw_text(0,0, prompt);

for(var i = 0; i < 8; i += 1) {
	draw_text(16,((i * 32) + 48), button[menu_index_x][i]);
}
draw_set_halign(fa_right);
draw_text(400,32, desc[0]);
draw_text(512,32, desc[1]);
draw_text(624,32, desc[2]);
for(var i = 0; i < 8; i += 1) {
	draw_text(400,((i * 32) + 64), spellcard_history[# 0,(menu_index_x * 8) + i]);
	draw_text(512,((i * 32) + 64), spellcard_history[# 1,(menu_index_x * 8) + i]);
	if is_nan(round((spellcard_history[# 0,(menu_index_x * 8) + i] / spellcard_history[# 1,(menu_index_x * 8) + i]) * 100)) {
	percen = 0;
	}
	else {
		percen = round((spellcard_history[# 0,(menu_index_x * 8) + i] / spellcard_history[# 1,(menu_index_x * 8) + i]) * 100);
	}
	draw_text(624,((i * 32) + 64), percen);
}