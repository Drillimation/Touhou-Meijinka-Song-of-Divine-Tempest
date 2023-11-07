for(var i = 0; i < (global.difficulty * 5) + 5; i += 1) {
	scr_shoot_bullet_enemy(1.25,((360 / ((global.difficulty * 5) + 5)) * i) + dir,spr_bullet_amulet,15,0,0,false,snd_enemy_fire);
}
dir += 10;
scr_shoot_bullet_enemy(1.25,0,spr_bullet_laser,15,0,0,true,snd_enemy_fire_laser);
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and effects_applied == false {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 6;
	}
}