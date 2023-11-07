for(var i = 0; i < 8 + global.difficulty; i += 1) {
	var _xx = lengthdir_x(48, (360 / (8 + global.difficulty)) * i);
	var _yy = lengthdir_y(48, (360 / (8 + global.difficulty)) * i);
	scr_shoot_bullet_enemy(0,(360 / (8 + global.difficulty)) * i,spr_bullet_large,10,_xx,_yy,false,snd_enemy_fire);
}
for(var i = 0; i < 2; i += 1) {
	var _xx = lengthdir_x(24, (360 / 2) * i);
	var _yy = lengthdir_y(24, (360 / 2) * i);
	scr_shoot_bullet_enemy(0,(360 / 2) * i,spr_bullet_med_2,10,_xx,_yy,false,snd_enemy_fire);
}
_j = 0;