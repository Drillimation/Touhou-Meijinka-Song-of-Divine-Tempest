item_id = 0;
var _buffer = buffer_load("gamefiles/spell_cards" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

var _load_data = json_parse(_string);

if struct_exists(_load_data, "player_char") {
	var _names = struct_get_names(_load_data.player_char);
	txt = string(struct_get(_load_data.player_char,global.character[item_id]));
}

cut_in = spr_blank_portrait;

x_pos = -256;
y_pos = 288;

audio_play_sound(snd_spell_card_declare,10,false);