with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large and image_index == 0 {
		instance_destroy();
		for(var i = 0; i < 4 + (global.difficulty * 2); i += 1) {
			scr_shoot_bullet_enemy(0.75,(360 / (4 + (global.difficulty * 2))) * i,spr_bullet_arrow,9,0,0,true,snd_enemy_fire_kira);
		}
	}
}
randomize();
direction = irandom_range(0,359);
speed = 1;
if direction > 90 and direction < 270 {
	sprite_index = spr_kaori_l
}
else {
	sprite_index = spr_kaori_r
}