_sequence = layer_sequence_create("Instances",0,0,sequence_arcade_intro);

var _buffer = buffer_load("gamefiles/intro" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

var _load_data = json_parse(_string);

if struct_exists(_load_data, "intro_text") {
	var _names = struct_get_names(_load_data.intro_text);
	for(var i = 0; i < array_length(_names); i += 1) {
		txt[i] = string(struct_get(_load_data.intro_text,"a" + string(i)));
		//txt[i] = scr_wordwrap(txt[i],240,"\n",true);
		//show_debug_message(txt[i])
		//var _j = string_width_ext(txt[i], 16, 240);
		//show_debug_message(_j)
	}
}
text = txt[5];

index = 0;

typist = scribble_typist()
	.in(0.125, 0);

//var textspeed = 0.04;
//alarm[0] = 60 * textspeed;

opac = 0;
depth = -1000;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

scribble_object = undefined;
scribble_object2 = undefined;