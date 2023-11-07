for(var i = 0; i < 12 + (global.difficulty * 4); i += 1) {
	scr_shoot_bullet_enemy(1.25,(360 / (12 + (global.difficulty * 4))) * i,spr_bullet_dagger,8,0,0,false,snd_enemy_fire);
}