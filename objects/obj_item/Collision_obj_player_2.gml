switch(image_index) {
	case 0:
		scr_one_channel_sound(snd_get_item);
		if global.pow[other.play_id] == 100 {
			global.playerscore[other.play_id] += (100 * global.difficulty) + 100;
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = (100 * global.difficulty) + 100;
		}
		else {
			global.playerscore[other.play_id] += 10;
			global.pow[other.play_id] += 1
			global.pow[other.play_id] = clamp(global.pow[other.play_id],0,100);
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = 10;
		}
		global.totalpow[other.play_id] += 1;
		break;
	case 1:
		scr_one_channel_sound(snd_get_item);
		global.pnt_item += 1;
		if other.y_pos <= 80 {
			global.playerscore[other.play_id] += ((500 * global.difficulty) + 500) + (global.dream);
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = ((500 * global.difficulty) + 500) + (global.dream)
		}
		else
		{
			global.playerscore[other.play_id] += (abs(round((y_pos / 10) - 30)) * 10) + (global.dream);
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = (abs(round((y_pos / 10) - 30)) * 10) + (global.dream);
		}
		global.totalpnt_items[other.play_id] += 1;
		break;
	case 2:
		scr_one_channel_sound(snd_get_item);
		if global.pow[other.play_id] == 100 {
			global.playerscore[other.play_id] += (100 * global.difficulty) + 100;
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = (100 * global.difficulty) + 100;
		}
		else {
			global.playerscore[other.play_id] += 50;
			global.pow[other.play_id] += 5
			global.pow[other.play_id] = clamp(global.pow[other.play_id],0,100);
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = 50;
		}
		global.totalpow[other.play_id] += 1;
		break;
	case 3:
		scr_one_channel_sound(snd_get_bomb);
		global.playerscore[other.play_id] += 1000;
		global.bombs[other.play_id] += 1
		global.bombs[other.play_id] = clamp(global.bombs[other.play_id],0,10);
		var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
		inst1.display_score = 1000;
		break;
	case 4:
		scr_one_channel_sound(snd_get_item);
		global.playerscore[other.play_id] += 1000;
		global.pow[other.play_id] = 100;
		var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
		inst1.display_score = 1000;
		break;
	case 5:
		if global.chuhoujoutaimode == false {
			scr_one_channel_sound(snd_get_life);
			global.playerlives[other.play_id] += 1;
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = 1000;
		}
		else {
			scr_one_channel_sound(snd_heal);
			global.playerhealth[other.play_id] = 30;
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = 1000;
		}
		break;
	case 6:
		scr_one_channel_sound(snd_get_item);
		global.totaldreams[other.play_id] += 1;
		if global.dream >= 1000 {
			global.playerscore[other.play_id] += global.dream;
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = global.dream;
		}
		else
		{
			global.playerscore[other.play_id] += global.dream + 100;
			var inst1 = instance_create_depth(x,y,0,obj_sub_score_display);
			inst1.display_score = global.dream + 100;
			global.dream += 100;
			global.dream = clamp(global.dream,0,1000);
		}
		break;
}
instance_destroy();