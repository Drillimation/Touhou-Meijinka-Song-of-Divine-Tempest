for(var i = 0; i < (global.difficulty * 4) + 16; i += 1) {
	for(var j = 0; j < 5; j += 1) {
		scr_shoot_bullet_enemy(1 - (j * 0.1),(360 / ((global.difficulty * 4) + 16)) * i,spr_bullet_seed_1,9,0,0,false,snd_enemy_fire);
	}
}