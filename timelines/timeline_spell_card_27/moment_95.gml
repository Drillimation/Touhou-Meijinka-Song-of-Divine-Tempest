with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		scr_shoot_bullet_enemy(1,direction + other.dir,spr_bullet_small_2,15,0,0,false,snd_enemy_fire);
		scr_shoot_bullet_enemy(1.125,direction + other.dir,spr_bullet_arrowhead,1,0,0,false,snd_enemy_fire);
		scr_shoot_bullet_enemy(1.25,direction + other.dir,spr_bullet_arrowhead,2,0,0,false,snd_enemy_fire);
	}
	if sprite_index == spr_bullet_laser and effects_applied == false {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 8;
		stretch_speed = 0.05;
	}
}
dir += 10;