scr_shoot_bullet_enemy(1,0,spr_bullet_laser,12,0,0,true,snd_enemy_fire_laser);
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and effects_applied == false {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 6;
	}
}
speed = 1.25;