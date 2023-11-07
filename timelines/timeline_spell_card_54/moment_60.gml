for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
	if irandom(2) == 0 {
		scr_shoot_bullet_enemy(random_range(0.5,1),0,spr_bullet_small_3,1,-112,irandom_range(0,212),false,snd_enemy_fire)
	}
	else {
		scr_shoot_bullet_enemy(random_range(0.5,1),180,spr_bullet_small_3,1,112,irandom_range(0,212),false,snd_enemy_fire)
	}
}
_ex = irandom_range(0,360)
for(var i = 0; i < (global.difficulty * 2) + 4; i += 1) {
	scr_shoot_bullet_enemy(0.75,_ex + (15 * i),spr_bullet_large,0,0,0,false,snd_enemy_fire);
}