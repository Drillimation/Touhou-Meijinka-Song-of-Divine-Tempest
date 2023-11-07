with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		for(var i = 0; i < (global.difficulty * 2) + 10; i += 1) {
			scr_shoot_bullet_enemy(1,(360 / ((global.difficulty * 2) + 10)) * i,spr_bullet_note,15,0,0,false,snd_enemy_fire_kira);
		}
		instance_destroy();
	}
}