if ammo >= 1 {
	timeline_position = 35;
}
else {
	randomize();
	for(var i = 0; i < (global.difficulty * 2) + 2; i += 1) {
		scr_shoot_bullet_enemy(random_range(0.5,1),irandom_range(0,360),spr_bullet_small_2,10,0,0,false,snd_enemy_fire)
	}
	speed = 1;
	direction = irandom_range(235,315)
}