with (obj_bullet_enemy) {
	if sprite_index == spr_bullet_small_2 and effects_applied == false {
		if instance_exists(obj_player_1) {
			direction = point_direction(x,y,obj_player_1.x,obj_player_1.y);
		}
	}
}