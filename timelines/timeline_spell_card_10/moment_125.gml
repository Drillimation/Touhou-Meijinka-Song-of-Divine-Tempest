for(var i = 0; i < (global.difficulty * 2) + 5; i += 1) {
	scr_shoot_bullet_enemy(0.75,(360 / ((global.difficulty * 2) + 5)) * i,spr_bullet_large,11,0,0,true,snd_enemy_fire);
}
ammo -= 1;
if ammo % 2 == 0 {
	scr_shoot_bullet_enemy(1.5,0,spr_bullet_laser,15,0,0,true,snd_enemy_fire_laser);
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_laser and effects_applied == false {
			effects_applied = true;
			can_stretch = true;
			stretch_x = 8;
		}
	}
}