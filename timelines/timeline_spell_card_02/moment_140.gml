randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_seed_2 and image_index == 14 {
		for(var i = 0; i < 12; i += 1) {
			scr_shoot_bullet_enemy(1,((360 / 12) * i),spr_bullet_heart,0,0,0,false,snd_enemy_fire_kira);
		}
		for(var i = 0; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet_enemy(random_range(1,1.25),irandom_range(0,360),spr_bullet_seed_1,8,0,0,false,snd_enemy_fire_kira);		
		}
		instance_destroy();
	}
}