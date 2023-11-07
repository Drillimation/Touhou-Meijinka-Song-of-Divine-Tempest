with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and effects_applied == true {
		for(var i = 0; i < global.difficulty + 2; i += 1) {
			scr_shoot_bullet_enemy(1.25 - (i * 0.125),direction + 90,spr_bullet_seed_1,8,0,0,false,snd_enemy_fire_kira);
			scr_shoot_bullet_enemy(1.25 - (i * 0.125),direction - 90,spr_bullet_seed_1,8,0,0,false,snd_enemy_fire_kira);
		}
		effects_applied = false;
	}
}