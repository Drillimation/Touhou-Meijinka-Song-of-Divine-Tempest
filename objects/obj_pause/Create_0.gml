var _buffer = buffer_load("gamefiles/setup" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);
	
var _load_data = json_parse(_string);

prompt = _load_data.power_off;
if struct_exists(_load_data, "choices") {
	var _names = struct_get_names(_load_data.choices);
	for(var i = 0; i < array_length(_names); i += 1) {
		button[i] = string(struct_get(_load_data.choices,"a" + string(i)));
	}
}
if struct_exists(_load_data, "_paused") {
	var _names = struct_get_names(_load_data._paused);
	for(var i = 0; i < array_length(_names); i += 1) {
		desc[i] = string(struct_get(_load_data._paused,"a" + string(i)));
	}
}
_id = 0;

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