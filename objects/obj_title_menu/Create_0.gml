var _buffer = buffer_load("gamefiles/menu" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);
	
var _load_data = json_parse(_string);

prompt = _load_data.prompt;

if os_get_config() == "HTML5" {
	no_of_options = 5;
}
else {
	no_of_options = 6;
}

if struct_exists(_load_data, "buttons") {
	//var _names = struct_get_names(_load_data.buttons);
	for(var i = 0; i < no_of_options; i += 1) {
		button[i] = string(struct_get(_load_data.buttons,"a" + string(i)));
	}
}
/*
button[0] = _load_data.buttons.a0;
button[1] = _load_data.buttons.a1;
button[2] = _load_data.buttons.a2;
button[3] = _load_data.buttons.a3;
*/

if struct_exists(_load_data, "description") {
	//var _names = struct_get_names(_load_data.description);
	for(var i = 0; i < no_of_options; i += 1) {
		desc[i] = string(struct_get(_load_data.description,"a" + string(i)));
	}
}
/*
desc[0] = _load_data.description.a0;
desc[1] = _load_data.description.a1;
desc[2] = _load_data.description.a2;
desc[3] = _load_data.description.a3;
*/

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