global.continuesused += 1;
instance_activate_all();
with(obj_camera) {
	switch(global.stage) {
		case 1: path_speed = 0.5; break;
		case 2: path_speed = 0.5; break;
		case 3: path_speed = 0.5; break;
		case 4: path_speed = 0.5; break;
		case 5: path_speed = 0.5; break;
		case 6: path_speed = 1; break;
		case 7: path_speed = 0.375; break;
	}
}
