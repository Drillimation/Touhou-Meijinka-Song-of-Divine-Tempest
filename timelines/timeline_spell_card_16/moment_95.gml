randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large and image_index == 1 {
		scr_shoot_bullet_enemy(random_range(0.5,0.75),irandom_range(0,180),spr_bullet_arrowhead,1,0,0,false,snd_enemy_fire);
		scr_shoot_bullet_enemy(random_range(0.5,0.75),irandom_range(0,180),spr_bullet_arrowhead,1,0,0,false,snd_enemy_fire);
	}
}
ammo -= 1;