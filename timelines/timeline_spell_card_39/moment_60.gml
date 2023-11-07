randomize();
for(var i = 0; i < 6; i += 1) {
	var _xx = lengthdir_x(48, (360 / 6) * i);
	var _yy = lengthdir_y(48, (360 / 6) * i);
	scr_shoot_bullet_enemy(0,(360 / 6) * i,spr_bullet_large,choose(0,5,10),_xx,_yy,false,snd_enemy_fire);
}