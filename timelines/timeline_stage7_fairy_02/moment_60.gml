for(var i = 0; i < (global.difficulty * 4) + 12; i += 1) {
	scr_shoot_bullet_enemy(1.5,(360 / ((global.difficulty * 4) + 12)) * i,spr_bullet_small_3,0,0,0,true,snd_enemy_fire);
}