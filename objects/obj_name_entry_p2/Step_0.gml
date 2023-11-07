scr_menu_input_2p();
scr_menu_input_2d_2p();

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_numpad2) or gamepad_button_check_pressed(1,gp_face1) and string_length(p1_name) < 10 {
	audio_play_sound(snd_menuconfirm,1,false)
	p1_name += button[menu_index_y][menu_index_x];
}

if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_numpad6) or gamepad_button_check_pressed(1,gp_face2) {
	audio_play_sound(snd_menucancel,1,false)
	p1_name = string_delete(p1_name, string_length(p1_name), 1);
}

if keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(1,gp_start) {
	global.highscores[# 1,9] = p1_name;
	global.highscores[# 1,9] = global.playerscore[1];
	global.highscores[# 1,9] = global.stage;
	global.highscores[# 1,9] = global.character[1];
	ds_grid_sort(global.highscores,1,false);
	
	_j = "{"
	for(var i = 0; i < ds_grid_height(global.highscores); i += 1) {
		_j += "\"a"+ string(i) +"\" : { \"name\" : \"" + string(global.highscores[# 0,i]) + "\", \"score\" : " + string(global.highscores[# 1,i]) + ", \"stage\" : " + string(global.highscores[# 2,i]) +", \"char\" : \"" + string(global.highscores[# 3,i]) + "\" },"
	}
	_j = string_delete(_j,string_length(_j),1);
	show_debug_message(string_length(_j))
	_j += " }"
	show_debug_message(_j)
	var _saveentity = json_parse(_j);
	var _string = json_stringify(_saveentity);
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1);
	buffer_write(_buffer,buffer_string,_string);
	buffer_save(_buffer,"highscores.save");
	buffer_delete(_buffer);
	
	instance_create_depth(0,0,0,obj_gameover);
	global.playeractive[0] = false;
	global.playeractive[1] = false;
	instance_destroy();
}