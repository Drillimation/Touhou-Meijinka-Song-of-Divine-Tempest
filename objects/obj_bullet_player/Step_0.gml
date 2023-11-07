view_xview = camera_get_view_x(view_camera[0]);
view_yview = camera_get_view_y(view_camera[0]);

x = view_xview + x_pos;
y = view_yview + y_pos;

x_pos += hspeed;
y_pos += vspeed;

switch(sprite_index) {
	case spr_reimu_shot: /*Do nothing.*/ break;
	case spr_reimu_shot_s: /*Do nothing.*/ break;
	case spr_marisa_shot: image_angle = direction; break;
	case spr_marisa_shot_s: image_angle = direction; break;
	case spr_sakuya_shot: image_angle = direction; break;
	case spr_sakuya_shot_s: image_angle = direction; break;
	case spr_youmu_shot: image_angle = direction; break;
	case spr_youmu_shot_s: image_angle = direction; break;
}

if sprite_index == spr_reimu_shot_s {
	if instance_exists(obj_enemy) {
		if collision_circle(x,y,256,obj_enemy,false,true) {
			var ex = instance_nearest(x, y, obj_enemy).x;
			var ey = instance_nearest(x, y, obj_enemy).y;
			direction = point_direction(x,y,ex,ey);
		}
	}	
}
if sprite_index == spr_marisa_shot_s {
	speed = 0;
	image_xscale = 18;
}