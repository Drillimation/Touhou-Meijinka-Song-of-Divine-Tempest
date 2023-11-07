for(var i = 0; i < (global.difficulty * 5) + 5; i += 1) {
	scr_shoot_bullet_enemy(1,(360 / ((global.difficulty * 5) + 5)) * i,spr_bullet_large,0,0,0,true,snd_enemy_fire);
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large and image_index == 9 {
		sprite_index = spr_bullet_note;
		speed += 0.25;
		scr_one_channel_sound(snd_enemy_fire_kira);
	}
}