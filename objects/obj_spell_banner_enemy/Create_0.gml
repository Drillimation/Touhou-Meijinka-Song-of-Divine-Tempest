var _buffer = buffer_load("gamefiles/spell_cards" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

var _load_data = json_parse(_string);

if struct_exists(_load_data, "boss_char") {
	var _names = struct_get_names(_load_data.boss_char);
	txt = string(struct_get(_load_data.boss_char,"a0"));
}

cut_in = spr_blank_portrait;
bg = spr_tamako_spell;
boss_id = noone;
spell_id = 0;
spell_bonus = 0;
if is_nan(round((global.spellcard_history[# 0,spell_id] / global.spellcard_history[# 1,spell_id]) * 100)) {
	percen = 0;
}
else {
	percen = round((global.spellcard_history[# 0,spell_id] / global.spellcard_history[# 1,spell_id]) * 100);
}

x_pos = 512;
y_pos = 288;
failed = false;
opac = 0;

audio_play_sound(snd_spell_card_declare,10,false);