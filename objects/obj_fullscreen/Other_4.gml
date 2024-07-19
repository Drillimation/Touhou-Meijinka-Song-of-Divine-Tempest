projection_x = display_get_width();
projection_y = display_get_height();
global.windowwidth = 640 * floor(projection_x / 640)
global.windowheight = 360 * floor(projection_y / 360)

if os_get_config() == "HTML5" {
	window_set_size(1280,720);
	window_center();
}
else {
	window_set_fullscreen(global.fullscreen);
	if global.fullscreen == true {
		instance_create_depth(0,0,0,obj_display_manager);
		surface_resize(application_surface,global.windowwidth,global.windowheight)
	}
	else {
		global.windowwidth -= 640
		global.windowheight -= 360
		instance_create_depth(0,0,0,obj_resize);
		window_set_size(global.windowwidth,global.windowheight);
		window_center();
	}
}
if room == room_language_select {
	if !file_exists("options.save") {
		instance_create_depth(0,0,0,obj_language_select_first);
	}
	else {
		room_goto(room_intro);
	}
}