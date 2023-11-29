randomize();
ammo = 8;
dir = irandom_range(0,360);
direction = irandom_range(0,359);
speed = 0.5;
if direction > 90 and direction < 270 {
	sprite_index = spr_raiko_l
}
else {
	sprite_index = spr_raiko_r
}
for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
	scr_shoot_bullet_enemy(1,(360 / ((global.difficulty * 2) + 6)) * i,spr_bullet_seed_1,7,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(0.9,(360 / ((global.difficulty * 2) + 6)) * i,spr_bullet_seed_1,8,0,0,false,snd_enemy_fire);
}