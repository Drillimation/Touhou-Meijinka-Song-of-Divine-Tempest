for(var i = 0; i < (global.difficulty * 6) + 6; i += 1) {
	scr_shoot_bullet_enemy(1.25,(360 / ((global.difficulty * 6) + 6)) * i,spr_bullet_arrowhead,13,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.25,(360 / ((global.difficulty * 6) + 6)) * i,spr_bullet_small_3,2,0,0,true,snd_enemy_fire);
}
with(obj_bullet_enemy) {
	if effects_applied == false and sprite_index == spr_bullet_arrowhead {
		effects_applied = true;
		direction -= 90;
	}
}