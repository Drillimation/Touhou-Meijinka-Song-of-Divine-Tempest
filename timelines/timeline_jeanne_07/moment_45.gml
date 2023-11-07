with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		sprite_index = spr_bullet_small_2;
		speed -= 0.125;
	}
	if sprite_index == spr_bullet_large {
		sprite_index = spr_bullet_med_2;
		speed -= 0.125;
	}
}
timeline_position = 5;