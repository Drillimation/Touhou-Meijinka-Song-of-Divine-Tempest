for(var j = 0; j < global.difficulty + 1; j += 1) {
	scr_shoot_bullet_enemy(1.5 - (0.125 * j),-15,spr_bullet_kunai,5,0,0,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5 - (0.125 * j),15,spr_bullet_kunai,5,0,0,true,snd_enemy_fire);
}
if instance_exists(obj_player_1) {
	var ex = instance_nearest(x,y,obj_player_1).x;
	var ey = instance_nearest(x,y,obj_player_1).y;
	direction = point_direction(x,y,ex,ey);
	speed += 0.25;
}