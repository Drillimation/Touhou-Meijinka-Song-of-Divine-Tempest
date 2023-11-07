for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
	scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 2) + 6)) * i),spr_bullet_heart,5,0,0,false,snd_enemy_fire_kira);
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_heart and effects_applied == false {
		effects_applied = true;
		can_spawnmore = true;
		can_spawnmulti = false;
		spawn_i = (global.difficulty * 2) + 2;
		spawn_j = 1;
		spawn_speed = 30;
		bullet_arg[0] = 0.25;
		bullet_arg[1] = irandom_range(0,360);
		bullet_arg[2] = spr_bullet_seed_1;
		bullet_arg[3] = 14;
		bullet_arg[4] = 0;
		bullet_arg[5] = 0;
		bullet_arg[6] = false;
		bullet_arg[7] = snd_enemy_fire;
	}
}