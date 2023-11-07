if ammo >= 1 {
	timeline_position = 215;
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_dagger and effects_applied == true {
			can_curve = false;
		}
	}
}