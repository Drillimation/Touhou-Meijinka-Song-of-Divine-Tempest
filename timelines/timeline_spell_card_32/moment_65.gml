for(var i = 0; i < (global.difficulty * 4) + 8; i += 1) {
	scr_shoot_bullet_enemy(1.25,(360 / ((global.difficulty * 4) + 8)) * i,spr_bullet_note,8,0,0,false,snd_enemy_fire);
}
ammo -= 1;