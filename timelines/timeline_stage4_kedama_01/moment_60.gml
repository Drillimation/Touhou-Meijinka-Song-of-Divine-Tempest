for(var i = -1; i < 2; i += 1) {
	for(var j = 0; j < global.difficulty + 1; j += 1) {
		scr_shoot_bullet_enemy(1.5 - (0.125 * j),15 * i,spr_bullet_kunai,9,0,0,true,snd_enemy_fire);
	}
}