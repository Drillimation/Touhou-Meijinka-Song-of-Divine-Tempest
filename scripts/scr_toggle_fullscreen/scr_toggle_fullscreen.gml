// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_toggle_fullscreen(){
	switch(global.fullscreen) {
		case false: global.fullscreen = true; fs = 1; break;
		case true: global.fullscreen = false; fs = 0; break;
	}
	var save_data = 
	{
		language : global.language,
		bgm_volume : global.bgm_volume,
		sfx_volume : global.sfx_volume,
		fullscreen : fs,
		border_brightness : global.border_brightness,
	};
	var _string = json_stringify(save_data);
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1);
	buffer_write(_buffer,buffer_string,_string);
	buffer_save(_buffer,"options.save");
	buffer_delete(_buffer);
	
	projection_x = display_get_width();
	projection_y = display_get_height();
	global.windowwidth = 640 * floor(projection_x / 640)
	global.windowheight = 360 * floor(projection_y / 360)

	window_set_fullscreen(global.fullscreen);
	if global.fullscreen == true {
		instance_destroy(obj_resize);
		instance_create_depth(0,0,0,obj_display_manager);
		instance_activate_object(obj_display_manager);
		surface_resize(application_surface,global.windowwidth,global.windowheight)
	}
	else {
		global.windowwidth -= 640
		global.windowheight -= 360
		instance_destroy(obj_display_manager);
		instance_create_depth(0,0,0,obj_resize);
		instance_activate_object(obj_resize);
		window_set_size(global.windowwidth,global.windowheight);
		window_center();
	}
}