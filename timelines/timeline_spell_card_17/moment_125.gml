with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser {
		for(var i = 0; i < 5 + global.difficulty; i += 1) {
			scr_shoot_bullet_enemy(0.75,(360 / (5 + global.difficulty)) * i,spr_bullet_med_1,15,0,0,false,snd_enemy_fire_kira);
		}
	}
}