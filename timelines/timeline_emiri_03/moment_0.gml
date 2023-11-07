randomize();
speed = 0;
sprite_index = spr_emiri
ammo = 18;
for(var i = 0; i < (global.difficulty * 4) + 12; i += 1) {
	scr_shoot_bullet_enemy(random_range(0.5,1),irandom_range(0,360),spr_bullet_seed_2,1,0,0,false,snd_enemy_fire);
}