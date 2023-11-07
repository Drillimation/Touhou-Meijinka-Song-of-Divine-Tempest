for(var i = 0; i < 16; i += 1) {
	scr_shoot_bullet_enemy(1.25,(360 / 16) * i,spr_bullet_dagger,0,32,0,false,snd_enemy_fire);
	if global.difficulty >= 1 {
		for(var j = 1; j < global.difficulty; j += 1) {
			scr_shoot_bullet_enemy(1.125 - (j * 0.125),(360 / 16) * i,spr_bullet_dagger,0,32,0,false,snd_enemy_fire);
		}
	}
}