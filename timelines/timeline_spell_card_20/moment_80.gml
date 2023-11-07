randomize();
_k = irandom_range(0,360)
for (var i = -1; i < 2; i += 1) {
	for(var j = 0; j < (global.difficulty * 2) + 2; j += 1) {
		scr_shoot_bullet_enemy(1.5 - (j * 0.1),(i * 15) + _k,spr_bullet_arrowhead,1,0,0,false,snd_enemy_fire);
	}
}
ammo -= 1;