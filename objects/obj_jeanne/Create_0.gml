can_attack = false;
entered = false;
scr_boss_stats(19,1250);
enemy_id = 0;
_t = 0;
defeat_img = spr_jeanne_defeat;
_bar = spr_boss_health_19

attack[0] = timeline_spell_card_64; start_time[0] = 75;
switch(global.character[0]) {
	case "REIMU": attack[1] = timeline_spell_card_60; break;
	case "MARISA": attack[1] = timeline_spell_card_61; break;
	case "SAKUYA": attack[1] = timeline_spell_card_62; break;
	case "YOUMU": attack[1] = timeline_spell_card_63; break;
}
start_time[1] = 75;
attack[2] = timeline_jeanne_09; start_time[2] = 75;
attack[3] = timeline_spell_card_59; start_time[3] = 75;
attack[4] = timeline_jeanne_08; start_time[4] = 75;
attack[5] = timeline_spell_card_58; start_time[5] = 75;
attack[6] = timeline_jeanne_07; start_time[6] = 75;
attack[7] = timeline_spell_card_57; start_time[7] = 75;
attack[8] = timeline_jeanne_06; start_time[8] = 75;
attack[9] = timeline_spell_card_56; start_time[9] = 75;
attack[10] = timeline_jeanne_05; start_time[10] = 75;
attack[11] = timeline_spell_card_55; start_time[11] = 75;
attack[12] = timeline_jeanne_04; start_time[12] = 75;
attack[13] = timeline_spell_card_54; start_time[13] = 75;
attack[14] = timeline_jeanne_03; start_time[14] = 75;
attack[15] = timeline_spell_card_53; start_time[15] = 75;
attack[16] = timeline_jeanne_02; start_time[16] = 75;
attack[17] = timeline_spell_card_52; start_time[17] = 75;
attack[18] = timeline_jeanne_01; start_time[18] = 75;

timer = start_time[array_length(start_time) - 1];

defeat_bonus = 250000;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
x_pos = x - view_xview;
y_pos = y - view_yview;

var _buffer = buffer_load("gamefiles/spell_cards" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

var _load_data = json_parse(_string);

if struct_exists(_load_data, "boss_names") {
	var _names = struct_get_names(_load_data.boss_names);
	txt = string(struct_get(_load_data.boss_names,"a8"));
}