for(var i = 0; i < global.difficulty + 5; i += 1) {
	scr_shoot_bullet_enemy(1.5,(360 / (global.difficulty + 5)) * i,spr_bullet_laser,2,0,0,true,snd_enemy_fire_laser)
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and effects_applied == false {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 4;
		stretch_speed = 0.05;
	}
}