instance_destroy();

_j = "{"
for(var i = 0; i < ds_grid_height(global.spellcard_history); i += 1) {
	_j += "\"a" + string(i) + "\" : {\"captured\" : " + string(global.spellcard_history[# 0,i]) + ", \"encountered\" : " + string(global.spellcard_history[# 1,i]) + " },"	
}
_j = string_delete(_j,string_length(_j),1);
show_debug_message(string_length(_j))
_j += " }"
show_debug_message(_j)
var _saveentity = json_parse(_j);
var _string = json_stringify(_saveentity);
var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1);
buffer_write(_buffer,buffer_string,_string);
buffer_save(_buffer,"spellcards.save");
buffer_delete(_buffer);

if global.playerscore[0] > global.highscores[# 1,9] {
	instance_create_depth(0,0,0,obj_name_entry_p1);
}
else if global.playerscore[1] > global.highscores[# 1,9] {
	instance_create_depth(0,0,0,obj_name_entry_p2);
}
else {
	instance_create_depth(0,0,0,obj_gameover);
}