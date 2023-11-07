with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		if irandom(4) == 0 {
			for(var i = 0; i < 8; i += 1) {
				scr_shoot_bullet_enemy(1.5,(360 / 8) * i,spr_bullet_small_1,0,0,0,false,snd_enemy_fire_kira);
			}
			instance_destroy();
		}
	}
}
timeline_position = 60;