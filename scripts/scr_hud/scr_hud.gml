// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hud(){
	//Initiate
	view_xview = camera_get_view_x(view_camera[0]);
	view_yview = camera_get_view_y(view_camera[0]);
	font = font_add_sprite(spr_font,32,false,0);
	draw_set_font(font);
	
	//Top Part
	//High score text
	draw_set_halign(fa_center);
	draw_set_color(make_color_rgb(255,0,0));
	draw_text(view_xview + 128,view_yview + 0,"HIGH SCORE");
	draw_set_color(make_color_rgb(255,255,255));
	draw_set_halign(fa_right);
	draw_text(view_xview + 152,view_yview + 8,global.highscore);
	
	//Player 1
	if global.playeractive[0] == false {
		if global.credits >= 1 {
			draw_set_halign(fa_center);
			draw_set_color(make_color_rgb(255,255,255));
			draw_text(view_xview + 32,view_yview + 0,w_credits_1[_i]);
		}
		else {
			draw_set_halign(fa_center);
			draw_set_color(make_color_rgb(255,255,255));
			draw_text(view_xview + 32,view_yview + 0,wo_credits[_i]);
		}
	}
	else {
		draw_set_halign(fa_left);
		switch(global.character[0]) {
			case "REIMU": draw_set_color(make_color_rgb(255,0,0)); break;
			case "MARISA": draw_set_color(make_color_rgb(255,255,0)); break;
			case "SAKUYA": draw_set_color(make_color_rgb(0,0,255)); break;
			case "YOUMU": draw_set_color(make_color_rgb(0,128,0)); break;
		}
		draw_text(view_xview + 16,view_yview + 0,"1UP");
		draw_set_halign(fa_right);
		draw_set_color(make_color_rgb(255,255,255));
		draw_text(view_xview + 56,view_yview + 8,global.playerscore[0]);
	}
	
	//Player 2
	if global.playeractive[1] == false {
		if global.canjoin == true {
			if global.credits >= 2 {
				draw_set_halign(fa_center);
				draw_set_color(make_color_rgb(255,255,255));
				draw_text(view_xview + 224,view_yview + 0,w_credits_2[_i]);
			}
			else if global.credits == 1 and room == room_arcade_start {
				draw_set_halign(fa_center);
				draw_set_color(make_color_rgb(255,255,255));
				draw_text(view_xview + 224,view_yview + 0,wo_credits[_i]);
			}
			else {
				draw_set_halign(fa_center);
				draw_set_color(make_color_rgb(255,255,255));
				if global.credits >= 1 {
					draw_text(view_xview + 224,view_yview + 0,w_credits_2[_i]);
				}
				else {
					draw_text(view_xview + 224,view_yview + 0,wo_credits[_i]);
				}
				
			}
		}
		else {
			draw_set_halign(fa_center);
			draw_set_color(make_color_rgb(255,255,255));
			draw_text(view_xview + 224,view_yview + 0,"PLEASE\nWAIT");
		}
	}
	else {
		draw_set_halign(fa_left);
		switch(global.character[1]) {
			case "REIMU": draw_set_color(make_color_rgb(255,0,0)); break;
			case "MARISA": draw_set_color(make_color_rgb(255,255,0)); break;
			case "SAKUYA": draw_set_color(make_color_rgb(0,0,255)); break;
			case "YOUMU": draw_set_color(make_color_rgb(0,128,0)); break;
		}
		draw_text(view_xview + 216,view_yview + 0,"2UP");
		draw_set_halign(fa_right);
		draw_set_color(make_color_rgb(255,255,255));
		draw_text(view_xview + 256,view_yview + 8,global.playerscore[1]);
	}
	
	//Bottom Part
	draw_sprite(spr_hud_bottom,0,view_xview + 0,view_yview + 272);
	draw_set_halign(fa_right);
	draw_set_color(make_color_rgb(255,255,255));
	
	if global.playeractive[0] == true {
		if global.chuhoujoutaimode == false {
			draw_text(view_xview + 24,view_yview + 272,global.playerlives[0] - 1);
		}
		else {
			draw_text(view_xview + 24,view_yview + 272,global.playerhealth[0]);
		}
		draw_text(view_xview + 24,view_yview + 280,global.bombs[0]);
		draw_text(view_xview + 72,view_yview + 272,global.graze[0]);
		draw_text(view_xview + 72,view_yview + 280,global.pow[0]);
	}
	
	if global.playeractive[1] == true {
		if global.chuhoujoutaimode == false {
			draw_text(view_xview + 256,view_yview + 272,global.playerlives[1] - 1);
		}
		else {
			draw_text(view_xview + 256,view_yview + 272,global.playerhealth[1]);
		}
		draw_text(view_xview + 256,view_yview + 280,global.bombs[0]);
		draw_text(view_xview + 224,view_yview + 272,global.graze[0]);
		draw_text(view_xview + 224,view_yview + 280,global.pow[0]);
	}
	draw_text(view_xview + 144,view_yview + 272,global.dream);
	draw_text(view_xview + 144,view_yview + 280,global.pnt_item);
}