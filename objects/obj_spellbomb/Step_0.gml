view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

x = view_xview + x_pos;
y = view_yview + y_pos;

x_pos += hspeed;
y_pos += vspeed;


switch(global.character[item_id]) {
	case "REIMU": sprite_index = spr_reimu_spell; break;
	case "MARISA": sprite_index = spr_marisa_spell; break;
	case "SAKUYA": sprite_index = spr_sakuya_spell; break;
	case "YOUMU": sprite_index = spr_youmu_spell; break;
}
if instance_exists(obj_player_1) or instance_exists(obj_player_2) {
	switch(sprite_index) {
		case spr_reimu_spell:
			if instance_exists(obj_enemy) {
				if collision_circle(x,y,256,obj_enemy,false,true) {
					var ex = instance_nearest(x, y, obj_enemy).x;
					var ey = instance_nearest(x, y, obj_enemy).y;
					direction = point_direction(x,y,ex,ey);
				}
			}
			if instance_exists(obj_bullet_enemy) {
				if collision_circle(x,y,256,obj_bullet_enemy,false,true) {
					var ex = instance_nearest(x, y, obj_bullet_enemy).x;
					var ey = instance_nearest(x, y, obj_bullet_enemy).y;
					direction = point_direction(x,y,ex,ey);
				}
			}
			speed = 8;
			image_xscale -= 0.003;
			image_yscale -= 0.003;
			break;
		case spr_marisa_spell:
			direction = 90;
			image_angle = direction
			switch(item_id) {
				case 0:
					px = obj_player_1.x
					py = obj_player_1.y
					break;
				case 1:
					px = obj_player_2.x
					py = obj_player_2.y
					break;
			}
			x = px;
			y = py;
			break;
		case spr_sakuya_spell:
			direction += 3;
			image_angle = direction
			image_xscale += 0.001;
			image_yscale += 0.001;
			switch(item_id) {
				case 0:
					px = obj_player_1.x
					py = obj_player_1.y
					break;
				case 1:
					px = obj_player_2.x
					py = obj_player_2.y
					break;
			}
			x = px;
			y = py;
			break;
		case spr_youmu_spell:
			speed = 1;
			direction = 90;
			image_angle = direction
			image_yscale += 0.005;
			break;
	}
}