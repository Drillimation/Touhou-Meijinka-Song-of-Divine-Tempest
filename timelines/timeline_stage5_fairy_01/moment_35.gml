randomize();
for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
	scr_shoot_bullet_enemy(1.2,irandom_range(-90,90),spr_bullet_seed_2,9,0,0,true,snd_enemy_fire)
}
ammo -= 1;