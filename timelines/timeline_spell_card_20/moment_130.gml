with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < (global.difficulty * 10) + 10; i += 1) {
			scr_shoot_bullet_enemy(random_range(0.75,1.25),irandom_range(0,360),choose(spr_bullet_arrow,spr_bullet_small_2,spr_bullet_seed_2),irandom_range(11,13),0,0,false,snd_enemy_fire_kira);
		}
		instance_destroy();
	}
}

randomize();
direction = irandom_range(0,360)
speed = 1;
if direction > 90 or direction < 270 {
	sprite_index = spr_kagami_l
}
else {
	sprite_index = spr_kagami_r
}