randomize();
sprite_index = spr_ayaka;
speed = 0;
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_note and image_index != 15 {
		scr_shoot_bullet_enemy(0.75,irandom_range(0,360),spr_bullet_note,15,0,0,false,snd_enemy_fire_kira);
		instance_destroy();
	}
}