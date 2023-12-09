spd = 1.5;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
can_move = true;
invincible = false;
play_id = 0;

view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
x_pos = x - view_xview;
y_pos = y - view_yview;

state = scr_move_state;

//Sprite Variables
face = 0;

switch(global.character[play_id]) {
	case "REIMU":
		left = spr_reimu_l
		northwest = spr_reimu_l
		southwest = spr_reimu_l
		right = spr_reimu_r
		northeast = spr_reimu_r
		southeast = spr_reimu_r
		up = spr_reimu_n
		down = spr_reimu_n
		idle = spr_reimu_n
		turret = spr_reimu_orb
		break;
	case "MARISA":
		left = spr_marisa_l
		northwest = spr_marisa_l
		southwest = spr_marisa_l
		right = spr_marisa_r
		northeast = spr_marisa_r
		southeast = spr_marisa_r
		up = spr_marisa_n
		down = spr_marisa_n
		idle = spr_marisa_n
		turret = spr_marisa_orb
		break;
	case "SAKUYA":
		left = spr_sakuya_l
		northwest = spr_sakuya_l
		southwest = spr_sakuya_l
		right = spr_sakuya_r
		northeast = spr_sakuya_r
		southeast = spr_sakuya_r
		up = spr_sakuya_n
		down = spr_sakuya_n
		idle = spr_sakuya_n
		turret = spr_sakuya_orb
		break;
	case "YOUMU":
		left = spr_youmu_l
		northwest = spr_youmu_l
		southwest = spr_youmu_l
		right = spr_youmu_r
		northeast = spr_youmu_r
		southeast = spr_youmu_r
		up = spr_youmu_n
		down = spr_youmu_n
		idle = spr_youmu_n
		turret = spr_youmu_orb
		break;
}
sprite_index = idle;

focusmode = false;
if global.chuhoujoutaimode == true {
	alarm[0] = 300;
}

j = 0;
k = 0;