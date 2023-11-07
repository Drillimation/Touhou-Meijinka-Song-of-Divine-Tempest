_sequence = layer_sequence_create("Instances",0,0,sequence_tutorial);

var _buffer = buffer_load("gamefiles/setup" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

var _load_data = json_parse(_string);

if struct_exists(_load_data, "how_to_play") {
	var _names = struct_get_names(_load_data.how_to_play);
	for(var i = 0; i < array_length(_names); i += 1) {
		txt[i] = string(struct_get(_load_data.how_to_play,"a" + string(i)));
	}
}
text = txt[4];

index = 0;

typist = scribble_typist()
	.in(0.125, 0);
	
opac = 0;
depth = -1000;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

audio_stop_sound(global.bgm);