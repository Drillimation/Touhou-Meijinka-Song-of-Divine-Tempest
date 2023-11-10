can_attack = false;
entered = false;
scr_boss_stats(9,1250);
enemy_id = 0;
_t = 0;
defeat_img = spr_jane_defeat;
_bar = spr_boss_health_9

if global.difficulty >= 2 { attack[0] = timeline_spell_card_37; } else { attack[0] = timeline_spell_card_36; } start_time[0] = 55;
if global.difficulty >= 2 { attack[1] = timeline_spell_card_35; } else { attack[1] = timeline_spell_card_34; } start_time[1] = 55;
attack[2] = timeline_jane_04; start_time[2] = 50;
if global.difficulty == 3 { attack[3] = timeline_spell_card_33; } else if global.difficulty == 2 { attack[3] = timeline_spell_card_32; } else { attack[3] = timeline_spell_card_31; } start_time[3] = 55;
attack[4] = timeline_jane_03; start_time[4] = 50;
if global.difficulty >= 2 { attack[5] = timeline_spell_card_30; } else { attack[5] = timeline_spell_card_29; } start_time[5] = 55;
attack[6] = timeline_jane_02; start_time[6] = 50;
if global.difficulty >= 2 { attack[7] = timeline_spell_card_28; } else { attack[7] = timeline_spell_card_27; } start_time[7] = 55;
attack[8] = timeline_jane_01; start_time[8] = 50;

timer = start_time[array_length(start_time) - 1];

defeat_bonus = 50000;

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
	txt = string(struct_get(_load_data.boss_names,"a6"));
}