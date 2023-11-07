for(var i = 0; i < 4 + (global.difficulty * 2); i += 1) {
	scr_shoot_bullet_enemy(1,((360 / (4 + (global.difficulty * 2))) * i) + dir,spr_bullet_seed_2,10,0,0,true,snd_enemy_fire_kira);
}
tms += 1;
dir += (tms * 5);