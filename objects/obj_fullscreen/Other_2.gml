global.current_bgm = "noone";
game_set_speed(60, gamespeed_fps);

if !file_exists("options.save") {
	/*var save_data = 
	{
		language : 0,
		bgm_volume : 0.8,
		sfx_volume : 0.8,
		fullscreen : 1,
	};
	var _string = json_stringify(save_data);
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1);
	buffer_write(_buffer,buffer_string,_string);
	buffer_save(_buffer,"options.save");
	buffer_delete(_buffer);*/
	
	fs = 1;
	global.language = 0;
	global.bgm_volume = 0.8;
	global.sfx_volume = 0.8;
	global.border_brightness = 1;
	scr_change_language();
}
else {
	var _buffer = buffer_load("options.save");
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);
	
	var _load_data = json_parse(_string);
	
	fs = _load_data.fullscreen;
	global.language = _load_data.language;
	global.bgm_volume = _load_data.bgm_volume;
	global.sfx_volume = _load_data.sfx_volume;
	global.border_brightness = _load_data.border_brightness;
	scr_change_language();
}
audio_group_load(audiogroup_default);
audio_group_load(bgm);
audio_group_set_gain(bgm,global.bgm_volume,0);
audio_group_set_gain(audiogroup_default,global.sfx_volume,0);

switch(fs) {
	case 0:
		global.fullscreen = false;
		break;
	case 1:
		global.fullscreen = true;
		break;
}