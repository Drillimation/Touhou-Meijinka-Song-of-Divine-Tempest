function scr_trigger_dialogue(_file,_boss,_boss_sprite,_bgm){
	var inst = instance_create_depth(0,0,0,obj_dialogue)
	with(inst) {
		var _buffer = buffer_load("gamefiles/" + string(_file) + string(global.suf) + ".json");
		var _string = buffer_read(_buffer,buffer_string);
		buffer_delete(_buffer);

		var _load_data = json_parse(_string);

		dialogue_length = _load_data.lng;
		dialogue_table = ds_grid_create(5,dialogue_length);

		boss_name = string(_load_data.char_info.nm) + "\n" + string(_load_data.char_info.desc);

		for(var i = 0; i < ds_grid_height(dialogue_table); i += 1) {
			if struct_exists(_load_data, "a" + string(i)) {
				var _ss = struct_get(_load_data, "a" + string(i));
				dialogue_table[# 0,i] = struct_get(_ss, "left_portrait");
				dialogue_table[# 1,i] = struct_get(_ss, "right_portrait");
				dialogue_table[# 2,i] = struct_get(_ss, "speaker");
				dialogue_table[# 3,i] = struct_get(_ss, "dialogue");
				dialogue_table[# 4,i] = struct_get(_ss, "function");
			}
		}
		boss = _boss;
		boss_sprite = _boss_sprite;
		boss_bgm = _bgm;
	}
}