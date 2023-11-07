randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 or sprite_index == spr_bullet_seed_2 {
		scr_shoot_bullet_enemy(0.5,irandom_range(0,360),spr_bullet_seed_1,5,0,0,false,snd_enemy_fire_kira);
	}
	if sprite_index == spr_bullet_seed_1 and image_index == 5 {
		speed += 0.1;
	}
}
ammo -= 1;