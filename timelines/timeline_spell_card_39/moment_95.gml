randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet_enemy(1.25 - (0.125 * i),irandom_range(0,360),spr_bullet_small_2,image_index,0,0,false,snd_enemy_fire);
		}
	}
}
ammo -= 1;