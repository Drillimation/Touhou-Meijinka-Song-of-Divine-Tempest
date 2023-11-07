if ammo >= 1 {
	timeline_position = 5;
}
else {
	randomize();
	direction = irandom_range(0,359);
	speed = 0.75;
	if direction > 90 or direction < 270 {
		sprite_index = spr_emiri_l
	}
	else {
		sprite_index = spr_emiri_r
	}
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_seed_2 and image_index == 1 {
			scr_shoot_bullet_enemy(1.25,0,spr_bullet_seed_1,15,0,0,true,snd_enemy_fire_kira);
			instance_destroy();
		}
	}
}