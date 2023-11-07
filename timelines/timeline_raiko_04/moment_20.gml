if ammo >= 1 {
	randomize();
	dir = irandom_range(0,360);
	timeline_position = 5;
}
/*else {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_seed_1 and effects_applied == false {
			effects_applied = true;
			scr_one_channel_sound(snd_enemy_fire_kira);
			randomize();
			direction = irandom_range(0,360);
		}
	}
}*/