for(var i = 0; i < (global.difficulty * 5) + 5; i += 1) {
	scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 5) + 5)) * i) + dir,spr_bullet_amulet,15,0,0,false,snd_enemy_fire);
}
dir += 10;