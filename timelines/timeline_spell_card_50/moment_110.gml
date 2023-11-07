with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		if image_index == 0 {
			for(var i = 0; i < (global.difficulty * 4) + 12; i += 1) {
				scr_shoot_bullet_enemy(1.25,(360 / ((global.difficulty * 4) + 12)) * i,spr_bullet_seed_2,12,0,0,false,snd_enemy_fire);
			}
		}
		if image_index == 12 {
			for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
				scr_shoot_bullet_enemy(1.5 - (0.05 * i),0,spr_bullet_seed_1,10,0,0,true,snd_enemy_fire);
			}
		}
	}
}