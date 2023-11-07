dir += 15
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_1 {
		for(var i = 0; i < 5 + global.difficulty; i += 1) {
			scr_shoot_bullet_enemy(0.5,(360 / (5 + global.difficulty)) * i,spr_bullet_small_2,2,0,0,false,snd_enemy_fire_kira);
		}
		instance_destroy();
	}
}
timeline_position = 65;