var _buffer = buffer_load("gamefiles/music_comments" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);
	
var _load_data = json_parse(_string);

prompt = _load_data.prompt;
if struct_exists(_load_data, "song_name") {
	var _names = struct_get_names(_load_data.song_name);
	for(var i = 0; i < array_length(_names); i += 1) {
		button[i] = string(struct_get(_load_data.song_name,"a" + string(i)));
		show_debug_message(button[i]);
	}
}

if struct_exists(_load_data, "comments") {
	var _names = struct_get_names(_load_data.comments);
	for(var i = 0; i < array_length(_names); i += 1) {
		desc[i] = string(struct_get(_load_data.comments,"a" + string(i)));
		//desc[i] = scr_wordwrap(desc[i],288,"\n",true);
		show_debug_message(desc[i]);
	}
}

//buttons_x = array_length(button);
buttons_y = array_length(button);

menu_index_x = 0;
menu_index_y = 0;
last_selected_x = 0;
last_selected_y = 0;
next = false;
prev = false;
next_row = false;
prev_row = false;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

scribble_object = undefined;
scribble_object2 = undefined;