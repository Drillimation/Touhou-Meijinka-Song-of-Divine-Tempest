for(var i = 0; i < (global.difficulty * 4) + 6; i += 1) {
	scr_shoot_bullet_enemy(1,((360 / ((global.difficulty * 4) + 6)) * i) + dir,spr_bullet_small_1,15,0,0,false,snd_enemy_fire);
}
with(obj_bullet_enemy) {
	randomize();
	if sprite_index == spr_bullet_small_1 and !collision_circle(x,y,48,obj_jane_sm,false,true) {
		scr_shoot_bullet_enemy(1,direction + (choose(-15,15)),spr_bullet_small_2,choose(1,2),0,0,false,snd_enemy_fire_kira);
		instance_destroy();
	}
}
dir += 10;