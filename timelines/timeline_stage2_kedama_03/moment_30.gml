randomize();
for(var i = 0; i < 6 + (global.difficulty * 3); i += 1) {
	scr_shoot_bullet_enemy(random_range(0.5,1),(360 / (6 + (global.difficulty * 3))) * i,spr_bullet_small_2,9,0,0,true,snd_enemy_fire_kira);
	scr_shoot_bullet_enemy(random_range(0.75,1.25),(360 / (6 + (global.difficulty * 3))) * i,spr_bullet_small_2,9,0,0,true,snd_enemy_fire_kira);
}