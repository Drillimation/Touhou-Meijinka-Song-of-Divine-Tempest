with(obj_bullet_enemy) {
	if effects_applied == false and image_index == 0 {
		effects_applied = true;
		if instance_exists(obj_player_1) {
			direction = point_direction(x,y,obj_player_1.x,obj_player_1.y);
			image_index = 10;
			speed += 0.25;
		}
	}
}