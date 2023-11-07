vx = camera_get_view_x(view_camera[1]);
vy = camera_get_view_y(view_camera[1]);

_bri = round(global.border_brightness * 255);

var _buffer = buffer_load("gamefiles/setup" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);
	
var _load_data = json_parse(_string);

prompt = _load_data.insert_coin;
prompt2 = _load_data.name_entry_screen;