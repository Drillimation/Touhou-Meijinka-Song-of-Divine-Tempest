randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		if speed >= 0.1 {
			speed -= 0.1;
		}
	}
}
scr_shoot_bullet_enemy(1,irandom_range(180,360),spr_bullet_large,1,0,0,false,snd_enemy_fire);
ammo -= 1;