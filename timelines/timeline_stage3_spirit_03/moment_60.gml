randomize();
scr_shoot_bullet_enemy(1.25,0,spr_bullet_laser,15,0,0,true,snd_enemy_fire_laser);
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and effects_applied == false {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 4;
	}
}
for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
	scr_shoot_bullet_enemy(random_range(0.5,1),irandom_range(-30,30),spr_bullet_small_3,15,0,0,true,snd_enemy_fire)
}