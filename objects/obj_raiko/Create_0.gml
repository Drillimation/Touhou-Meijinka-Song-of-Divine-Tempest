can_attack = false;
entered = false;
scr_boss_stats(13,1000);
enemy_id = 0;
_t = 0;
defeat_img = spr_raiko_defeat;
_bar = spr_boss_health_13;

attack[0] = timeline_spell_card_48; start_time[0] = 65;
if global.difficulty >= 2 { attack[1] = timeline_spell_card_47; } else { attack[1] = timeline_spell_card_46; } start_time[1] = 65;
attack[2] = timeline_raiko_06; start_time[2] = 60;
attack[3] = timeline_spell_card_45; start_time[3] = 65;
attack[4] = timeline_raiko_05; start_time[4] = 60;
if global.difficulty >= 2 { attack[5] = timeline_spell_card_44; } else { attack[5] = timeline_spell_card_43; } start_time[5] = 65;
attack[6] = timeline_raiko_04; start_time[6] = 60;
if global.difficulty >= 2 { attack[7] = timeline_spell_card_42; } else { attack[7] = timeline_spell_card_41; } start_time[7] = 65;
attack[8] = timeline_raiko_03; start_time[8] = 60;
attack[9] = timeline_spell_card_40; start_time[9] = 65;
attack[10] = timeline_raiko_02; start_time[10] = 60;
attack[11] = timeline_spell_card_39; start_time[11] = 65;
attack[12] = timeline_raiko_01; start_time[12] = 60;

timer = start_time[array_length(start_time) - 1];

defeat_bonus = 100000;

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
	txt = string(struct_get(_load_data.boss_names,"a7"));
}