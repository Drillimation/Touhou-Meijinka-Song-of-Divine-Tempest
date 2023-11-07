for(var i = 0; i < (global.difficulty * 5) + 5; i += 1) {
	for(var j = 0; j < 4; j += 1) {
		scr_shoot_bullet_enemy(1.25 - (0.125 * j),(360 / ((global.difficulty * 5) + 5)) * i,spr_bullet_small_2,15,0,0,false,snd_enemy_fire);
	}
}