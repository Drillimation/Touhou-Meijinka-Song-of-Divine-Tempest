for(var i = 0; i < global.difficulty + 4; i += 1) {
	scr_shoot_bullet_enemy(1.5 - (i * 0.1),0,spr_bullet_kunai,8,0,0,true,snd_enemy_fire);
}
speed -= 0.25;