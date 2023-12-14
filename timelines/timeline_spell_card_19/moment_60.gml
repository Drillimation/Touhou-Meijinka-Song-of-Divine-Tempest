scr_shoot_bullet_enemy(0.75,210,spr_bullet_large,14,0,0,false,snd_enemy_fire);
_k = irandom_range(0,360)
for (var i = -1; i < 2; i += 1) {
	for(var j = 0; j < (global.difficulty * 2) + 2; j += 1) {
		scr_shoot_bullet_enemy(1.5 - (j * 0.1),(i * 15) + _k,spr_bullet_arrowhead,1,0,0,false,snd_enemy_fire);
	}
}
sprite_index = spr_kagami_atk2;