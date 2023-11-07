randomize();
direction = irandom_range(0,359);
speed = 0.5;
if direction > 90 or direction < 270 {
	sprite_index = spr_jeanne_l
}
else {
	sprite_index = spr_jeanne_r
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_med_2 {
		scr_shoot_bullet_enemy(1,direction + 15,spr_bullet_small_2,1,0,0,false,snd_enemy_fire);
		scr_shoot_bullet_enemy(1,direction - 15,spr_bullet_small_2,1,0,0,false,snd_enemy_fire);
		instance_destroy();
	}
	if sprite_index == spr_bullet_large {
		scr_shoot_bullet_enemy(1.25,direction + 15,spr_bullet_med_2,1,0,0,false,snd_enemy_fire);
		scr_shoot_bullet_enemy(1.25,direction - 15,spr_bullet_med_2,1,0,0,false,snd_enemy_fire);
		instance_destroy();
	}
}
for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
	scr_shoot_bullet_enemy(1.5,(360 / ((global.difficulty * 2) + 6)) * i,spr_bullet_large,1,0,0,false,snd_enemy_fire);
}