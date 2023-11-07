randomize();
_j = irandom_range(-96,96)
for(var i = 0; i < global.difficulty + 1; i += 1) {
	scr_shoot_bullet_enemy(random_range(0.75,1),irandom_range(240,300),spr_bullet_seed_1,8,_j,-32,false,snd_enemy_fire);
}
_k += 1
_k = _k mod 10;
if (_k == 0) {
	for(var i = 0; i < 6; i += 1) {
		for(var _l = 0; _l < (global.difficulty * 5) + 5; _l += 1) {
			scr_shoot_bullet_enemy(1.25 - (_l * 0.025),((360 / (6)) * i) + (_l * 10),spr_bullet_seed_1,15,0,0,false,snd_enemy_fire);
			scr_shoot_bullet_enemy(1.25 - (_l * 0.025),((360 / (6)) * i) - (_l * 10),spr_bullet_seed_1,15,0,0,false,snd_enemy_fire);
		}
	}
}