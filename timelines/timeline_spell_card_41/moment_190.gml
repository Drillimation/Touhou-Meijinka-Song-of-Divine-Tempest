with(obj_bullet_enemy) {
	if effects_applied == false and sprite_index == spr_bullet_small_2 {
		speed = 1;
		direction += 180;
		scr_one_channel_sound(snd_enemy_fire_kira);
	}
}