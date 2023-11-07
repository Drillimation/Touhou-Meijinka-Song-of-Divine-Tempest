for(var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
	scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(-20,20),spr_bullet_med_1,10,0,0,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(-20,20),spr_bullet_med_2,10,0,0,true,snd_enemy_fire);
}
scr_shoot_bullet_enemy(2,0,spr_bullet_laser,10,0,0,true,snd_spell_card_player);
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser and effects_applied == false {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 12;
	}
}