with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_dagger and y > 192 {
		scr_shoot_bullet_enemy(0.5,0,spr_bullet_amulet,0,0,0,true,snd_enemy_fire_kira)
		instance_destroy();
	}
}
timeline_position = 60;