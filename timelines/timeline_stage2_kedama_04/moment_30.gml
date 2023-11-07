randomize();
for(var i = 0; i < 6 + (global.difficulty * 3); i += 1) {
	scr_shoot_bullet_enemy(random_range(0.75,1.25),(360 / (6 + (global.difficulty * 3))) * i,spr_bullet_small_2,0,0,0,true,snd_enemy_fire_kira);
	scr_shoot_bullet_enemy(random_range(1,1.5),(360 / (6 + (global.difficulty * 3))) * i,spr_bullet_small_2,0,0,0,true,snd_enemy_fire_kira);
}