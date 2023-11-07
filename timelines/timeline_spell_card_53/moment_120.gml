randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < (global.difficulty * 12) + 12; i += 1) {
			scr_shoot_bullet_enemy(random_range(1,2),irandom_range(0,360),spr_bullet_small_2,2,0,0,false,snd_enemy_fire_kira);
		}
		instance_destroy();
	}
}