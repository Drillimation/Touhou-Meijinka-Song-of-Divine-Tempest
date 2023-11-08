can_attack = false;
entered = false;
scr_boss_stats(6,1500);
enemy_id = 0;
_t = 0;
defeat_img = spr_emiri_defeat;
_bar = spr_boss_health_6

attack[0] = timeline_spell_card_17; start_time[0] = 45;
attack[1] = timeline_emiri_04; start_time[1] = 40;
if global.difficulty >= 2 { attack[2] = timeline_spell_card_16; } else { attack[2] = timeline_spell_card_15; } start_time[2] = 45;
attack[3] = timeline_emiri_03; start_time[3] = 40;
if global.difficulty >= 2 { attack[4] = timeline_spell_card_14; } else { attack[4] = timeline_spell_card_13; } start_time[4] = 45;
attack[5] = timeline_emiri_02; start_time[5] = 40;

timer = start_time[array_length(start_time) - 1];

defeat_bonus = 30000;

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
	txt = string(struct_get(_load_data.boss_names,"a3"));
}

font = font_add_sprite(spr_font,32,false,0);