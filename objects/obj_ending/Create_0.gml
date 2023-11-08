scr_change_bgm(15);

if global.continuesused >= 1 {
	switch(global.character[0]) {
		case "REIMU": _sequence = layer_sequence_create("Instances",0,0,sequence_ending_01); break;
		case "MARISA": _sequence = layer_sequence_create("Instances",0,0,sequence_ending_02); break;
		case "SAKUYA": _sequence = layer_sequence_create("Instances",0,0,sequence_ending_03); break;
		case "YOUMU": _sequence = layer_sequence_create("Instances",0,0,sequence_ending_04); break;
	}
}
else {
	switch(global.character[0]) {
		case "REIMU": _sequence = layer_sequence_create("Instances",0,0,sequence_ending_05); break;
		case "MARISA": _sequence = layer_sequence_create("Instances",0,0,sequence_ending_06); break;
		case "SAKUYA": _sequence = layer_sequence_create("Instances",0,0,sequence_ending_07); break;
		case "YOUMU": _sequence = layer_sequence_create("Instances",0,0,sequence_ending_08); break;
	}
}

var _buffer = buffer_load("gamefiles/endings" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

var _load_data = json_parse(_string);

if global.continuesused >= 1 {
	switch(global.character[0]) {
		case "REIMU": _names = struct_get_names(_load_data.a0); _ss = _load_data.a0; break;
		case "MARISA": _names = struct_get_names(_load_data.a1); _ss = _load_data.a1; break;
		case "SAKUYA": _names = struct_get_names(_load_data.a2); _ss = _load_data.a2; break;
		case "YOUMU": _names = struct_get_names(_load_data.a3); _ss = _load_data.a3; break;
	}
}
else {
	switch(global.character[0]) {
		case "REIMU": _names = struct_get_names(_load_data.a4); _ss = _load_data.a4; break;
		case "MARISA": _names = struct_get_names(_load_data.a5); _ss = _load_data.a5; break;
		case "SAKUYA": _names = struct_get_names(_load_data.a6); _ss = _load_data.a6; break;
		case "YOUMU": _names = struct_get_names(_load_data.a7); _ss = _load_data.a7; break;
	}
}
for(var i = 0; i < array_length(_names); i += 1) {
	txt[i] = string(struct_get(_ss,"a" + string(i)));
}
text = txt[array_length(_names) - 1];

index = 0;

typist = scribble_typist()
	.in(0.125, 0);

opac = 0;
depth = -1000;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

scribble_object = undefined;
scribble_object2 = undefined;