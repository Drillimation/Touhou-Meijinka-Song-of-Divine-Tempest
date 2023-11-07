if ammo >= 1 {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_seed_2 and image_index == 15 {
			speed += 0.2;
		}
	}
	timeline_position = 155
}