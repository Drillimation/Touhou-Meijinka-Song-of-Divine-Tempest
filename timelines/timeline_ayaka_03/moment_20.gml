for(var i = 0; i < (global.difficulty * 2) + 5; i += 1) {
	scr_shoot_bullet_enemy(1,(360 / ((global.difficulty * 2) + 5)) * i,spr_bullet_large,8,0,0,false,snd_enemy_fire);
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large and image_index == 8 {
		can_curve = true;
		curve_direction = -1;
		curve_speed = 5;
	}
}