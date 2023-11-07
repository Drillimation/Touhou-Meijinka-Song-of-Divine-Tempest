with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < 12; i += 1) {
			scr_shoot_bullet_enemy(1,(360 / 12) * i,spr_bullet_small_2,image_index,0,0,false,snd_enemy_fire_kira)
		}
		instance_destroy();
	}
}