randomize();
scr_shoot_bullet_enemy(1.25,irandom_range(0,360),spr_bullet_laser,15,0,0,false,snd_enemy_fire);
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and image_index = 15 and effects_applied == false {
		effects_applied = true;
		image_xscale = 4;
	}
}