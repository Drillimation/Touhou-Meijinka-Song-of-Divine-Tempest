randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_seed_1 and image_index == 15 {
		for(var i = 0; i < 2; i += 1) {
			scr_shoot_bullet_enemy(0.75,irandom_range(0,360),spr_bullet_arrow,1,0,0,false,snd_enemy_fire_kira);
		}
		instance_destroy();
	}
}