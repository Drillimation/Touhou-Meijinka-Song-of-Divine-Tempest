for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
	scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 2) + 6)) * i) + _sm,spr_bullet_seed_2,9,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 2) + 6)) * i) - _sm,spr_bullet_seed_2,7,0,0,false,snd_enemy_fire);
}
if _sm mod 90 == 0 {
	for(var i = 0; i < (global.difficulty * 2) + 4; i += 1) {
		scr_shoot_bullet_enemy(1.5,((360 / ((global.difficulty * 2) + 4)) * i) + _sm,spr_bullet_large,8,0,0,true,snd_enemy_fire);
	}
}