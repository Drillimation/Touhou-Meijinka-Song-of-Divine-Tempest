view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

x = view_xview + x_pos;
y = view_yview + y_pos;

scr_get_input(play_id);
//depth = -y
script_execute(state);

if keyboard_check(vk_shift) or gamepad_button_check(play_id,gp_face2) or gamepad_button_check(play_id,gp_shoulderl) or gamepad_button_check(play_id,gp_shoulderlb) {
	focusmode = true;
	spd = 1.25;
}
else {
	focusmode = false;
	spd = 1.75
}

if keyboard_check(ord("Z")) or gamepad_button_check(play_id,gp_face1) {
	scr_player_shoot_speed()
}

gamepad_set_button_threshold(play_id,0.5);
if keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(play_id,gp_face3) or gamepad_button_check_pressed(play_id,gp_shoulderr) or gamepad_button_check_pressed(play_id,gp_shoulderrb) {
	if global.bombs[play_id] >= 1 and global.pow[play_id] >= 10 and !instance_exists(obj_spellbomb) {
		invincible = true;
		global.bombs[play_id] -= 1;
		global.totalbombsused[play_id] += 1;
		global.pow[play_id] -= 10;
		global.pow[play_id] = clamp(global.pow[play_id],0,100);
		instance_create_depth(x,y,0,obj_spellbomb);
		var inst = instance_create_depth(0,0,0,obj_spell_banner_player);
		inst.item_id = play_id;
		with(inst) {
			var _buffer = buffer_load("gamefiles/spell_cards" + string(global.suf) + ".json");
			var _string = buffer_read(_buffer,buffer_string);
			buffer_delete(_buffer);

			var _load_data = json_parse(_string);

			if struct_exists(_load_data, "player_char") {
				var _names = struct_get_names(_load_data.player_char);
				txt = string(struct_get(_load_data.player_char,global.character[item_id]));
			}
			switch(global.character[item_id]) {
				case "REIMU": cut_in = spr_reimu_idle; break;
				case "MARISA": cut_in = spr_marisa_idle; break;
				case "SAKUYA": cut_in = spr_sakuya_idle; break;
				case "YOUMU": cut_in = spr_youmu_idle; break;
			}
		}
	}
	else {
		audio_play_sound(snd_buzzer,10,false);
	}
}

if invincible == true {
	if alarm[1] < 0 {
		alarm[1] = 300;
	}
}