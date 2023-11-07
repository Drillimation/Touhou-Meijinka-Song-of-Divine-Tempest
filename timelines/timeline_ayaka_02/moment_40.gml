with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_small_2 {
		scr_one_channel_sound(snd_enemy_fire_kira);
		sprite_index = spr_bullet_amulet;
		gravity = 0.01;
	}
}
randomize();
direction = irandom_range(0,359);
speed = 0.75;
if direction > 90 or direction < 270 {
	sprite_index = spr_ayaka_l
}
else {
	sprite_index = spr_ayaka_r
}