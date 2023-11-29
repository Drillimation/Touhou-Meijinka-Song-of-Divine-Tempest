for(var i = 0; i < (global.difficulty * 2) + 8; i += 1) {
	scr_shoot_bullet_enemy(0.5,(360 / ((global.difficulty * 2) + 8)) * i,spr_bullet_large,8,0,0,true,snd_enemy_fire);
}
direction = irandom_range(0,359);
speed = 0.5;
if direction > 90 and direction < 270 {
	sprite_index = spr_jeanne_l
}
else {
	sprite_index = spr_jeanne_r
}