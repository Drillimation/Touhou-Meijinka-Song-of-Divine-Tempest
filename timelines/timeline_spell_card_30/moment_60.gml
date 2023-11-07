randomize();
direction = irandom_range(0,359);
speed = 1;
if direction > 90 or direction < 270 {
	sprite_index = spr_jane_l
}
else {
	sprite_index = spr_jane_r
}
for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
	scr_shoot_bullet_enemy(1.5,(360 / ((global.difficulty * 2) + 6)) * i,spr_bullet_laser,8,0,0,true,snd_enemy_fire_laser);
}
for(var i = 0; i < (global.difficulty * 4) + 12; i += 1) {
	scr_shoot_bullet_enemy(1.5,(360 / ((global.difficulty * 4) + 12)) * i,spr_bullet_note,0,0,0,false,snd_enemy_fire_laser);
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and effects_applied == false {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 8;
		stretch_speed = 0.05;
	}
}