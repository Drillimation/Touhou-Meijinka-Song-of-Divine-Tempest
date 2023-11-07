with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		direction += 1
		x = other.x + lengthdir_x(48,direction);
		y = other.y + lengthdir_y(48,direction);
	}
	if sprite_index == spr_bullet_med_2 {
		direction -= 1
		x = other.x + lengthdir_x(48,direction);
		y = other.y + lengthdir_y(48,direction);
	}
}
_j += 1;

if _j mod 10 == 0 {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_large {
			scr_shoot_bullet_enemy(1,direction + 180,spr_bullet_seed_1,11,0,0,false,snd_enemy_fire)
		}
	}
}
if _j mod 20 == 0 {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_large {
			scr_shoot_bullet_enemy(1,direction + 180,spr_bullet_small_2,9,0,0,false,snd_enemy_fire)
		}
	}
}