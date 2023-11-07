for(var i = 0; i < 6; i += 1) {
	scr_shoot_bullet_enemy(0,(360 / 6) * i,spr_bullet_laser,15,0,0,false,snd_enemy_fire_laser);
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and effects_applied == false {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 186;
		stretch_speed = 0.05;
	}
}