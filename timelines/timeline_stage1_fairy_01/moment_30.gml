randomize();
for(var i = 0; i < global.difficulty + 1; i += 1) {
	scr_shoot_bullet_enemy(0.75,irandom_range(-15,15),spr_bullet_small_2,2,0,0,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(1,irandom_range(-15,15),spr_bullet_kunai,2,0,0,true,snd_enemy_fire);
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_kunai and image_index == 2 and effects_applied == false {
		effects_applied = true;
		can_jitter = true;
		jitter_speed = 5;
		jitter_direction = 15;
	}
}