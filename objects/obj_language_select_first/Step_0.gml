scr_menu_input();
//scr_menu_input_2d();

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	global.language = menu_index_y;

	var save_data = 
	{
		language : global.language,
		bgm_volume : 0.8,
		sfx_volume : 0.8,
		fullscreen : 1,
		border_brightness : 1,
	};
	var _string = json_stringify(save_data);
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1);
	buffer_write(_buffer,buffer_string,_string);
	buffer_save(_buffer,"options.save");
	buffer_delete(_buffer);

	scr_change_language();
	room_goto(room_intro)
	instance_destroy();
}