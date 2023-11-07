randomize();
for(var i = 0; i < global.difficulty + 2; i += 1) {
	scr_shoot_bullet_enemy(1.5 - (ammo * 0.125),irandom_range(-5,5),spr_bullet_small_2,15,0,0,true,snd_enemy_fire);
}
ammo -= 1;