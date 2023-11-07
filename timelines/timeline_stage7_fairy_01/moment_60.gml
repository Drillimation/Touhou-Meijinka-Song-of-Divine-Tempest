for(var i = -2 - global.difficulty; i < global.difficulty + 3; i += 1) {
	scr_shoot_bullet_enemy(1.5,i * 10,spr_bullet_small_3,6,0,0,true,snd_enemy_fire);
}