with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < global.difficulty + 3; i += 1) {
			scr_shoot_bullet_enemy(1.5,(360 / (global.difficulty + 3)) * i,spr_bullet_laser,0,0,0,false,snd_enemy_fire_laser);
		}
	}
}