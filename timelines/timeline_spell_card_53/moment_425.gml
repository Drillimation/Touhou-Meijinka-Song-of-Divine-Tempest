for(var i = 0; i < (global.difficulty * 3) + 9; i += 1) {
	scr_shoot_bullet_enemy(1.5,(360 / ((global.difficulty * 3) + 9)) * i,spr_bullet_large,1,0,0,true,snd_enemy_fire)
}
ammo -= 1;