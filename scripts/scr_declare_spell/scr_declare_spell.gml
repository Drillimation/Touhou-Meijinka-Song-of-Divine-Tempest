function scr_declare_spell(_spell_id,_cut_in,_bg){
	var inst = instance_create_layer(0,0,"Spell",obj_spell_banner_enemy);
	with(inst) {
		spell_id = _spell_id;
		if is_nan(round((global.spellcard_history[# 0,spell_id] / global.spellcard_history[# 1,spell_id]) * 100)) {
			percen = 0;
		}
		else {
			percen = round((global.spellcard_history[# 0,spell_id] / global.spellcard_history[# 1,spell_id]) * 100);
		}
		var _buffer = buffer_load("gamefiles/spell_cards" + string(global.suf) + ".json");
		var _string = buffer_read(_buffer,buffer_string);
		buffer_delete(_buffer);

		var _load_data = json_parse(_string);

		if struct_exists(_load_data, "boss_char") {
			var _names = struct_get_names(_load_data.boss_char);
			txt = string(struct_get(_load_data.boss_char,"a" + string(spell_id)));
		}

		cut_in = _cut_in;
		bg = _bg;
		boss_id = other.id;		
	}
}