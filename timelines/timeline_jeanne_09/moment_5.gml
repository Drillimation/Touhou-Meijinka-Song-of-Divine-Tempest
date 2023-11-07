for(var i = 0; i < (global.difficulty * 2) + 10; i += 1) {
	for(var j = 0; j < 4; j += 1) {
		scr_shoot_bullet_enemy(1.5 - (j * 0.125),((360 / ((global.difficulty * 2) + 10)) * i) + (j * 5),spr_bullet_large,1,0,0,false,snd_enemy_fire);
	}
}
randomize();
direction = irandom_range(0,359);
speed = 0.5;
if direction > 90 or direction < 270 {
	sprite_index = spr_jeanne_l
}
else {
	sprite_index = spr_jeanne_r
}