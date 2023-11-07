with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_small_2 and image_index == 7 {
		scr_shoot_bullet_enemy(0.75,irandom_range(225,315),spr_bullet_arrowhead,8,0,0,false,snd_enemy_fire_kira);
		instance_destroy();
	}
}