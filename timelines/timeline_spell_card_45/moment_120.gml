for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
	scr_shoot_bullet_enemy(0.5,(360 / ((global.difficulty * 2) + 2)) * i,spr_bullet_large,1,0,0,true,snd_enemy_fire)
}