view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

left_text = @"DIFFICULTY

CONTINUES USED

FINAL SCORE

DEATHS

BOMBS USED

POWER ITEMS COLLECTED

POINT ITEMS COLLECTED

DREAM ITEMS COLLECTED"

p1_statistics = string(global.playerscore[0]) + "\n\n" + string(global.timesrevived[0]) + "\n\n" + string(global.totalbombsused[0]) + "\n\n" + string(global.totalpow[0]) + "\n\n" + string(global.totalpnt_items[0]) + "\n\n" + string(global.totaldreams[0]);
p2_statistics = string(global.playerscore[1]) + "\n\n" + string(global.timesrevived[1]) + "\n\n" + string(global.totalbombsused[1]) + "\n\n" + string(global.totalpow[1]) + "\n\n" + string(global.totalpnt_items[1]) + "\n\n" + string(global.totaldreams[1]);

switch(global.difficulty) {
	case 0: diff_text = "EASY"; break;
	case 1: diff_text = "NORMAL"; break;
	case 2: diff_text = "DIFFICULT"; break;
	case 3: diff_text = "LUNATIC"; break;
}

alarm[0] = 600;