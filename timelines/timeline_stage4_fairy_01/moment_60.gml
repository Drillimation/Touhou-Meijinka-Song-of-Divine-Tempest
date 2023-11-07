for(var i = 0; i < global.difficulty + 2; i += 1) {
	scr_shoot_bullet_enemy(1.25 - (i * 0.1),0,spr_bullet_large,8,0,0,true,snd_enemy_fire);
}
speed -= 0.25;