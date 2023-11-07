for(var i = 0; i < global.difficulty + 1; i += 1) {
	scr_shoot_bullet_enemy(1.25 - (i * 0.125),360 - (ammo * 10),spr_bullet_dagger,0,0,0,false,snd_enemy_fire);
}
ammo -= 1;