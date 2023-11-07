randomize();
_j = irandom_range(0,360)
for(var i = 0 - global.difficulty; i < global.difficulty + 1; i += 1) {
	scr_shoot_bullet_enemy(2,(20 * i) + _j,spr_bullet_kunai,8,0,0,true,snd_enemy_fire);
}
ammo -= 1;