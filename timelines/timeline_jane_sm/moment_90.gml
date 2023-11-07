with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < (global.difficulty * 2) + 4; i += 1) {
			scr_shoot_bullet_enemy(1.5 - (i * 0.1),0,spr_bullet_kunai,9,0,0,true,snd_enemy_fire_kira);
		}
		instance_destroy();
	}
}