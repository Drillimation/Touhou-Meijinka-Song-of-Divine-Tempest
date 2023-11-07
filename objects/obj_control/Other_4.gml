if room == room_stage_1 or 
room == room_stage_2 or 
room == room_stage_3 or 
room == room_stage_4 or
room == room_stage_5 or 
room == room_stage_6 or 
room == room_stage_7 {
	if global.playeractive[0] == true {
		instance_create_depth(view_xview + 64,view_yview + 208,0,obj_player_1);
	}
	if global.playeractive[1] == true {
		instance_create_depth(view_xview + 192,view_yview + 208,0,obj_player_2);
	}
	alarm[1] = 60;
}