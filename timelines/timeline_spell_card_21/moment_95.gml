for(var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
	scr_shoot_bullet_enemy(1.25,(360 / ((global.difficulty * 6) + 6)) * i,spr_bullet_small_3,14,0,0,false,snd_enemy_fire);
}
ammo -= 1;