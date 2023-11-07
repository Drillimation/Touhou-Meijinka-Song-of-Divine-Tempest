scr_shoot_bullet_enemy(1.5,0 + dir,spr_bullet_laser,0,0,0,false,snd_enemy_fire_laser);
scr_shoot_bullet_enemy(1.5,180 + dir,spr_bullet_laser,0,0,0,false,snd_enemy_fire_laser);
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 8;
	}
}