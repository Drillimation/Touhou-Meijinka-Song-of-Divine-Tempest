for(var i = 0; i < global.difficulty + 2; i += 1) {
	for(var j = 0; j < 4; j += 1) {
		scr_shoot_bullet_enemy(1.5 - (i * 0.1),((360 / 4) * j) + dir,spr_bullet_small_2,0,0,0,false,snd_enemy_fire);
	}
}
dir += trn;