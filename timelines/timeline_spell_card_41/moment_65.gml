var _dir = irandom_range(0,360)
var _xx = lengthdir_x(irandom_range(8,64), _dir);
var _yy = lengthdir_y(irandom_range(8,64), _dir);
scr_shoot_bullet_enemy(0,_dir,spr_bullet_small_2,1,_xx,_yy,false,snd_enemy_fire);
ammo -= 1;