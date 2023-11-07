randomize();
var _k = irandom_range(0,360)
for(var i = 0; i < global.difficulty + 2; i += 1) {
	for(var j = -1; j < 2; j += 1) {
		scr_shoot_bullet_enemy(1.25 - (0.125 * i),(15 * j) + _k,spr_bullet_small_2,1,0,0,false,snd_enemy_fire)
	}
}
ammo -= 1;