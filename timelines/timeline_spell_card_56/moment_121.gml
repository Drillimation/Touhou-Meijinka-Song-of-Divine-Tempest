with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		scr_shoot_bullet_enemy(0.5,direction + other._j,spr_bullet_small_2,0,0,0,false,snd_enemy_fire);
		scr_shoot_bullet_enemy(0.5,direction + other._j + 180,spr_bullet_small_2,0,0,0,false,snd_enemy_fire);
	}
}
_j += 1;