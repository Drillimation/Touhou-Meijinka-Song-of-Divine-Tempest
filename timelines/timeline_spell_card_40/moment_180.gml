for(var i = 0; i < 20; i += 1) {
	for(var j = 0; j < global.difficulty + 1; j += 1) {
		scr_shoot_bullet_enemy(1 - (0.1 * j),(180 / 20) * i,spr_bullet_small_2,8,0,0,false,snd_enemy_fire);
	}
}