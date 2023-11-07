randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_seed_2 and image_index == 14 {
		for(var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
			scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 6) + 6)) * i),spr_bullet_heart,0,0,0,false,snd_enemy_fire_kira);
		}
		for(var i = 0; i < global.difficulty * 1; i += 1) {
			scr_shoot_bullet_enemy(random_range(0.5,0.75),irandom_range(0,360),spr_bullet_seed_1,8,0,0,false,snd_enemy_fire_kira);
		}
		instance_destroy();
	}
}