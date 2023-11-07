randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		switch(image_index) {
			case 8:
				if other._j mod 30 == 0 {
					for(var i = 0; i < 6; i += 1) {
						scr_shoot_bullet_enemy(1.5 - (global.difficulty * 0.125),((360 / 6) * i) + other._j,spr_bullet_seed_1,8,0,0,false,snd_enemy_fire);
					}
				}
				break;
			case 11:
				if other._j mod 30 == 0 {
					for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
						scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(0,360),spr_bullet_heart,5,0,0,false,snd_enemy_fire);
					}
				}
				break;
			case 14:
				if other._j mod 30 == 0 {
					for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
						scr_shoot_bullet_enemy(1.25,(i * 5) + irandom_range(0,360),spr_bullet_seed_2,7,0,0,false,snd_enemy_fire);
					}
				}
				break;
		}
	}
}
_j += 1;