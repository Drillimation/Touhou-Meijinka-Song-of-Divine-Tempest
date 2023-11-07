for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
	scr_shoot_bullet_enemy(0.25,((360 / ((global.difficulty * 2) + 6)) * i) + (ammo * 10),spr_bullet_large,0,0,0,false,snd_enemy_fire);
}
ammo -= 1;