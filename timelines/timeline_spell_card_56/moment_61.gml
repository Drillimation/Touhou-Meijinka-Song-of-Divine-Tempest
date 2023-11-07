with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		direction += 2;
		x_pos = obj_jeanne.x_pos + lengthdir_x(32,direction);
		y_pos = obj_jeanne.y_pos + lengthdir_y(32,direction);
	}
}
_j += 1;