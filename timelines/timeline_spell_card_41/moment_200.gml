for(var i = 0; i < 5; i += 1) {
	scr_shoot_bullet_enemy(2 - (i * 0.2),0,spr_bullet_large,8,0,0,true,snd_enemy_fire);
}
ammo -= 1;