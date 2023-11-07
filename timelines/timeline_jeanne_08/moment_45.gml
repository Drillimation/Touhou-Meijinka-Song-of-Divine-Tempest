with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		sprite_index = spr_bullet_small_2;
		speed -= 0.125;
	}
	if sprite_index == spr_bullet_large {
		sprite_index = spr_bullet_med_2;
		speed -= 0.125;
	}
}
for(var i = 0; i < (global.difficulty * 4) + 10; i += 1) {
	scr_shoot_bullet_enemy(2,(360 / ((global.difficulty * 4) + 10)) * i,spr_bullet_dagger,0,0,0,true,snd_enemy_fire);
}