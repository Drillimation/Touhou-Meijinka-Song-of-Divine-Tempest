for(var i = 0; i < (global.difficulty * 4) + 12; i += 1) {
	scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 4) + 12)) * i) + (ammo * 5),spr_bullet_arrow,2,0,0,false,snd_enemy_fire);
}
ammo -= 1;