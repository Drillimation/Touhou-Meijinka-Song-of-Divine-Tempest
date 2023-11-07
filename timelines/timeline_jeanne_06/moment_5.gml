with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
			scr_shoot_bullet_enemy(1.5,(360 / ((global.difficulty * 2) + 6)) * i,spr_bullet_small_2,1,0,0,false,snd_enemy_fire);
		}
		instance_destroy();
	}
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
			scr_shoot_bullet_enemy(0.75,(360 / ((global.difficulty * 2) + 6)) * i,spr_bullet_med_2,1,0,0,false,snd_enemy_fire);
		}
		instance_destroy();
	}
}
scr_shoot_bullet_enemy(0,0,spr_bullet_large,1,0,0,false,snd_enemy_fire);
for(var i = 0; i < (global.difficulty * 4) + 10; i += 1) {
	scr_shoot_bullet_enemy(1.25,(360 / ((global.difficulty * 4) + 10)) * i,spr_bullet_dagger,0,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1,(360 / ((global.difficulty * 4) + 10)) * i,spr_bullet_dagger,8,0,0,false,snd_enemy_fire);
}