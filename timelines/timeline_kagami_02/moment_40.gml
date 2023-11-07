with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_arrowhead and y < 48 {
		scr_shoot_bullet_enemy(speed - 0.25,direction + 180,spr_bullet_seed_1,11,0,0,false,snd_enemy_fire_kira)
		instance_destroy();
	}
}
timeline_position = 0;