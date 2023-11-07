for(var i = -3; i < 4; i += 1) {
	for(var j = 0; j < global.difficulty + 1; j += 1) {
		scr_shoot_bullet_enemy(1 - (0.1 * j),20 * i,spr_bullet_note,0,0,0,true,snd_enemy_fire);
	}
}
