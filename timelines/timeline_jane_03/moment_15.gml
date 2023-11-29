if ammo >= 1 {
	timeline_position = 5;
}
else {
	randomize();
	_j = irandom_range(0,360);
	scr_shoot_bullet_enemy(0.75,_j,spr_bullet_laser,0,0,0,false,snd_enemy_fire);
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_laser and effects_applied == false {
			effects_applied = true;
			can_stretch = true;
			stretch_x = 8;
			stretch_speed = 0.05;
		}
	}
	for(var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
		scr_shoot_bullet_enemy(random_range(0.5,0.75),_j + irandom_range(-45,45),spr_bullet_small_2,8,0,0,true,snd_enemy_fire)
	}
	direction = irandom_range(0,359);
	speed = 1;
	if direction > 90 and direction < 270 {
		sprite_index = spr_jane_l
	}
	else {
		sprite_index = spr_jane_r
	}
}