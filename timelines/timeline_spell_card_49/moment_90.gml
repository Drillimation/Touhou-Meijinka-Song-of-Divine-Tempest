with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser {
		for(var i = 0; i < 3; i += 1) {
			scr_shoot_bullet_enemy(1 - (0.1 * i),direction + 90,spr_bullet_kunai,12,0,0,false,snd_enemy_fire_kira);
		}
	}
}