function scr_player_shoot_speed(){
	j += 1
	j = j mod 9
	if (j == 0) {
		if focusmode == true {
			nrm = 2.5
			sm_nrm = 1.25
			aux_tur[0] = -4
			aux_tur[1] = -8
			aux_tur[2] = 4
		}
		else {
			nrm = 5
			sm_nrm = 2.5
			aux_tur[0] = -16
			aux_tur[1] = 0
			aux_tur[2] = 16
		}
		twist = floor(global.pow[play_id] / 25)
		switch(global.character[play_id]) {
			case "REIMU":
				for (var i = 0; i < (floor(global.pow[play_id] / 25) + 1); i += 1) {
						scr_shoot_bullet_player(4,(90 + (twist * sm_nrm)) - (i * nrm),spr_reimu_shot,0,0,0,false,snd_shoot,play_id);
				}
				break;
			case "MARISA":
				for (var i = 0; i < (floor(global.pow[play_id] / 25) + 1); i += 1) {
						scr_shoot_bullet_player(4,(90 + (twist * sm_nrm)) - (i * nrm),spr_marisa_shot,0,0,0,false,snd_shoot,play_id);
				}
				break;
			case "SAKUYA":
				for (var i = 0; i < (floor(global.pow[play_id] / 25) + 1); i += 1) {
						scr_shoot_bullet_player(4,(90 + (twist * sm_nrm)) - (i * nrm),spr_sakuya_shot,0,0,0,false,snd_shoot,play_id);
				}
				break;
			case "YOUMU":
				for (var i = 0; i < (floor(global.pow[play_id] / 25) + 1); i += 1) {
						scr_shoot_bullet_player(4,(90 + (twist * sm_nrm)) - (i * nrm),spr_youmu_shot,0,0,0,false,snd_shoot,play_id);
				}
				break;
		}
	}
	switch(global.character[play_id]) {
		case "REIMU":
			aux_speed = 9;
			aux = spr_reimu_shot_s
			do_aim = true
			amt = 0;
			break;
		case "MARISA":
			aux_speed = 180;
			aux = spr_marisa_shot_s
			do_aim = false
			amt = 0;
			break;
		case "SAKUYA":
			aux_speed = 9;
			aux = spr_sakuya_shot_s
			do_aim = false
			amt = floor(global.pow[play_id] / 50);
			break;
		case "YOUMU":
			aux_speed = 9;
			aux = spr_youmu_shot_s
			do_aim = false
			amt = floor(global.pow[play_id] / 50);
			break;
		}
	k += 1
	k = k mod aux_speed
	if (k == 0) {
		if global.pow[play_id] >= 12 {
			//twist2 = floor(global.pow / 50)
			for (var i = 0; i < (amt + 1); i += 1) {
				switch(global.character[play_id]) {
					case "REIMU":
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[0],aux_tur[1],do_aim,snd_shoot,play_id);
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[2],aux_tur[1],do_aim,snd_shoot,play_id);
						break;
					case "MARISA":
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[0],aux_tur[1],do_aim,snd_shoot,play_id);
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[2],aux_tur[1],do_aim,snd_shoot,play_id);
						break;
					case "SAKUYA":
						scr_shoot_bullet_player(4,((90 - ((128 - (view_xview + x)) / 2)) + (amt * 2.5)) - (i * 5),aux,0,aux_tur[0],aux_tur[1],do_aim,snd_shoot,play_id);
						scr_shoot_bullet_player(4,((90 - ((128 - (view_xview + x)) / 2)) + (amt * 2.5)) - (i * 5),aux,0,aux_tur[2],aux_tur[1],do_aim,snd_shoot,play_id);
						break;
					case "YOUMU":
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[0],aux_tur[1],do_aim,snd_shoot,play_id);
						scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[2],aux_tur[1],do_aim,snd_shoot,play_id);
						break;
				}
			}
		}
	}
}