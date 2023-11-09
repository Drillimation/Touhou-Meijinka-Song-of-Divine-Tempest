view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);
/*switch(dialogue_table[# 4,dialogue_length-1]) {
	case "scr_start_boss": instance_create_layer(view_xview + 128,view_yview + 96,"Enemies",boss); break;
	case "scr_stage_clear": instance_create_depth(0,0,0,obj_stage_clear); break;
	case "scr_game_clear": instance_create_depth(0,0,0,obj_game_clear); break;
}*/
ds_grid_destroy(dialogue_table);