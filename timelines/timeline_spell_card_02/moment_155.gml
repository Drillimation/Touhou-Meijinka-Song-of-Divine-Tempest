randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_seed_1 and image_index == 8 {
		scr_shoot_bullet_enemy(0.25,irandom_range(0,360),spr_bullet_seed_2,15,0,0,false,snd_enemy_fire);
	}
}
ammo -= 1;