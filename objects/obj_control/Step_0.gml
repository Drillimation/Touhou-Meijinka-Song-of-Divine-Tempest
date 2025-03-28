if keyboard_check_pressed(vk_tab) or gamepad_button_check_pressed(0,gp_select) {
	audio_play_sound(snd_credit,10,false);
	global.credits += 1;

	wo_credits[0] = "CREDITS\n" + string(global.credits);
	wo_credits[1] = "INSERT\nCOIN"

	w_credits_1[0] = "CREDITS\n" + string(global.credits);
	w_credits_1[1] = "PUSH\n1P"

	w_credits_2[0] = "CREDITS\n" + string(global.credits);
	w_credits_2[1] = "PUSH\n2P"

	if room == room_arcade_title {
		room_goto(room_arcade_start);
	}
}
if global.canjoin == true {
	if global.credits >= 1 {
		if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) {
			if global.playeractive[0] == false {
				global.credits -= 1;
				global.playeractive[0] = true
				if room == room_stage_1 or 
				room == room_stage_2 or 
				room == room_stage_3 or
				room == room_stage_4 or 
				room == room_stage_5 or 
				room == room_stage_6 or 
				room == room_stage_7 {
					instance_create_depth(view_xview + 64,view_yview + 208,0,obj_player_1);
					if instance_exists(obj_continue) {
						global.playerscore[0] = round(((global.playerscore[0] / 10) / 2)) * 10
						global.playerlives[0] = 3;
						global.playerhealth[0] = 30;
						instance_destroy(obj_continue);
					}
				}
			}
			wo_credits[0] = "CREDITS\n" + string(global.credits);
			wo_credits[1] = "INSERT\nCOIN"

			w_credits_1[0] = "CREDITS\n" + string(global.credits);
			w_credits_1[1] = "PUSH\n1P"

			w_credits_2[0] = "CREDITS\n" + string(global.credits);
			w_credits_2[1] = "PUSH\n2P"
			if room == room_arcade_start {
				scr_newgame_ext();
				room_goto(room_arcade_setup);
			}
		}
		if gamepad_button_check_pressed(1,gp_face1) {
			if global.playeractive[1] == false {
				global.credits -= 1;
				global.playeractive[1] = true
				if room == room_stage_1 or 
				room == room_stage_2 or 
				room == room_stage_3 or
				room == room_stage_4 or 
				room == room_stage_5 or 
				room == room_stage_6 or 
				room == room_stage_7 {
					instance_create_depth(view_xview + 192,view_yview + 208,0,obj_player_2);
					if instance_exists(obj_continue) {
						instance_create_depth(view_xview + 64,view_yview + 208,0,obj_player_1);
						global.playerscore[0] = round(((global.playerscore[0] / 10) / 2)) * 10
						global.playerscore[1] = round(((global.playerscore[1] / 10) / 2)) * 10
						global.playerlives[0] = 3;
						global.playerhealth[0] = 30;
						global.playerlives[1] = 3;
						global.playerhealth[1] = 30;
						instance_destroy(obj_continue);
					}
				}
			}
			wo_credits[0] = "CREDITS\n" + string(global.credits);
			wo_credits[1] = "INSERT\nCOIN"

			w_credits_1[0] = "CREDITS\n" + string(global.credits);
			w_credits_1[1] = "PUSH\n1P"

			w_credits_2[0] = "CREDITS\n" + string(global.credits);
			w_credits_2[1] = "PUSH\n2P"
			if room == room_arcade_start {
				scr_newgame_ext();
				room_goto(room_arcade_setup);
			}
		}
	}
	if !instance_exists(obj_continue) {
		if gamepad_is_connected(1) {
			who_can_pause = keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_start) or gamepad_button_check_pressed(1,gp_start)
		}
		else {
			who_can_pause = keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(0,gp_start)
		}
		if who_can_pause {
			if paused == false {
				audio_play_sound(snd_pause,10,false);
				audio_pause_sound(global.bgm);
				paused = true;
				var a = layer_get_all_elements("Instances");
				for (var i = 0; i < array_length(a); i++;) {
					if layer_get_element_type(a[i]) == layerelementtype_sequence {
						layer_sequence_pause(a[i]);
					}
				}
				instance_deactivate_all(false);
				instance_activate_object(obj_display_manager);
				instance_activate_object(obj_resize);
				instance_activate_object(obj_border);
				if !instance_exists(obj_pause) {
					var inst = instance_create_depth(0,0,0,obj_pause);
					if gamepad_button_check(0,gp_start) or keyboard_check(vk_escape) {
						inst._id = 0;
					}
					if gamepad_button_check(1,gp_start) {
						inst._id = 1;
					}
					instance_activate_object(obj_pause);
				}
			}
			else {
				audio_resume_sound(global.bgm)
				paused = false;
				instance_destroy(obj_pause);
				instance_activate_all();
			}
		}
	}

	if !window_has_focus() and !instance_exists(obj_continue) {
		if paused == false {
			audio_play_sound(snd_pause,10,false);
			audio_pause_sound(global.bgm);
			paused = true;
			var a = layer_get_all_elements("Instances");
			for (var i = 0; i < array_length(a); i++;) {
				if layer_get_element_type(a[i]) == layerelementtype_sequence {
					layer_sequence_pause(a[i]);
				}
			}
			instance_deactivate_all(false);
			instance_activate_object(obj_display_manager);
			instance_activate_object(obj_resize);
			instance_activate_object(obj_border);
			if !instance_exists(obj_pause) {
				var inst = instance_create_depth(0,0,0,obj_pause);
				instance_activate_object(obj_pause);
			}
		}
		else {
			audio_resume_sound(global.bgm)
			paused = false;
			instance_destroy(obj_pause);
			instance_activate_all();
		}
	}
}

if global.playerscore[0] > global.highscore {
	global.highscore = global.playerscore[0];
}
if global.playerscore[1] > global.highscore {
	global.highscore = global.playerscore[1];
}
if global.playerscore[0] > global.bombscore[0] {
	if global.chuhoujoutaimode == true {
		global.bombs[0] += 1;
		scr_one_channel_sound(snd_get_bomb);
	}
	else {
		global.playerlives[0] += 1;
		scr_one_channel_sound(snd_get_life);
	}
	global.received[0] += 1;
	global.bombscore[0] += global.received[0] * 100000;
}
if global.playerscore[1] > global.bombscore[1] {
	if global.chuhoujoutaimode == true {
		global.bombs[1] += 1;
		scr_one_channel_sound(snd_get_bomb);
	}
	else {
		global.playerlives[1] += 1;
		scr_one_channel_sound(snd_get_life);
	}
	global.received[1] += 1;
	global.bombscore[1] += global.received[1] * 100000;
}

if bgm_fade == true {
	audio_sound_gain(global.bgm, 0, 1000);
	if alarm[2] < 0 {
		alarm[2] = 120;
	}
}


/*if room == room_arcade_title {
	if keyboard_check_pressed(vk_f2) {
		global.playeractive[0] = true;
		global.continuesused = 1;
		instance_create_depth(0,0,0,obj_ending_transition);
	}
}*/