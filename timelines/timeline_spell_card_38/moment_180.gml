with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < (global.difficulty * 2) + 8; i += 1) {
			scr_shoot_bullet_enemy(0.75,(360 / ((global.difficulty * 2) + 8)) * i,spr_bullet_small_1,15,0,0,false,snd_enemy_fire_kira);
			scr_shoot_bullet_enemy(0.625,(360 / ((global.difficulty * 2) + 8)) * i,spr_bullet_small_2,0,0,0,false,snd_enemy_fire_kira);
			scr_shoot_bullet_enemy(0.5,(360 / ((global.difficulty * 2) + 8)) * i,spr_bullet_seed_2,9,0,0,false,snd_enemy_fire_kira);
		}
		instance_destroy();
	}
}