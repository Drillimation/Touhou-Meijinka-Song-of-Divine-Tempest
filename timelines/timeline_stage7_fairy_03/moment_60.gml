randomize();
for(var i = 0; i < 3 + global.difficulty; i += 1) {
	scr_shoot_bullet_enemy(1.25,irandom_range(0,360),spr_bullet_small_2,1,0,0,false,snd_enemy_fire);
}
_j += 5;

if _j mod 60 == 0 {
	scr_shoot_bullet_enemy(1.5,(360 / ((global.difficulty * 2) + 2)) * i,spr_bullet_med_1,15,0,0,true,snd_enemy_fire);
}