randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser {
		for(var i = 0; i < 6; i += 1) {
			scr_shoot_bullet_enemy(1.25,irandom_range(0,360),spr_bullet_note,0,0,0,false,snd_enemy_fire_kira);
		}
		direction -= 45;
	}
}