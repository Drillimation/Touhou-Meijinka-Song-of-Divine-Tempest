if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0,gp_face1) or gamepad_button_check_pressed(1,gp_face1){
	var check_fade = typist.get_state()
	if check_fade == 1 {
		if index == ds_grid_height(dialogue_table) - 1 {
			instance_destroy();
		}
		else {
			index += 1
			switch(dialogue_table[# 4,index]) {
				case "scr_boss_sprite": reveal_boss = true; break;
				case "scr_bgm_fade": with(obj_control) { bgm_fade = true; boss_bgm = other.boss_bgm; } break;
			}
		}
	}
	else {
		typist.skip();
	}
}
if reveal_boss == true {
	boss_opac += 0.01;
	boss_opac = clamp(boss_opac,0,1);
}