speed = 0;
sprite_index = spr_emiri
ammo = 18;
if global.difficulty >= 2 {
	var l = 2;
}
else {
	var l = 15;
}
for(var i = 0; i < 6 + (global.difficulty * 2); i += 1) {
	scr_shoot_bullet_enemy(1,(360 / (6 + (global.difficulty * 2))) * i,spr_bullet_laser,l,0,0,false,snd_enemy_fire_laser);
}
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_laser {
		effects_applied = true;
		can_stretch = true;
		stretch_x = 8;
	}
}