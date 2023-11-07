sprite_index = spr_emiri_atk
for(var i = 0; i < (global.difficulty * 4) + 4; i += 1) {
	scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(-30,30),spr_bullet_med_1,0,0,0,true,snd_spell_card_player);
	scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(-30,30),spr_bullet_med_2,0,0,0,true,snd_enemy_fire);
}