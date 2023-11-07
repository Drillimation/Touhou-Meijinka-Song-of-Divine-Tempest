if ammo >= 1 {
	with(obj_bullet_enemy) {
		if effects_applied == false and image_index == 5 {
			effects_applied = true;
			speed += 0.25;
			direction += 180;
			image_index = 10;
		}
	}
	timeline_position = 305;
}