for(var i = 0; i < 8; i += 1) {
	scr_shoot_bullet_enemy(1,(360 / 8) * i,spr_bullet_note,14,0,0,true,snd_enemy_fire);
}
for(var i = 0; i < (global.difficulty * 4) + 12; i += 1) {
	scr_shoot_bullet_enemy(1.25,(360 / ((global.difficulty * 4) + 12)) * i,spr_bullet_seed_2,2,0,0,false,snd_enemy_fire);
}
if ammo mod 2 == 0 {
	for(var i = 0; i < global.difficulty + 3; i += 1) {
		scr_shoot_bullet_enemy(1.25,((360 / (global.difficulty + 3)) * i) + dir,spr_bullet_laser,0,0,0,false,snd_enemy_fire_laser);
	}
	with(obj_bullet_enemy) {
		if sprite_index == spr_bullet_laser and effects_applied == false {
			effects_applied = true;
			can_stretch = true;
			stretch_x = 8;
			stretch_speed = 0.05;
		}
	}
}
ammo -= 1;