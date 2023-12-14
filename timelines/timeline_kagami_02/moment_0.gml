randomize();
for(var i = 0; i < global.difficulty + 3; i += 1) {
	scr_shoot_bullet_enemy(1.25,irandom_range(0,360),spr_bullet_arrowhead,14,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(0.75,irandom_range(0,360),spr_bullet_arrowhead,14,0,0,false,snd_enemy_fire);
}
y_pos = 96;