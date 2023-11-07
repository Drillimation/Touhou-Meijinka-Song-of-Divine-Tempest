view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

switch(global.stage) {
	case 1: stage_text = "STAGE 1"; break;
	case 2: stage_text = "STAGE 2"; break;
	case 3: stage_text = "STAGE 3"; break;
	case 4: stage_text = "STAGE 4"; break;
	case 5: stage_text = "STAGE 5"; break;
	case 6: stage_text = "FINAL STAGE"; break;
	case 7: stage_text = "EXTRA STAGE"; break;
}

var _buffer = buffer_load("gamefiles/setup" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

var _load_data = json_parse(_string);

if struct_exists(_load_data, "stage_intro") {
	var _names = struct_get_names(_load_data.stage_intro);
	txt = string(struct_get(_load_data.stage_intro,"a" + string(global.stage-1)));
}

typist_1 = scribble_typist()
	.in(0.2,2)
	.ease(SCRIBBLE_EASE.LINEAR,0,48,1,0,0,1)
	
typist_2 = scribble_typist()
	.in(0.2,2)
	.ease(SCRIBBLE_EASE.LINEAR,0,-16,1,0,0,1)
	
alarm[0] = 240;
opac = 0;