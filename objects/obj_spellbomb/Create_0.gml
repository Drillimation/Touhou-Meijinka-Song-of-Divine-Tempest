view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
x_pos = x - view_xview;
y_pos = y - view_yview;

item_id = 0;

var _buffer = buffer_load("gamefiles/spell_cards" + string(global.suf) + ".json");
var _string = buffer_read(_buffer,buffer_string);
buffer_delete(_buffer);

var _load_data = json_parse(_string);

if struct_exists(_load_data, "player_char") {
	var _names = struct_get_names(_load_data.player_char);
	txt = string(struct_get(_load_data.player_char,global.character[item_id]));
}

scr_one_channel_sound(snd_spell_card_player);
switch(item_id) {
	case 0:
		px = obj_player_1.x
		py = obj_player_1.y
		break;
	case 1:
		px = obj_player_2.x
		py = obj_player_2.y
		break;
}

alarm[0] = 300;