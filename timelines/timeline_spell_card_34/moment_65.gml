with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		if x < 128 {
			for(var i = 0; i < global.difficulty + 1; i += 1) {
				scr_shoot_bullet_enemy(0.75 - (i * 0.1),0,spr_bullet_heart,14,0,0,false,snd_enemy_fire);
			}
		}
		else {
			for(var i = 0; i < global.difficulty + 1; i += 1) {
				scr_shoot_bullet_enemy(0.75 - (i * 0.1),180,spr_bullet_heart,8,0,0,false,snd_enemy_fire);
			}
		}
	}
}
scr_shoot_bullet_enemy(0.75,90,spr_bullet_med_2,15,-112,208,false,snd_enemy_fire);
scr_shoot_bullet_enemy(0.75,90,spr_bullet_med_2,15,112,208,false,snd_enemy_fire);
ammo -= 1;