scr_declare_spell(0,spr_tamako_idle,spr_tamako_spell)
/*var inst = instance_create_layer(0,0,"Spell",obj_spell_banner_enemy);
with(inst) {
	spell_id = 0;
	var _buffer = buffer_load("gamefiles/spell_cards" + string(global.suf) + ".json");
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);

	var _load_data = json_parse(_string);

	if struct_exists(_load_data, "boss_char") {
		var _names = struct_get_names(_load_data.boss_char);
		txt = string(struct_get(_load_data.boss_char,"a" + string(spell_id)));
	}

	cut_in = spr_tamako_idle;
	bg = spr_tamako_spell;
	boss_id = other.id;
}*/
sprite_index = spr_tamako_atk;