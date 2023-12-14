function scr_change_bgm(_no){
	with(obj_bgm) {
		i = _no
		switch (i) {
			case 0: song = snd_bgm_title; loop_point = 7.680; end_of_song = 84.480; break;
			case 1: song = snd_bgm_stage_1; loop_point = 6.000; end_of_song = 127.500; break;
			case 2: song = snd_bgm_boss_1; loop_point = 6.192; end_of_song = 80.496; break;
			case 3: song = snd_bgm_stage_2; loop_point = 7.056; end_of_song = 135.828; break;
			case 4: song = snd_bgm_boss_2; loop_point = 6.072; end_of_song = 103.224; break;
			case 5: song = snd_bgm_stage_3; loop_point = 5.412; end_of_song = 113.652; break;
			case 6: song = snd_bgm_boss_3; loop_point = 5.920; end_of_song = 137.640; break;
			case 7: song = snd_bgm_stage_4; loop_point = 6.664; end_of_song = 126.616; break;
			case 8: song = snd_bgm_boss_4; loop_point = 6.000; end_of_song = 126.000; break;
			case 9: song = snd_bgm_stage_5; loop_point = 20.424; end_of_song = 115.736; break;
			case 10: song = snd_bgm_boss_5; loop_point = 5.920; end_of_song = 124.320; break;
			case 11: song = snd_bgm_stage_6; loop_point = 27.200; end_of_song = 92.800; break;
			case 12: song = snd_bgm_boss_6; loop_point = 5.816; end_of_song = 180.296; break;
			case 13: song = snd_bgm_stage_extra; loop_point = 21.168; end_of_song = 176.400; break;
			case 14: song = snd_bgm_boss_extra; loop_point = 30.560; end_of_song = 140.576; break;
			case 15: song = snd_bgm_ending; loop_point = 7.216; end_of_song = 93.808; break;
			case 16: song = snd_bgm_staff_roll; loop_point = 6.856; end_of_song = 89.128; break;
			case 17: song = snd_bgm_name_entry; loop_point = 13.712; end_of_song = 41.136; break;
		}
		if !audio_is_playing(song) {
			audio_stop_sound(global.bgm);
			audio_sound_loop_start(song, loop_point);
			audio_sound_loop_end(song, end_of_song);
			global.bgm = audio_play_sound(song,10,true);
		}
	}
}