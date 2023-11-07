with(obj_bullet_enemy) {
	if image_index == 8 and sprite_index == spr_bullet_dagger {
		scr_shoot_bullet_enemy(1,0,spr_bullet_dagger,0,0,0,true,snd_enemy_fire_kira);
		instance_destroy();
	}
}
timeline_position = 30;