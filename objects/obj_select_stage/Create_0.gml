var _buffer = buffer_load("gamefiles/setup" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);
	
var _load_data = json_parse(_string);

if struct_exists(_load_data, "stage") {
	var _names = struct_get_names(_load_data.stage);
	for(var i = 0; i < 3; i += 1) {
		button[i][0] = string(struct_get(_load_data.stage,"a" + string(i)));
		button[i][1] = string(struct_get(_load_data.stage,"a" + string(i + 3)));
	}
}
/*
if struct_exists(_load_data, "stage_desc") {
	var _names = struct_get_names(_load_data.stage_desc);
	for(var i = 0; i < array_length(_names); i += 1) {
		desc[i] = string(struct_get(_load_data.type_desc,"a" + string(i)));
	}
}*/

buttons_y = array_length(button);
buttons_x = array_length(button[0]);

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

scribble_object3 = undefined;
scribble_object4 = undefined;