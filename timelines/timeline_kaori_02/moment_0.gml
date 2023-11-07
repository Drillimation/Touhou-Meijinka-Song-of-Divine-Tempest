sprite_index = spr_kaori;
for(var i = 0; i < 6; i += 1) {
	scr_shoot_bullet_enemy(1,(360 / 6) * i,spr_bullet_large,0,0,0,true,snd_enemy_fire);
}
speed = 0;