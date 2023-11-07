randomize();
with(obj_bullet_enemy) {
	if sprite_index == spr_bullet_large {
		for(var i = 0; i < global.difficulty + 1; i += 1) {
			scr_shoot_bullet_enemy(0.25,irandom_range(0,360),spr_bullet_note,0,0,0,true,snd_enemy_fire);
		}
	}
}
direction = irandom_range(0,359);
speed = 0.75;
if direction > 90 or direction < 270 {
	sprite_index = spr_ayaka_l
}
else {
	sprite_index = spr_ayaka_r
}