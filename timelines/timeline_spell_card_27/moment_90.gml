dir = 0;
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		scr_shoot_bullet_enemy(0,direction + 90,spr_bullet_laser,0,0,0,false,snd_enemy_fire_laser);
	}
}