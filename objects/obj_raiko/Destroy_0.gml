scr_one_channel_sound(snd_boss_defeat);
var inst5 = instance_create_depth(x,y,0,obj_defeated_boss)
inst5.sprite_index = defeat_img;
if hp <= 0 {
	if timer >= 0.1 {
		if global.playeractive[0] == true { global.playerscore[0] += round(defeat_bonus + (timer*100)); }
		if global.playeractive[1] == true { global.playerscore[1] += round(defeat_bonus + (timer*100)); }
	}
	with(obj_bullet_enemy) {
		if global.playeractive[0] == true { global.playerscore[0] += (abs(round((y_pos / 10) - 30)) * 10); }
		if global.playeractive[1] == true { global.playerscore[1] += (abs(round((y_pos / 10) - 30)) * 10); }
		instance_destroy();
	}
}
audio_stop_sound(global.bgm);
instance_create_depth(0,0,0,obj_final_defeat);