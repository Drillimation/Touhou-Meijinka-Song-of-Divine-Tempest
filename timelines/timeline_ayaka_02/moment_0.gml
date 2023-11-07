for(var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
	scr_shoot_bullet_enemy(1,(360 / ((global.difficulty * 4) + 4)) * i,spr_bullet_small_2,0,0,0,false,snd_enemy_fire);
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_small_2 and image_index == 0 {
		can_curve = true;
		curve_direction = 1;
		curve_speed = 5;
	}
}