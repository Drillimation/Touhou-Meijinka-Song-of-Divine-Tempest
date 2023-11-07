randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		instance_destroy();
		for(var i = 0; i < 4; i += 1) {
			scr_shoot_bullet_enemy(0.5,irandom_range(-90,90),spr_bullet_small_2,2,0,0,true,snd_enemy_fire_kira);
		}
	}
}
randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_small_1 {
		gravity = 0.001;
	}
}