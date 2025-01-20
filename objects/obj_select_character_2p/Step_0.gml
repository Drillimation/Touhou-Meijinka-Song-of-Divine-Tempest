if global.playeractive[1] == true {
	scr_menu_input_2p()
}
else {
	scr_menu_input();
}
//scr_menu_input_2d();

if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) or gamepad_button_check_pressed(1,gp_face1) {
	audio_play_sound(snd_menuconfirm,10,false);
	switch(menu_index_y) {
		case 0: if global.character[0] == "REIMU" { audio_play_sound(snd_buzzer,10,false) } else { global.character[1] = "REIMU"; confirmed = true; } break;
		case 1: if global.character[0] == "MARISA" { audio_play_sound(snd_buzzer,10,false) } else { global.character[1] = "MARISA"; confirmed = true; } break;
		case 2: if global.character[0] == "SAKUYA" { audio_play_sound(snd_buzzer,10,false) } else { global.character[1] = "SAKUYA"; confirmed = true; } break;
		case 3: if global.character[0] == "YOUMU" { audio_play_sound(snd_buzzer,10,false) } else { global.character[1] = "YOUMU"; confirmed = true; } break;
	}
	if confirmed == true {
		if global.freeplaymode == true {
			instance_create_depth(0,0,0,obj_select_stage);
		}
		else {
			instance_create_depth(0,0,0,obj_how_to_play);
		}
		instance_destroy();
	}
}