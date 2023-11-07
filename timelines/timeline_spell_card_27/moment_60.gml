for(var i = 0; i < 5 + global.difficulty; i += 1) {
	var _xx = lengthdir_x(48, (360 / (5 + global.difficulty)) * i);
	var _yy = lengthdir_y(48, (360 / (5 + global.difficulty)) * i);
	scr_shoot_bullet_enemy(0,(360 / (5 + global.difficulty)) * i,spr_bullet_large,0,_xx,_yy,false,snd_enemy_fire);
}