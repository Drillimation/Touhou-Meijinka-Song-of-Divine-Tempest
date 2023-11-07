for(var i = 0; i < global.difficulty + 2; i += 1) {
	for(var j = -1; j < 2; j += 1) {
		scr_shoot_bullet_enemy(1.25 - (0.125 * i),(15 * j) + irandom_range(0,360),spr_bullet_small_2,2,0,0,false,snd_enemy_fire)
	}
}