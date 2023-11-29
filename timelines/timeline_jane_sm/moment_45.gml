if ammo >= 1 {
	timeline_position = 35;
}
else {
	scr_shoot_bullet_enemy(0.75,0,spr_bullet_large,1,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(0.75,180,spr_bullet_large,1,0,0,false,snd_enemy_fire);
	randomize();
	direction = irandom_range(0,359);
	speed = 1;
	if direction > 90 and direction < 270 {
		sprite_index = spr_jane_sm_l
	}
	else {
		sprite_index = spr_jane_sm_r
	}
}