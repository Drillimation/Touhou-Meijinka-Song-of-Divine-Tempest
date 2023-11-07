for(var i = 0; i < 16; i += 1) {
	for(var j = 0; j < global.difficulty + 2; j += 1) {
		scr_shoot_bullet_enemy(1 - (0.1 * j),(360 / 16) * i,spr_bullet_small_2,0,0,0,false,snd_enemy_fire);
	}
}