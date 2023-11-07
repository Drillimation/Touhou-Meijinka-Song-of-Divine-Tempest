randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		if image_index == 0 {
			for(var i = 0; i < (global.difficulty * 5) + 10; i += 1) {
				scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(180,360),choose(spr_bullet_med_1,spr_bullet_small_2),15,0,0,false,snd_enemy_fire);
			}
		}
		if image_index == 2 {
			for(var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
				scr_shoot_bullet_enemy(2 - (i * 0.1),0,spr_bullet_arrowhead,10,0,0,true,snd_enemy_fire);
			}
		}
		if image_index == 9 {
			for(var i = 0; i < (global.difficulty * 3) + 3; i += 1) {
				scr_shoot_bullet_enemy(1.5,irandom_range(180,360),spr_bullet_laser,0,0,0,false,snd_enemy_fire_laser);
			}
		}
	}
}