randomize();
_ex = irandom_range(-32,32);
_ey = irandom_range(-32,32);
for(var i = 0; i < (global.difficulty * 3) + 5; i += 1) {
	scr_shoot_bullet_enemy(1,(360 / ((global.difficulty * 3) + 5)) * i,spr_bullet_small_2,7,_ex,_ey,false,snd_enemy_fire);
}