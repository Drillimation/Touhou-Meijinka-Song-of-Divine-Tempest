var _buffer = buffer_load("gamefiles/options" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);
	
var _load_data = json_parse(_string);

prompt = _load_data.prompt_stats;

if struct_exists(_load_data, "statistics") {
	var _names = struct_get_names(_load_data.statistics);
	for(var i = 0; i < array_length(_names); i += 1) {
		desc[i] = string(struct_get(_load_data.statistics,"a" + string(i)));
	}
}

//Load spell card statistics
if !file_exists("spellcards.save") {
	var _buffer = buffer_load("gamefiles/default_spellcards.json");
}
else {
	var _buffer = buffer_load("spellcards.save");
}
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

var _load_data = json_parse(_string);

spellcard_history = ds_grid_create(2,struct_names_count(_load_data));
for(var i = 0; i < ds_grid_height(spellcard_history); i += 1) {
	if struct_exists(_load_data, "a" + string(i)) {
		var _ss = struct_get(_load_data, "a" + string(i));
		spellcard_history[# 0,i] = struct_get(_ss, "captured");
		spellcard_history[# 1,i] = struct_get(_ss, "encountered");
	}
}

//Get spell card names
var _buffer = buffer_load("gamefiles/spell_cards" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

var _load_data = json_parse(_string);

for(var i = 0; i < 8; i += 1) {
	for(var j = 0; j < 8; j += 1) {
		if struct_exists(_load_data, "boss_char") {
			var _ss = struct_get_names(_load_data.boss_char);
			button[i][j] = string(struct_get(_load_data.boss_char,"a" + string((8 * i) + j)));
		}
	}
}

buttons_x = array_length(button);
buttons_y = array_length(button[0]);

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