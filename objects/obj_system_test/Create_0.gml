txt[0] = "Starting DEOS..."
txt[1] = "Testing extended memory... done."
txt[2] = " "
txt[3] = "DRILLIMATION SYSTEMS"
txt[4] = "DRILLER ENGINE SYSTEM 2"
txt[5] = " "
txt[6] = "MAIN CPU"
txt[7] = "ROM OK"
txt[8] = "COMM RAM OK"
txt[9] = " "
txt[10] = "SUB CPU"
txt[11] = "ROM OK"
txt[12] = "RAM OK"
txt[13] = "SUB CPU OK"

alarm[0] = 5;
_i = 0;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

global.credits = 0;

//Load high scores
if !file_exists("highscores.save") {
	var _buffer = buffer_load("gamefiles/default_highscores.json");
}
else {
	var _buffer = buffer_load("highscores.save");
}
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

var _load_data = json_parse(_string);

global.highscores = ds_grid_create(4,10);
for(var i = 0; i < ds_grid_height(global.highscores); i += 1) {
	if struct_exists(_load_data, "a" + string(i)) {
		var _ss = struct_get(_load_data, "a" + string(i));
		global.highscores[# 0,i] = struct_get(_ss, "name");
		global.highscores[# 1,i] = struct_get(_ss, "score");
		global.highscores[# 2,i] = struct_get(_ss, "stage");
		global.highscores[# 3,i] = struct_get(_ss, "char");
	}
}
global.highscore = global.highscores[# 1,0];

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

global.spellcard_history = ds_grid_create(2,struct_names_count(_load_data));
for(var i = 0; i < ds_grid_height(global.spellcard_history); i += 1) {
	if struct_exists(_load_data, "a" + string(i)) {
		var _ss = struct_get(_load_data, "a" + string(i));
		global.spellcard_history[# 0,i] = struct_get(_ss, "captured");
		global.spellcard_history[# 1,i] = struct_get(_ss, "encountered");
	}
	show_debug_message(string(round((global.spellcard_history[# 0,i] / global.spellcard_history[# 1,i]) * 100)));
}

//Load other variables
scr_newgame();