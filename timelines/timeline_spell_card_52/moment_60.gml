randomize();
_xx = irandom_range(-96,96)
for(var i = 0; i < global.difficulty + 2; i += 1) {
	scr_shoot_bullet_enemy(0.5,irandom_range(240,300),spr_bullet_small_2,choose(8,9),_xx,-16,false,snd_enemy_fire);
}
_j += 1

if instance_exists(obj_player_1) {
	if _j mod 4 == 0 {
		if irandom(2) == 1 {
			for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
				scr_shoot_bullet_enemy(random_range(1.5,2),0,choose(spr_bullet_med_1,spr_bullet_med_2),7,-112,y - (obj_player_1.y),true,snd_enemy_fire);
			}
		}
		else {
			for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
				scr_shoot_bullet_enemy(random_range(1.5,2),0,choose(spr_bullet_med_1,spr_bullet_med_2),7,112,y - (obj_player_1.y),true,snd_enemy_fire);
			}
		}
	}
	if _j mod 16 == 0 {
		for(var i = 0; i < (global.difficulty * 15) + 15; i += 1) {
			scr_shoot_bullet_enemy(random_range(0.75,1.5),irandom_range(0,360),spr_bullet_heart,0,0,0,false,snd_enemy_fire_kira);
		}
	}
}