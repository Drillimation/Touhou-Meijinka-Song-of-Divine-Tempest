audio_stop_sound(global.bgm);
audio_play_sound(snd_bgm_game_clear,10,false);
alarm[0] = 900;

if global.chuhoujoutaimode == false {
	left_text = @"RANK

	DREAM

	POINT

	BOMBS

	LIVES

	POWER
	
	GRAZE

	TOTAL"
	for (var i = 0; i < 2; i += 1) {
		difficulty_bonus[i] = round(global.difficulty * 10000);
		dream_bonus[i] = round(global.dream * 100);
		point_bonus[i] = round(global.pnt_item * 1000);
		
		bomb_bonus[i] = round(global.bombs[i] * 5000);
		lives_bonus[i] = round(global.playerlives[i] * 10000);
		power_bonus[i] = round(global.pow[i] * 100);
		graze_bonus[i] = round(global.graze[i] * 100);
		total[i] = difficulty_bonus[i] + dream_bonus[i] + point_bonus[i] + bomb_bonus[i] + lives_bonus[i] + power_bonus[i] + graze_bonus[i];
		if global.playeractive[i] == true {
			global.playerscore[i] += total[i]
		}
		statistics[i] = string(difficulty_bonus[i]) + "\n\n" + string(dream_bonus[i]) + "\n\n" + string(point_bonus[i]) + "\n\n" + string(bomb_bonus[i]) + "\n\n" + string(lives_bonus[i]) + "\n\n" + string(power_bonus[i]) + "\n\n" + string(graze_bonus[i]) + "\n\n" + string(total[i]);
	}
}
else {
	left_text = @"RANK

	DREAM

	POINT

	BOMBS

	HEALTH

	POWER
	
	GRAZE

	TOTAL"
	for (var i = 0; i < 2; i += 1) {
		difficulty_bonus[i] = round(global.difficulty * 10000);
		dream_bonus[i] = round(global.dream * 100);
		point_bonus[i] = round(global.pnt_item * 1000);
		
		bomb_bonus[i] = round(global.bombs[i] * 5000);
		health_bonus[i] = round(global.playerhealth[i] * 1000);
		power_bonus[i] = round(global.pow[i] * 100);
		graze_bonus[i] = round(global.graze[i] * 100);
		total[i] = difficulty_bonus[i] + dream_bonus[i] + point_bonus[i] + bomb_bonus[i] + health_bonus[i] + power_bonus[i] + graze_bonus[i];
		if global.playeractive[i] == true {
			global.playerscore[i] += total[i]
		}
		statistics[i] = string(difficulty_bonus[i]) + "\n\n" + string(dream_bonus[i]) + "\n\n" + string(point_bonus[i]) + "\n\n" + string(bomb_bonus[i]) + "\n\n" + string(health_bonus[i]) + "\n\n" + string(power_bonus[i]) + "\n\n" + string(graze_bonus[i]) + "\n\n" + string(total[i]);
	}
}