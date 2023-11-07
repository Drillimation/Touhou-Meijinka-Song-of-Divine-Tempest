scr_shoot_bullet_enemy(1.5,0,spr_bullet_large,15,0,0,true,snd_enemy_fire);
scr_shoot_bullet_enemy(1,0,spr_bullet_laser,15,0,0,true,snd_enemy_fire);
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and effects_applied == false {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 8;
		stretch_speed = 0.05;
	}
}
ammo -= 1;