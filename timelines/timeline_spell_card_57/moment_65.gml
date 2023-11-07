scr_shoot_bullet_enemy(2,270,spr_bullet_small_2,5,-48,-40,false,snd_enemy_fire);
scr_shoot_bullet_enemy(2,90,spr_bullet_small_2,5,48,232,false,snd_enemy_fire);
scr_shoot_bullet_enemy(2,0,spr_bullet_small_2,5,-120,32,false,snd_enemy_fire);
scr_shoot_bullet_enemy(2,180,spr_bullet_small_2,5,120,160,false,snd_enemy_fire);
_j += 1;

if _j mod 40 == 0 {
	randomize();
	_xx = choose(irandom_range(-120,-48),irandom_range(48,120));
	_yy = choose(irandom_range(-32,32),irandom_range(160,224));
	for(var i = 0; i < (global.difficulty * 2) + 6; i += 1) {
		scr_shoot_bullet_enemy(1,(360 / ((global.difficulty * 2) + 6)) * i,spr_bullet_med_1,1,_xx,_yy,false,snd_enemy_fire_kira);
	}
	_j = 0;
}