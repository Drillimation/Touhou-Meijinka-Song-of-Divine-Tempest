if _j < 60 {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_small_2 {
			speed += 0.01;
		}
	}
	timeline_position = 241;
}