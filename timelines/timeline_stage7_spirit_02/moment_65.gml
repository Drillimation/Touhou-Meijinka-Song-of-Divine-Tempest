for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
	for(var j = 0; j < 4; j += 1) {
		scr_shoot_bullet_enemy(1.25  - (0.125 * j),(360 / ((global.difficulty * 2) + 6)) * i,spr_bullet_large,9,0,0,false,snd_enemy_fire);
	}
}
for(var i = 0; i < (global.difficulty * 3) + 6; i += 1) {
	scr_shoot_bullet_enemy(1,(360 / ((global.difficulty * 3) + 6)) * i,spr_bullet_med_2,0,0,0,false,snd_enemy_fire);
}