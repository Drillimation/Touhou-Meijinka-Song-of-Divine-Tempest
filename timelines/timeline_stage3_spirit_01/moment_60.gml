if instance_exists(obj_player_1) {
	var ex = instance_nearest(x,y,obj_player_1).x;
	var ey = instance_nearest(x,y,obj_player_1).y;
	direction = point_direction(x,y,ex,ey);
	speed -= 0.1;
}
for(var i = -2 - global.difficulty; i < global.difficulty + 3; i += 1) {
	scr_shoot_bullet_enemy(0.75,(10 * i),spr_bullet_arrowhead,0,0,0,true,snd_enemy_fire);
}