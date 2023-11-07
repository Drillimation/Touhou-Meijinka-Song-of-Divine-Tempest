randomize();
for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
	scr_shoot_bullet_enemy(0.5,270,spr_bullet_small_2,3,irandom_range(-112,112),-32,false,snd_enemy_fire);
}
with(obj_bullet_enemy) {
	if y_pos > 256 and effects_applied == false {
		scr_one_channel_sound(snd_enemy_fire_kira);
		effects_applied = true;
		sprite_index = spr_bullet_kunai;
		direction += choose(-45,45);
	}
}