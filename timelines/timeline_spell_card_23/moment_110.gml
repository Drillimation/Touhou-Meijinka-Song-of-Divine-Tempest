with(obj_bullet_enemy) {
	if effects_applied == false {
		scr_one_channel_sound(snd_enemy_fire_kira)
		effects_applied = true;
		direction -= 90;
	}
}