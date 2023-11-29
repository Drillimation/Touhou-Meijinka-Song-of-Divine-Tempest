randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < (global.difficulty * 8) + 8; i += 1) {
			scr_shoot_bullet_enemy(random_range(0.75,1.25),irandom_range(0,360),spr_bullet_med_1,0,0,0,false,snd_enemy_fire_kira);
		}
		instance_destroy();
	}
}
direction = irandom_range(0,359);
speed = 0.75;
if direction > 90 and direction < 270 {
	sprite_index = spr_ayaka_l
}
else {
	sprite_index = spr_ayaka_r
}