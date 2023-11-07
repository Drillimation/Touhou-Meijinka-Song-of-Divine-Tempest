for(var i = 0; i < 3; i += 1) {
	var _xx = lengthdir_x(48, 90 + (120 * i));
	var _yy = lengthdir_y(48, 90 + (120 * i));
	scr_shoot_bullet_enemy(0,(360 / 3) * i,spr_bullet_large,8 + (i * 3),_xx,_yy,false,snd_enemy_fire);
}
_j = 0;