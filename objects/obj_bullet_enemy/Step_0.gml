view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

x = view_xview + x_pos;
y = view_yview + y_pos;

x_pos += hspeed;
y_pos += vspeed;

depth = -y;
if grazable == true {
	if collision_circle(x,y,12,obj_player_1,false,false){
			global.playerscore[0] += 50;
			global.graze[0] += 1;
			scr_one_channel_sound(snd_graze);
			grazable = false;
	}
	if collision_circle(x,y,12,obj_player_2,false,false){
			global.playerscore[1] += 50;
			global.graze[1] += 1;
			scr_one_channel_sound(snd_graze);
			grazable = false;
	}
}
switch (sprite_index) {
	case spr_bullet_small_1: image_angle = 0; break;
	case spr_bullet_small_2: image_angle = 0; break;
	case spr_bullet_small_3: image_angle = 0; break;
	case spr_bullet_kunai: image_angle = direction; break;
	case spr_bullet_arrow: image_angle = direction; break;
	case spr_bullet_seed_1: image_angle = direction; break;
	case spr_bullet_seed_2: image_angle = direction; break;
	case spr_bullet_laser: image_angle = direction; break;
	case spr_bullet_heart: image_angle = direction; break;
	case spr_bullet_med_1: image_angle = 0; break;
	case spr_bullet_med_2: image_angle = 0; break;
	case spr_bullet_dagger: image_angle = direction; break;
	case spr_bullet_large: image_angle = 0; break;
	case spr_bullet_arrowhead: image_angle = direction; break;
	case spr_bullet_amulet: image_angle = direction; break;
}

//Property Effects
if can_jitter == true {
	j += 1
	j = j mod jitter_speed
	if (j == 0) {
		randomize();
		direction += choose(0-(jitter_direction),jitter_direction);
	}
}

if can_stretch == true {
	image_xscale += stretch_speed;
	image_xscale = clamp(image_xscale,0,stretch_x);
	image_yscale += stretch_speed;
	image_yscale = clamp(image_yscale,0,stretch_y);
}

if can_spawnmore == true {
	j += 1
	j = j mod spawn_speed
	if (j == 0) {
		randomize();
		if can_spawnmulti == false {
			script_execute(scr_shoot_bullet_enemy,bullet_arg[0],bullet_arg[1],bullet_arg[2],bullet_arg[3],bullet_arg[4],bullet_arg[5],bullet_arg[6],bullet_arg[7])
		}
		else {
			for(var _i = 0; _i < spawn_i; i += 1) {
				for(var _i = 0; _i < spawn_i; i += 1) {
					script_execute(scr_shoot_bullet_enemy,bullet_arg[0],bullet_arg[1],bullet_arg[2],bullet_arg[3],bullet_arg[4],bullet_arg[5],bullet_arg[6],bullet_arg[7])
				}
			}
		}
	}
}

if can_spawnlocation == true {
	if x_pos < spawn_location_x1 or 
	x_pos > spawn_location_x2 or
	y_pos < spawn_location_y1 or 
	y_pos > spawn_location_y2 {
		randomize();
		if can_spawnmulti == false {
			script_execute(scr_shoot_bullet_enemy,bullet_arg[0],bullet_arg[1],bullet_arg[2],bullet_arg[3],bullet_arg[4],bullet_arg[5],bullet_arg[6],bullet_arg[7])
		}
		else {
			for(var _i = 0; _i < spawn_i; i += 1) {
				for(var _j = 0; _j < spawn_j; i += 1) {
					script_execute(scr_shoot_bullet_enemy,bullet_arg[0],bullet_arg[1],bullet_arg[2],bullet_arg[3],bullet_arg[4],bullet_arg[5],bullet_arg[6],bullet_arg[7])
				}
			}
		}
		instance_destroy();
	}
}

if can_curve == true {
	j += 1
	j = j mod curve_speed
	if (j == 0) {
		direction += curve_direction;
	}
}