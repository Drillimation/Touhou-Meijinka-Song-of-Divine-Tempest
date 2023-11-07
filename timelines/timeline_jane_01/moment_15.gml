if ammo >= 1 {
	timeline_position = 5;
}
else {
	randomize();
	scr_shoot_bullet_enemy(0.75,0,spr_bullet_large,0,0,0,true,snd_enemy_fire);
	for(var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
		scr_shoot_bullet_enemy(random_range(0.5,0.75),irandom_range(-45,45),spr_bullet_note,choose(0,8),0,0,true,snd_enemy_fire)
	}
	direction = irandom_range(0,359);
	speed = 1;
	if direction > 90 or direction < 270 {
		sprite_index = spr_jane_l
	}
	else {
		sprite_index = spr_jane_r
	}
}