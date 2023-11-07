randomize();
_xx = irandom_range(-32,32);
_yy = irandom_range(-32,32);
for(var i = 0; i < (global.difficulty * 4) + 8; i += 1) {
	scr_shoot_bullet_enemy(1.25,(360 / ((global.difficulty * 4) + 8)) * i,spr_bullet_dagger,0,_xx,_yy,false,snd_enemy_fire)
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_dagger and effects_applied == false {
		effects_applied = true;
		can_curve = true;
		curve_direction = 1;
		curve_speed = 1;
	}
}
for(var i = 0; i < (global.difficulty * 4) + 8; i += 1) {
	scr_shoot_bullet_enemy(1.25,(360 / ((global.difficulty * 4) + 8)) * i,spr_bullet_dagger,0,_xx,_yy,false,snd_enemy_fire)
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_dagger and effects_applied == false {
		effects_applied = true;
		can_curve = true;
		curve_direction = -1;
		curve_speed = 1;
	}
}
