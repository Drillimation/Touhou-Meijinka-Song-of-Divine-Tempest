instance_deactivate_layer("Enemies");
with(obj_camera) {
	path_speed = 0;
}

time_limit = 10;

alarm[0] = 60;

var _buffer = buffer_load("gamefiles/setup" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);
	
var _load_data = json_parse(_string);

if struct_exists(_load_data, "cont") {
	var _names = struct_get_names(_load_data.cont);
	txt = string(struct_get(_load_data.cont,"a0"));
}

scribble_object = undefined;
scribble_object2 = undefined;

font = font_add_sprite(spr_font_mp,32,false,0);