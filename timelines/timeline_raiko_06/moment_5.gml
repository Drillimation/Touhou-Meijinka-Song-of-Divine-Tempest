for(var i = 0; i < 8; i += 1) {
	scr_shoot_bullet_enemy(1.25,(360 / 8) * i,spr_bullet_note,14,0,0,true,snd_enemy_fire);
}
for(var i = 0; i < (global.difficulty * 4) + 12; i += 1) {
	scr_shoot_bullet_enemy(1.5,(360 / ((global.difficulty * 4) + 12)) * i,spr_bullet_seed_2,2,0,0,false,snd_enemy_fire);
}
ammo -= 1;