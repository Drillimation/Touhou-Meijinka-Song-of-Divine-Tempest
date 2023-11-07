if ammo >= 1 {
	randomize();
	dir = irandom_range(0,360);
	timeline_position = 5;
}
/*else {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_seed_1 and effects_applied == false {
			effects_applied = true;
			if instance_exists(obj_player_1) {
				scr_one_channel_sound(snd_enemy_fire_kira);
				direction = point_direction(x,y,obj_player_1.x,obj_player_1.y);
			}
		}
	}
}*/