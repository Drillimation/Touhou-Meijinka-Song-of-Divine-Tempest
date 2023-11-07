randomize();
for(var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
	scr_shoot_bullet_enemy(random_range(0.75,1.25),irandom_range(0,360),spr_bullet_small_3,2,-32,0,false,snd_enemy_fire);
}
for(var i = 0; i < (global.difficulty * 2) + 8; i += 1) {
	scr_shoot_bullet_enemy(0.5,(360 / ((global.difficulty * 2) + 8)) * i,spr_bullet_laser,2,-32,0,true,snd_enemy_fire_laser);
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and effects_applied == false {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 4;
		stretch_speed = 0.05;
	}
}