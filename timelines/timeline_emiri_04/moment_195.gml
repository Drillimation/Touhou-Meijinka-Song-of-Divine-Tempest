for(var i = 0; i < global.difficulty + 1; i += 1) {
	scr_shoot_bullet_enemy(1.25 - (i * 0.125),360 - (ammo * 10),spr_bullet_dagger,0,0,0,false,snd_enemy_fire);
}
if ammo mod 9 == 0 {
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_laser {
			for(var i = 0; i < 8; i += 1) {
				scr_shoot_bullet_enemy(0.75,(360 / 8) * i,spr_bullet_small_2,8,0,0,false,snd_enemy_fire_kira);
			}
		}
	}
}
ammo -= 1;