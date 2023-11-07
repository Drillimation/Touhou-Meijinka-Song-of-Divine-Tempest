randomize();
for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
	scr_shoot_bullet_enemy(1,irandom_range(-30,30),spr_bullet_small_2,9,0,0,true,snd_enemy_fire);
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_small_2 and image_index == 9 and effects_applied == false {
		effects_applied = true;
		gravity = 0.005;
	}
}