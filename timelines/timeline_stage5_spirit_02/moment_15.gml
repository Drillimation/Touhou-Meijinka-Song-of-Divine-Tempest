randomize();
for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
	scr_shoot_bullet_enemy(random_range(0.75,1.25),dir + irandom_range(-15,15),choose(spr_bullet_med_1,spr_bullet_med_2,spr_bullet_small_2),8,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(random_range(0.75,1.25),(dir + irandom_range(-15,15)) + 180,choose(spr_bullet_med_1,spr_bullet_med_2,spr_bullet_small_2),8,0,0,false,snd_enemy_fire);
}
dir += trn;