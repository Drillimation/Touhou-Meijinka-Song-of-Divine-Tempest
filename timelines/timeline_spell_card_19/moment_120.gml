randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < (global.difficulty * 10) + 10; i += 1) {
			scr_shoot_bullet_enemy(random_range(1,1.25),irandom_range(0,360),choose(spr_bullet_arrow,spr_bullet_small_2,spr_bullet_seed_2),irandom_range(11,13),0,0,false,snd_enemy_fire_kira);
		}
		instance_destroy();
	}
}

_k = irandom_range(0,360)
for (var i = -1; i < 2; i += 1) {
	for(var j = 0; j < (global.difficulty * 2) + 2; j += 1) {
		scr_shoot_bullet_enemy(1.5 - (j * 0.1),(i * 15) + _k,spr_bullet_arrowhead,1,0,0,false,snd_enemy_fire);
	}
}
scr_shoot_bullet_enemy(0.75,330,spr_bullet_large,14,0,0,false,snd_enemy_fire);