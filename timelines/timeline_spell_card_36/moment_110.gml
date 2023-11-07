with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		randomize();
		for(var i = 0; i < 6; i += 1) {
			scr_shoot_bullet_enemy(1,irandom_range(0,360),spr_bullet_note,12,0,0,false,snd_enemy_fire_kira);
		}
		instance_destroy();
	}
}