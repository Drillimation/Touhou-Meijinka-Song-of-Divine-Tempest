randomize();
scr_shoot_bullet_enemy(1,irandom_range(40,140),spr_bullet_seed_2,0,0,0,false,snd_enemy_fire);
scr_shoot_bullet_enemy(1,irandom_range(40,140),spr_bullet_seed_2,8,0,0,false,snd_enemy_fire);
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_seed_2 and image_index == 0 and effects_applied == false {
		effects_applied = true
		bullet_arg[0] = 1;
		bullet_arg[1] = irandom_range(180,360);
		bullet_arg[2] = spr_bullet_med_2;
		bullet_arg[3] = 0;
		bullet_arg[4] = 0;
		bullet_arg[5] = 0;
		bullet_arg[6] = false;
		bullet_arg[7] = snd_enemy_fire;

		can_spawnlocation = true;
		spawn_location_x1 = 8;
		spawn_location_y1 = 8;
		spawn_location_x2 = 248;
		spawn_location_y2 = 280;
	}
	if sprite_index == spr_bullet_seed_2 and image_index == 8 and effects_applied == false {
		effects_applied = true
		bullet_arg[0] = 1;
		bullet_arg[1] = irandom_range(180,360);
		bullet_arg[2] = spr_bullet_med_2;
		bullet_arg[3] = 8;
		bullet_arg[4] = 0;
		bullet_arg[5] = 0;
		bullet_arg[6] = false;
		bullet_arg[7] = snd_enemy_fire;

		can_spawnlocation = true;
		spawn_location_x1 = 8;
		spawn_location_y1 = 8;
		spawn_location_x2 = 248;
		spawn_location_y2 = 280;
	}
}
ammo -= 1;