randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and image_index == 15 {
		for(var i = 0; i < 2; i += 1) {
			scr_shoot_bullet_enemy(0.25,irandom_range(0,360),spr_bullet_small_2,15,0,0,false,snd_enemy_fire);
		}
	}
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_small_2 and image_index == 15 {
		gravity = 0.01;
	}
}
ammo -= 1;