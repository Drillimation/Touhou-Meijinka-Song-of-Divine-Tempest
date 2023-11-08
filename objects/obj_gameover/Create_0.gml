audio_stop_sound(global.bgm);
audio_play_sound(snd_bgm_gameover,10,false);
alarm[0] = 600;

font = font_add_sprite(spr_font_mp,32,false,0);