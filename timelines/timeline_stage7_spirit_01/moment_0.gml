if instance_exists(obj_player_1) {
	var ex = instance_nearest(x,y,obj_player_1).x;
	var ey = instance_nearest(x,y,obj_player_1).y;
	direction = point_direction(x,y,ex,ey);
	speed = 2;
}