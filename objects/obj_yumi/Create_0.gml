can_attack = false;
entered = false;
scr_boss_stats(2,1250);
enemy_id = 0;
_t = 0;
defeat_img = spr_yumi_defeat;
_bar = spr_boss_health_2

attack[0] = timeline_spell_card_18; start_time[0] = 45;
attack[1] = timeline_yumi; start_time[1] = 45;

timer = start_time[array_length(start_time) - 1];

defeat_bonus = 35000;

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
	txt = string(struct_get(_load_data.boss_names,"a4"));
}

font = font_add_sprite(spr_font,32,false,0);